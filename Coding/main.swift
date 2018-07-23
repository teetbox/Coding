//
//  main.swift
//  Coding
//
//  Created by Tong Tian on 2018/7/23.
//  Copyright © 2018 TeetBox. All rights reserved.
//

import Foundation

print("Hello, World!")

// Factory Method Pattern

let macBookAir = CodingWithMacBookAir()
macBookAir.coding()

let macBookPro = CodingWithMacBookPro()
macBookPro.coding()

let macMini = CodingWithMacMini()
macMini.coding()

// Abstract Factory Pattern

var cpuFactory: CPUFactory = HighPerformanceCPU()
var ramFactory: RAMFactory = HighPerformanceRAM()
var ssdFactory: SSDFactory = HighPerformanceSSD()
var displayFactory: DisplayFactory = HighPerformanceDisplay()

let highPerformanceComputer = HighPerformanceComputerFactory(cpuFactory: cpuFactory, ramFactory: ramFactory, ssdFactory: ssdFactory, displayFactory: displayFactory)
print(highPerformanceComputer.description)

cpuFactory = RegularPerformanceCPU()
ramFactory = RegularPerformanceRAM()
ssdFactory = RegularPerformanceSSD()
displayFactory = RegularPerformanceDisplay()

let regularPerformanceComputer = RegularPerformanceComputerFactory(cpuFactory: cpuFactory, ramFactory: ramFactory, ssdFactory: ssdFactory, displayFactory: displayFactory)
print(regularPerformanceComputer.description)
