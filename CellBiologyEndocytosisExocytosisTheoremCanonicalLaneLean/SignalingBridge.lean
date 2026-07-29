import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean

structure SignalReceptorPair where
  ligandBound : Prop
  receptorActivated : Prop
  internalizationTriggered : Prop
  ligandBoundTerm : ligandBound
  receptorActivatedTerm : receptorActivated
  internalizationTriggeredTerm : internalizationTriggered

structure SignalingCascade where
  kinaseActivated : Prop
  transcriptionFactorTranslocated : Prop
  geneExpressionChanged : Prop
  kinaseActivatedTerm : kinaseActivated
  transcriptionFactorTranslocatedTerm : transcriptionFactorTranslocated
  geneExpressionChangedTerm : geneExpressionChanged

structure CellularResponse where
  cytoskeletonRearranged : Prop
  membraneTrafficAltered : Prop
  cytoskeletonRearrangedTerm : cytoskeletonRearranged
  membraneTrafficAlteredTerm : membraneTrafficAltered

structure EndocytosisExocytosisSignalingBridge where
  signalReceptor : SignalReceptorPair
  cascade : SignalingCascade
  response : CellularResponse
  signalCoupledToEndocytosis : Prop
  exocytosisRespondsToSignal : Prop
  signalCoupledToEndocytosisTerm : signalCoupledToEndocytosis
  exocytosisRespondsToSignalTerm : exocytosisRespondsToSignal

structure SignalingBridgeEvidence (B : EndocytosisExocytosisSignalingBridge) where
  ligandBoundClosed : B.signalReceptor.ligandBound
  receptorActivatedClosed : B.signalReceptor.receptorActivated
  internalizationTriggeredClosed : B.signalReceptor.internalizationTriggered
  kinaseActivatedClosed : B.cascade.kinaseActivated
  transcriptionFactorTranslocatedClosed : B.cascade.transcriptionFactorTranslocated
  geneExpressionChangedClosed : B.cascade.geneExpressionChanged
  cytoskeletonRearrangedClosed : B.response.cytoskeletonRearranged
  membraneTrafficAlteredClosed : B.response.membraneTrafficAltered
  signalCoupledToEndocytosisClosed : B.signalCoupledToEndocytosis
  exocytosisRespondsToSignalClosed : B.exocytosisRespondsToSignal

def SignalingBridgeClosed (B : EndocytosisExocytosisSignalingBridge) : Prop :=
  B.signalReceptor.ligandBound ∧ B.signalReceptor.receptorActivated ∧
  B.signalReceptor.internalizationTriggered ∧ B.cascade.kinaseActivated ∧
  B.cascade.transcriptionFactorTranslocated ∧ B.cascade.geneExpressionChanged ∧
  B.response.cytoskeletonRearranged ∧ B.response.membraneTrafficAltered ∧
  B.signalCoupledToEndocytosis ∧ B.exocytosisRespondsToSignal

theorem signaling_bridge_closed_from_evidence
    (B : EndocytosisExocytosisSignalingBridge) (E : SignalingBridgeEvidence B) :
    SignalingBridgeClosed B := by
  exact And.intro E.ligandBoundClosed
    (And.intro E.receptorActivatedClosed
      (And.intro E.internalizationTriggeredClosed
        (And.intro E.kinaseActivatedClosed
          (And.intro E.transcriptionFactorTranslocatedClosed
            (And.intro E.geneExpressionChangedClosed
              (And.intro E.cytoskeletonRearrangedClosed
                (And.intro E.membraneTrafficAlteredClosed
                  (And.intro E.signalCoupledToEndocytosisClosed
                    E.exocytosisRespondsToSignalClosed))))))))

end CellBiologyEndocytosisExocytosisTheoremCanonicalLaneLean
end HautevilleHouse