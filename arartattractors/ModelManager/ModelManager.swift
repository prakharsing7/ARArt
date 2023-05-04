//
//  ModelManager.swift
//  arartattractors
//
//  Created by Prakhar Singh on 2023/04/28.
//

import RealityKit

final class ModelManager {
    static let shared = ModelManager()

    private var figure: Figure!
    private var animationSpeed: Double = 0
    private var attractorModel: AttractorModel!
    private init() { }

    func setup(figure: Figure) {
        animationSpeed = Double(figure.animationSpeed)
        if self.figure == nil || !figure.isEqualModel(to: self.figure) {
            self.figure = figure
            let attractor = makeAttractor(figure: figure)
            attractorModel = AttractorModel(attractor: attractor)
            attractorModel.setup()
        }
    }

    func getBaseModel() -> Entity? {
        return attractorModel.baseModelEntity()
    }

    func resetAnimation() {
        attractorModel.resetAnimation()
    }

    func playAnimation(_ time: Double) {
        attractorModel.playAnimation(time * animationSpeed)
    }

    func animationFinished() -> Bool {
        return attractorModel.animationFinished()
    }

    private func makeAttractor(figure: Figure) -> Attractor {
        let parameter = SIMD4<Float>(figure.paramA, figure.paramB,
                                     figure.paramC, figure.paramD)
        let attractor = AttractorType.makeAttractor(type: figure.type,
                                                name: figure.name,
                                                parameter: parameter,
                                                number: Int(figure.paramN),
                                                point: figure.point,
                                                color: figure.colorFactor)
        return attractor
    }
}
