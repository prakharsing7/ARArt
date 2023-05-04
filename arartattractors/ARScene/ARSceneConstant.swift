//
//  ARSceneConstant.swift
//  arartattractors
//
//  Created by Prakhar Singh on 2023/04/28.
//

import Foundation

final class ARSceneConstant {
    private init() {}

    // AR World
    static let worldOriginForDevice: SIMD3<Float> = [0.0, 0.0, -0.3]
    static let worldOriginForMac: SIMD3<Float> = [0.0, 0.0, -0.3]

    // Model
    static let modelScale: SIMD3<Float> = [0.5, 0.5, 0.5]
}
