
#include "HepMCFullMerge.h"

#include "GaudiKernel/IIncidentSvc.h"
#include "GaudiKernel/Incident.h"
#include "GaudiKernel/IEventProcessor.h"

#include "GaudiKernel/DeclareFactoryEntries.h"

DECLARE_TOOL_FACTORY(HepMCFullMerge)

HepMCFullMerge::HepMCFullMerge(
  const std::string& type,
  const std::string& name,
  const IInterface* parent)
  : GaudiTool(type, name, parent) {
  declareInterface< IHepMCMergeTool >( this );
}

HepMCFullMerge::~HepMCFullMerge() {
}

StatusCode HepMCFullMerge::initialize() {
  StatusCode sc = GaudiTool::initialize();
  if (!sc.isSuccess()) return sc;
  return sc;
}

HepMC::GenEvent* HepMCFullMerge::merge(const std::vector<HepMC::GenEvent>& eventVector) {
  // initial event is assumed to be signal event -- copied in full
  HepMC::GenEvent* pileEvent = new HepMC::GenEvent(eventVector[0]);
  for (auto it=eventVector.cbegin()+1, end = eventVector.cend(); it != end; ++it) {
    // keep track of which vertex in full event corresponds to which vertex in merged event
    std::unordered_map<const HepMC::GenVertex*, HepMC::GenVertex*> inputToMergedVertexMap;
    for (auto v = (*it).vertices_begin(); v != (*it).vertices_end(); ++v ) {
        HepMC::GenVertex* outvertex = new HepMC::GenVertex((*v)->position());
        inputToMergedVertexMap[*v] = outvertex;
        pileEvent->add_vertex(outvertex);
      }
    for (auto p = (*it).particles_begin(); p != (*it).particles_end(); ++p ) {
      HepMC::GenParticle* oldparticle = *p;
      // ownership of the particle is given to the vertex
      HepMC::GenParticle* newparticle = new HepMC::GenParticle(*oldparticle);
      // attach particles to correct vertices in merged event
      if (nullptr != oldparticle->end_vertex()) {
        inputToMergedVertexMap[oldparticle->end_vertex()]->add_particle_in(newparticle);
      }
      if (nullptr != oldparticle->production_vertex()) {
        inputToMergedVertexMap[oldparticle->production_vertex()]->add_particle_out(newparticle);
      }
    }
  }
  return pileEvent;
}


StatusCode HepMCFullMerge::finalize() {
  return GaudiTool::finalize();
}
