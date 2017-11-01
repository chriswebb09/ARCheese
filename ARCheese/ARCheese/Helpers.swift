//
//  Helpers.swift
//  ARCheese
//
//  Created by Christopher Webb-Orenstein on 11/1/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import SceneKit

func createPlaneNode(center: vector_float3, extent: vector_float3) -> SCNNode {
    let plane = SCNPlane(width: CGFloat(extent.x) + 1.5 , height: CGFloat(extent.z) + 2)
    let planeMaterial = SCNMaterial()
    planeMaterial.diffuse.contents = UIColor.orange.withAlphaComponent(1)
    // planeMaterial.colorBufferWriteMask = []
    plane.materials = [planeMaterial]
    let planeNode = SCNNode(geometry: plane)
    planeNode.position = SCNVector3Make(center.x, 0, center.z)
    planeNode.transform = SCNMatrix4MakeRotation(-Float.pi / 2, 1, 0, 0)
    planeNode.renderingOrder = 1
    return planeNode
}

func createDiskNode(center: vector_float3) -> SCNNode {
    let plane = SCNPlane(width: 0.1 , height: 0.1)
    plane.cornerRadius = plane.width / 2
    let planeMaterial = SCNMaterial()
    planeMaterial.diffuse.contents = UIColor.blue.withAlphaComponent(0.4)
    planeMaterial.colorBufferWriteMask = []
    plane.materials = [planeMaterial]
    let planeNode = SCNNode(geometry: plane)
    planeNode.position = SCNVector3Make(center.x, 0, center.z)
    planeNode.transform = SCNMatrix4MakeRotation(-Float.pi / 2, 1, 0, 0)
    planeNode.renderingOrder = -1
    return planeNode
}

func createSphereNode(radius: CGFloat) -> SCNNode {
    let sphere = SCNSphere(radius:radius)
    let mat = SCNMaterial()
    mat.diffuse.contents = UIColor.cyan
    mat.isDoubleSided = true
    sphere.materials = [mat]
    return SCNNode(geometry: sphere)
}


