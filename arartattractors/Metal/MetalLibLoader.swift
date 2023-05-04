//
//  MetalLibLoader.swift
//  arartattractors
//
//  Created by Prakhar Singh on 2023/04/28.
//

import MetalKit

final class MetalLibLoader {
    static var shared = MetalLibLoader()
    private init() {
        initialize()
    }

    // var textureCache: CVMetalTextureCache!
    var mtlDevice: MTLDevice!
    var library: MTLLibrary!

    private func initialize() {
        guard let device = MTLCreateSystemDefaultDevice() else {
            fatalError("failed to create a system default Metal device.")
        }
        mtlDevice = device

        //    if CVMetalTextureCacheCreate(nil, nil, device, nil, &textureCache)
        //      != kCVReturnSuccess {
        //        fatalError()
        //    }

        guard let library = device.makeDefaultLibrary() else {
            fatalError("failed to create a default Metal library.")
        }
        self.library = library
    }
}
