//
// Copyright © 2020 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import <UIKit/UIKit.h>
#import "UTMConfiguration+Constants.h"

@implementation UTMConfiguration (Constants)

#pragma mark - Constant supported values

+ (NSArray<NSString *>*)supportedOptions:(NSString *)key pretty:(BOOL)pretty {
    if ([key isEqualToString:@"networkCards"]) {
        if (pretty) {
            return [self supportedNetworkCardsPretty];
        } else {
            return [self supportedNetworkCards];
        }
    } else if ([key isEqualToString:@"soundCards"]) {
        if (pretty) {
            return [self supportedSoundCardDevicesPretty];
        } else {
            return [self supportedSoundCardDevices];
        }
    } else if ([key isEqualToString:@"architectures"]) {
        if (pretty) {
            return [self supportedArchitecturesPretty];
        } else {
            return [self supportedArchitectures];
        }
    } else if ([key isEqualToString:@"bootDevices"]) {
        if (pretty) {
            return [self supportedBootDevicesPretty];
        } else {
            return [self supportedBootDevices];
        }
    } else if ([key isEqualToString:@"imageTypes"]) {
        if (pretty) {
            return [self supportedImageTypesPretty];
        } else {
            return [self supportedImageTypes];
        }
    } else if ([key isEqualToString:@"driveInterfaces"]) {
        return [self supportedDriveInterfaces];
    } else if ([key isEqualToString:@"scalers"]) {
        if (pretty) {
            return [self supportedScalersPretty];
        } else {
            return [self supportedScalers];
        }
    } else if ([key isEqualToString:@"consoleThemes"]) {
        return [self supportedConsoleThemes];
    } else if ([key isEqualToString:@"consoleFonts"]) {
        return [self supportedConsoleFonts];
    }
    return @[];
}

+ (NSArray<NSString *>*)supportedArchitecturesPretty {
    return @[
             @"Alpha",
             @"ARM (aarch32)",
             @"ARM64 (aarch64)",
             @"CRIS",
             @"HPPA",
             @"i386 (x86)",
             @"LatticeMico32 (lm32)",
             @"m68k",
             @"Microblaze",
             @"Microblaze (Little Endian)",
             @"MIPS",
             @"MIPS (Little Endian)",
             @"MIPS64",
             @"MIPS64 (Little Endian)",
             @"Moxie",
             @"NIOS2",
             @"OpenRISC",
             @"PowerPC",
             @"PowerPC64",
             @"RISC-V32",
             @"RISC-V64",
             @"S390x (zSeries)",
             @"SH4",
             @"SH4 (Big Endian)",
             @"SPARC",
             @"SPARC64",
             @"TriCore",
             @"Unicore32",
             @"x86_64",
             @"Xtensa",
             @"Xtensa (Big Endian)"
             ];
}

+ (NSArray<NSString *>*)supportedSoundCardDevices {
     return @[
             @"ac97",
             @"hda",
             @"es1370",
             @"sb16",
             @"cs4231a",
             @"adlib",
             @"gus",
             @"pcspk"
             ];
}

+ (NSArray<NSString *>*)supportedSoundCardDevicesPretty {
     return @[
             @"Intel 82801AA AC97 Audio",
             @"Intel HD Audio",
             @"ENSONIQ AudioPCI ES1370",
             @"Creative Sound Blaster 16",
             @"CS4231A",
             @"Yamaha YM3812 (OPL2)",
             @"Gravis Ultrasound GF1",
             @"PC speaker"
             ];
}

+ (NSArray<NSString *>*)supportedNetworkCards {
     return @[
             @"e1000",
             @"e1000-82544gc",
             @"e1000-82545em",
             @"e1000e",
             @"i82550",
             @"i82551",
             @"i82557a",
             @"i82557b",
             @"i82557c",
             @"i82558a",
             @"i82558b",
             @"i82559a",
             @"i82559b",
             @"i82559c",
             @"i82559er",
             @"i82562",
             @"i82801",
             @"ne2k_isa",
             @"ne2k_pci",
             @"pcnet",
             @"rocker",
             @"rtl8139",
             @"tulip",
             @"usb-bt-dongle",
             @"usb-net",
             @"virtio-net-device",
             @"virtio-net-pci",
             @"virtio-net-pci-non-transitional",
             @"virtio-net-pci-transitional",
             @"vmxnet3",
             ];
}

+ (NSArray<NSString *>*)supportedNetworkCardsPretty {
     return @[
             @"Intel E1000 Gigabit Ethernet",
             @"Intel E1000-82544GC Gigabit Ethernet",
             @"Intel E1000-82545EM Gigabit Ethernet",
             @"Intel 82574L GbE Controller",
             @"Intel i82550 Ethernet",
             @"Intel i82551 Ethernet",
             @"Intel i82557A Ethernet",
             @"Intel i82557B Ethernet",
             @"Intel i82557C Ethernet",
             @"Intel i82558A Ethernet",
             @"Intel i82558B Ethernet",
             @"Intel i82559A Ethernet",
             @"Intel i82559B Ethernet",
             @"Intel i82559C Ethernet",
             @"Intel i82559ER Ethernet",
             @"Intel i82562 Ethernet",
             @"Intel i82801 Ethernet",
             @"ne2k_isa",
             @"ne2k_pci",
             @"pcnet",
             @"Rocker Switch",
             @"Realtek RTL8139",
             @"tulip",
             @"usb-bt-dongle",
             @"usb-net",
             @"virtio-net-device",
             @"virtio-net-pci",
             @"virtio-net-pci-non-transitional",
             @"virtio-net-pci-transitional",
             @"VMWare Paravirtualized Ethernet v3",
             ];
}

+ (NSArray<NSString *>*)supportedArchitectures {
    return @[
             @"alpha",
             @"arm",
             @"aarch64",
             @"cris",
             @"hppa",
             @"i386",
             @"lm32",
             @"m68k",
             @"microblaze",
             @"microblazeel",
             @"mips",
             @"mipsel",
             @"mips64",
             @"mips64el",
             @"moxie",
             @"nios2",
             @"or1k",
             @"ppc",
             @"ppc64",
             @"riscv32",
             @"riscv64",
             @"s390x",
             @"sh4",
             @"sh4eb",
             @"sparc",
             @"sparc64",
             @"tricore",
             @"unicore32",
             @"x86_64",
             @"xtensa",
             @"xtensaeb"
             ];
}

+ (NSArray<NSString *>*)supportedBootDevicesPretty {
    return @[
             NSLocalizedString(@"Hard Disk", "Configuration boot device"),
             NSLocalizedString(@"CD/DVD", "Configuration boot device"),
             NSLocalizedString(@"Floppy", "Configuration boot device")
             ];
}

+ (NSArray<NSString *>*)supportedBootDevices {
    return @[
             @"hdd",
             @"cd",
             @"floppy"
             ];
}

+ (NSArray<NSString *>*)supportedImageTypesPretty {
    return @[
             NSLocalizedString(@"Disk Image", "UTMConfiguration"),
             NSLocalizedString(@"CD/DVD Image", "UTMConfiguration"),
             NSLocalizedString(@"BIOS", "UTMConfiguration"),
             NSLocalizedString(@"Linux Kernel", "UTMConfiguration"),
             NSLocalizedString(@"Linux RAM Disk", "UTMConfiguration"),
             NSLocalizedString(@"Linux Device Tree Binary", "UTMConfiguration")
             ];
}

+ (NSArray<NSString *>*)supportedImageTypes {
    return @[
             @"disk",
             @"cd",
             @"bios",
             @"kernel",
             @"initrd",
             @"dtb"
             ];
}

+ (NSArray<NSString *>*)supportedTargetsForArchitecture:(NSString *)architecture {
    return @{
        @"alpha":
            @[
                @"clipper",
                @"none",
            ],
        @"sparc":
            @[
                @"LX",
                @"SPARCClassic",
                @"SPARCbook",
                @"SS-10",
                @"SS-20",
                @"SS-4",
                @"SS-5",
                @"SS-600MP",
                @"Voyager",
                @"leon3_generic",
                @"none",
            ],
        @"lm32":
            @[
                @"lm32-evr",
                @"lm32-uclinux",
                @"milkymist",
                @"none",
            ],
        @"nios2":
            @[
                @"10m50-ghrd",
                @"nios2-generic-nommu",
                @"none",
            ],
        @"sh4":
            @[
                @"none",
                @"r2d",
                @"shix",
            ],
        @"xtensa":
            @[
                @"kc705",
                @"kc705-nommu",
                @"lx200",
                @"lx200-nommu",
                @"lx60",
                @"lx60-nommu",
                @"ml605",
                @"ml605-nommu",
                @"none",
                @"sim",
                @"virt",
            ],
        @"sparc64":
            @[
                @"niagara",
                @"none",
                @"sun4u",
                @"sun4v",
            ],
        @"riscv32":
            @[
                @"none",
                @"sifive_e",
                @"sifive_u",
                @"spike",
                @"spike_v1.10",
                @"spike_v1.9.1",
                @"virt",
            ],
        @"m68k":
            @[
                @"an5206",
                @"mcf5208evb",
                @"next-cube",
                @"none",
                @"q800",
            ],
        @"tricore":
            @[
                @"none",
                @"tricore_testboard",
            ],
        @"microblaze":
            @[
                @"none",
                @"petalogix-ml605",
                @"petalogix-s3adsp1800",
                @"xlnx-zynqmp-pmu",
            ],
        @"cris":
            @[
                @"axis-dev88",
                @"none",
            ],
        @"mipsel":
            @[
                @"malta",
                @"mips",
                @"mipssim",
                @"none",
            ],
        @"sh4eb":
            @[
                @"none",
                @"r2d",
                @"shix",
            ],
        @"unicore32":
            @[
                @"none",
                @"puv3",
            ],
        @"aarch64":
            @[
                @"akita",
                @"ast2500-evb",
                @"ast2600-evb",
                @"borzoi",
                @"canon-a1100",
                @"cheetah",
                @"collie",
                @"connex",
                @"cubieboard",
                @"emcraft-sf2",
                @"highbank",
                @"imx25-pdk",
                @"integratorcp",
                @"kzm",
                @"lm3s6965evb",
                @"lm3s811evb",
                @"mainstone",
                @"mcimx6ul-evk",
                @"mcimx7d-sabre",
                @"microbit",
                @"midway",
                @"mps2-an385",
                @"mps2-an505",
                @"mps2-an511",
                @"mps2-an521",
                @"musca-a",
                @"musca-b1",
                @"musicpal",
                @"n800",
                @"n810",
                @"netduino2",
                @"none",
                @"nuri",
                @"palmetto-bmc",
                @"raspi2",
                @"raspi3",
                @"realview-eb",
                @"realview-eb-mpcore",
                @"realview-pb-a8",
                @"realview-pbx-a9",
                @"romulus-bmc",
                @"sabrelite",
                @"sbsa-ref",
                @"smdkc210",
                @"spitz",
                @"swift-bmc",
                @"sx1",
                @"sx1-v1",
                @"terrier",
                @"tosa",
                @"verdex",
                @"versatileab",
                @"versatilepb",
                @"vexpress-a15",
                @"vexpress-a9",
                @"virt-2.10",
                @"virt-2.11",
                @"virt-2.12",
                @"virt-2.6",
                @"virt-2.7",
                @"virt-2.8",
                @"virt-2.9",
                @"virt-3.0",
                @"virt-3.1",
                @"virt-4.0",
                @"virt-4.1",
                @"virt",
                @"virt-4.2",
                @"witherspoon-bmc",
                @"xilinx-zynq-a9",
                @"xlnx-versal-virt",
                @"xlnx-zcu102",
                @"z2",
            ],
        @"ppc":
            @[
                @"40p",
                @"bamboo",
                @"g3beige",
                @"mac99",
                @"mpc8544ds",
                @"none",
                @"ppce500",
                @"prep",
                @"ref405ep",
                @"sam460ex",
                @"taihu",
                @"virtex-ml507",
            ],
        @"hppa":
            @[
                @"hppa",
                @"none",
            ],
        @"mips64el":
            @[
                @"boston",
                @"fulong2e",
                @"magnum",
                @"malta",
                @"mips",
                @"mipssim",
                @"none",
                @"pica61",
            ],
        @"or1k":
            @[
                @"none",
                @"or1k-sim",
            ],
        @"i386":
            @[
                @"microvm",
                @"pc",
                @"pc-i440fx-4.2",
                @"pc-i440fx-4.1",
                @"pc-i440fx-4.0",
                @"pc-i440fx-3.1",
                @"pc-i440fx-3.0",
                @"pc-i440fx-2.9",
                @"pc-i440fx-2.8",
                @"pc-i440fx-2.7",
                @"pc-i440fx-2.6",
                @"pc-i440fx-2.5",
                @"pc-i440fx-2.4",
                @"pc-i440fx-2.3",
                @"pc-i440fx-2.2",
                @"pc-i440fx-2.12",
                @"pc-i440fx-2.11",
                @"pc-i440fx-2.10",
                @"pc-i440fx-2.1",
                @"pc-i440fx-2.0",
                @"pc-i440fx-1.7",
                @"pc-i440fx-1.6",
                @"pc-i440fx-1.5",
                @"pc-i440fx-1.4",
                @"pc-1.3",
                @"pc-1.2",
                @"pc-1.1",
                @"pc-1.0",
                @"pc-0.15",
                @"pc-0.14",
                @"pc-0.13",
                @"pc-0.12",
                @"q35",
                @"pc-q35-4.2",
                @"pc-q35-4.1",
                @"pc-q35-4.0.1",
                @"pc-q35-4.0",
                @"pc-q35-3.1",
                @"pc-q35-3.0",
                @"pc-q35-2.9",
                @"pc-q35-2.8",
                @"pc-q35-2.7",
                @"pc-q35-2.6",
                @"pc-q35-2.5",
                @"pc-q35-2.4",
                @"pc-q35-2.12",
                @"pc-q35-2.11",
                @"pc-q35-2.10",
                @"isapc",
                @"none",
            ],
        @"mips64":
            @[
                @"magnum",
                @"malta",
                @"mips",
                @"mipssim",
                @"none",
                @"pica61",
            ],
        @"microblazeel":
            @[
                @"none",
                @"petalogix-ml605",
                @"petalogix-s3adsp1800",
                @"xlnx-zynqmp-pmu",
            ],
        @"riscv64":
            @[
                @"none",
                @"sifive_e",
                @"sifive_u",
                @"spike",
                @"spike_v1.10",
                @"spike_v1.9.1",
                @"virt",
            ],
        @"xtensaeb":
            @[
                @"kc705",
                @"kc705-nommu",
                @"lx200",
                @"lx200-nommu",
                @"lx60",
                @"lx60-nommu",
                @"ml605",
                @"ml605-nommu",
                @"none",
                @"sim",
                @"virt",
            ],
        @"mips":
            @[
                @"malta",
                @"mips",
                @"mipssim",
                @"none",
            ],
        @"x86_64":
            @[
                @"microvm",
                @"pc",
                @"pc-i440fx-4.2",
                @"pc-i440fx-4.1",
                @"pc-i440fx-4.0",
                @"pc-i440fx-3.1",
                @"pc-i440fx-3.0",
                @"pc-i440fx-2.9",
                @"pc-i440fx-2.8",
                @"pc-i440fx-2.7",
                @"pc-i440fx-2.6",
                @"pc-i440fx-2.5",
                @"pc-i440fx-2.4",
                @"pc-i440fx-2.3",
                @"pc-i440fx-2.2",
                @"pc-i440fx-2.12",
                @"pc-i440fx-2.11",
                @"pc-i440fx-2.10",
                @"pc-i440fx-2.1",
                @"pc-i440fx-2.0",
                @"pc-i440fx-1.7",
                @"pc-i440fx-1.6",
                @"pc-i440fx-1.5",
                @"pc-i440fx-1.4",
                @"pc-1.3",
                @"pc-1.2",
                @"pc-1.1",
                @"pc-1.0",
                @"pc-0.15",
                @"pc-0.14",
                @"pc-0.13",
                @"pc-0.12",
                @"q35",
                @"pc-q35-4.2",
                @"pc-q35-4.1",
                @"pc-q35-4.0.1",
                @"pc-q35-4.0",
                @"pc-q35-3.1",
                @"pc-q35-3.0",
                @"pc-q35-2.9",
                @"pc-q35-2.8",
                @"pc-q35-2.7",
                @"pc-q35-2.6",
                @"pc-q35-2.5",
                @"pc-q35-2.4",
                @"pc-q35-2.12",
                @"pc-q35-2.11",
                @"pc-q35-2.10",
                @"isapc",
                @"none",
            ],
        @"s390x":
            @[
                @"none",
                @"s390-ccw-virtio-2.10",
                @"s390-ccw-virtio-2.11",
                @"s390-ccw-virtio-2.12",
                @"s390-ccw-virtio-2.4",
                @"s390-ccw-virtio-2.5",
                @"s390-ccw-virtio-2.6",
                @"s390-ccw-virtio-2.7",
                @"s390-ccw-virtio-2.8",
                @"s390-ccw-virtio-2.9",
                @"s390-ccw-virtio-3.0",
                @"s390-ccw-virtio-3.1",
                @"s390-ccw-virtio-4.0",
                @"s390-ccw-virtio-4.1",
                @"s390-ccw-virtio",
                @"s390-ccw-virtio-4.2",
            ],
        @"moxie":
            @[
                @"moxiesim",
                @"none",
            ],
        @"arm":
            @[
                @"akita",
                @"ast2500-evb",
                @"ast2600-evb",
                @"borzoi",
                @"canon-a1100",
                @"cheetah",
                @"collie",
                @"connex",
                @"cubieboard",
                @"emcraft-sf2",
                @"highbank",
                @"imx25-pdk",
                @"integratorcp",
                @"kzm",
                @"lm3s6965evb",
                @"lm3s811evb",
                @"mainstone",
                @"mcimx6ul-evk",
                @"mcimx7d-sabre",
                @"microbit",
                @"midway",
                @"mps2-an385",
                @"mps2-an505",
                @"mps2-an511",
                @"mps2-an521",
                @"musca-a",
                @"musca-b1",
                @"musicpal",
                @"n800",
                @"n810",
                @"netduino2",
                @"none",
                @"nuri",
                @"palmetto-bmc",
                @"raspi2",
                @"realview-eb",
                @"realview-eb-mpcore",
                @"realview-pb-a8",
                @"realview-pbx-a9",
                @"romulus-bmc",
                @"sabrelite",
                @"smdkc210",
                @"spitz",
                @"swift-bmc",
                @"sx1",
                @"sx1-v1",
                @"terrier",
                @"tosa",
                @"verdex",
                @"versatileab",
                @"versatilepb",
                @"vexpress-a15",
                @"vexpress-a9",
                @"virt-2.10",
                @"virt-2.11",
                @"virt-2.12",
                @"virt-2.6",
                @"virt-2.7",
                @"virt-2.8",
                @"virt-2.9",
                @"virt-3.0",
                @"virt-3.1",
                @"virt-4.0",
                @"virt-4.1",
                @"virt",
                @"virt-4.2",
                @"witherspoon-bmc",
                @"xilinx-zynq-a9",
                @"z2",
            ],
        @"ppc64":
            @[
                @"40p",
                @"bamboo",
                @"g3beige",
                @"mac99",
                @"mpc8544ds",
                @"none",
                @"powernv8",
                @"powernv",
                @"powernv9",
                @"ppce500",
                @"prep",
                @"pseries-2.1",
                @"pseries-2.10",
                @"pseries-2.11",
                @"pseries-2.12",
                @"pseries-2.12-sxxm",
                @"pseries-2.2",
                @"pseries-2.3",
                @"pseries-2.4",
                @"pseries-2.5",
                @"pseries-2.6",
                @"pseries-2.7",
                @"pseries-2.8",
                @"pseries-2.9",
                @"pseries-3.0",
                @"pseries-3.1",
                @"pseries-4.0",
                @"pseries-4.1",
                @"pseries",
                @"pseries-4.2",
                @"ref405ep",
                @"sam460ex",
                @"taihu",
                @"virtex-ml507",
            ],
    }[architecture];
}

+ (NSArray<NSString *>*)supportedTargetsForArchitecturePretty:(NSString *)architecture {
    return @{
        @"alpha":
            @[
                @"Alpha DP264/CLIPPER (default)",
                @"empty machine",
            ],
        @"sparc":
            @[
                @"Sun4m platform, SPARCstation LX",
                @"Sun4m platform, SPARCClassic",
                @"Sun4m platform, SPARCbook",
                @"Sun4m platform, SPARCstation 10",
                @"Sun4m platform, SPARCstation 20",
                @"Sun4m platform, SPARCstation 4",
                @"Sun4m platform, SPARCstation 5 (default)",
                @"Sun4m platform, SPARCserver 600MP",
                @"Sun4m platform, SPARCstation Voyager",
                @"Leon-3 generic",
                @"empty machine",
            ],
        @"lm32":
            @[
                @"LatticeMico32 EVR32 eval system (default)",
                @"lm32 platform for uClinux and u-boot by Theobroma Systems",
                @"Milkymist One",
                @"empty machine",
            ],
        @"nios2":
            @[
                @"Altera 10M50 GHRD Nios II design (default)",
                @"Generic NOMMU Nios II design",
                @"empty machine",
            ],
        @"sh4":
            @[
                @"empty machine",
                @"r2d-plus board",
                @"shix card (default)",
            ],
        @"xtensa":
            @[
                @"kc705 EVB (dc232b)",
                @"kc705 noMMU EVB (de212)",
                @"lx200 EVB (dc232b)",
                @"lx200 noMMU EVB (de212)",
                @"lx60 EVB (dc232b)",
                @"lx60 noMMU EVB (de212)",
                @"ml605 EVB (dc232b)",
                @"ml605 noMMU EVB (de212)",
                @"empty machine",
                @"sim machine (dc232b) (default)",
                @"virt machine (dc232b)",
            ],
        @"sparc64":
            @[
                @"Sun4v platform, Niagara",
                @"empty machine",
                @"Sun4u platform (default)",
                @"Sun4v platform",
            ],
        @"riscv32":
            @[
                @"empty machine",
                @"RISC-V Board compatible with SiFive E SDK",
                @"RISC-V Board compatible with SiFive U SDK",
                @"RISC-V Spike Board (default)",
                @"RISC-V Spike Board (Privileged ISA v1.10)",
                @"RISC-V Spike Board (Privileged ISA v1.9.1)",
                @"RISC-V VirtIO board",
            ],
        @"m68k":
            @[
                @"Arnewsh 5206",
                @"MCF5208EVB (default)",
                @"NeXT Cube",
                @"empty machine",
                @"Macintosh Quadra 800",
            ],
        @"tricore":
            @[
                @"empty machine",
                @"a minimal TriCore board",
            ],
        @"microblaze":
            @[
                @"empty machine",
                @"PetaLogix linux refdesign for xilinx ml605 little endian",
                @"PetaLogix linux refdesign for xilinx Spartan 3ADSP1800 (default)",
                @"Xilinx ZynqMP PMU machine",
            ],
        @"cris":
            @[
                @"AXIS devboard 88 (default)",
                @"empty machine",
            ],
        @"mipsel":
            @[
                @"MIPS Malta Core LV (default)",
                @"mips r4k platform",
                @"MIPS MIPSsim platform",
                @"empty machine",
            ],
        @"sh4eb":
            @[
                @"empty machine",
                @"r2d-plus board",
                @"shix card (default)",
            ],
        @"unicore32":
            @[
                @"empty machine",
                @"PKUnity Version-3 based on UniCore32 (default)",
            ],
        @"aarch64":
            @[
                @"Sharp SL-C1000 (Akita) PDA (PXA270)",
                @"Aspeed AST2500 EVB (ARM1176)",
                @"Aspeed AST2600 EVB (Cortex A7)",
                @"Sharp SL-C3100 (Borzoi) PDA (PXA270)",
                @"Canon PowerShot A1100 IS",
                @"Palm Tungsten|E aka. Cheetah PDA (OMAP310)",
                @"Sharp SL-5500 (Collie) PDA (SA-1110)",
                @"Gumstix Connex (PXA255)",
                @"cubietech cubieboard (Cortex-A9)",
                @"SmartFusion2 SOM kit from Emcraft (M2S010)",
                @"Calxeda Highbank (ECX-1000)",
                @"ARM i.MX25 PDK board (ARM926)",
                @"ARM Integrator/CP (ARM926EJ-S)",
                @"ARM KZM Emulation Baseboard (ARM1136)",
                @"Stellaris LM3S6965EVB",
                @"Stellaris LM3S811EVB",
                @"Mainstone II (PXA27x)",
                @"Freescale i.MX6UL Evaluation Kit (Cortex A7)",
                @"Freescale i.MX7 DUAL SABRE (Cortex A7)",
                @"BBC micro:bit",
                @"Calxeda Midway (ECX-2000)",
                @"ARM MPS2 with AN385 FPGA image for Cortex-M3",
                @"ARM MPS2 with AN505 FPGA image for Cortex-M33",
                @"ARM MPS2 with AN511 DesignStart FPGA image for Cortex-M3",
                @"ARM MPS2 with AN521 FPGA image for dual Cortex-M33",
                @"ARM Musca-A board (dual Cortex-M33)",
                @"ARM Musca-B1 board (dual Cortex-M33)",
                @"Marvell 88w8618 / MusicPal (ARM926EJ-S)",
                @"Nokia N800 tablet aka. RX-34 (OMAP2420)",
                @"Nokia N810 tablet aka. RX-44 (OMAP2420)",
                @"Netduino 2 Machine",
                @"empty machine",
                @"Samsung NURI board (Exynos4210)",
                @"OpenPOWER Palmetto BMC (ARM926EJ-S)",
                @"Raspberry Pi 2",
                @"Raspberry Pi 3",
                @"ARM RealView Emulation Baseboard (ARM926EJ-S)",
                @"ARM RealView Emulation Baseboard (ARM11MPCore)",
                @"ARM RealView Platform Baseboard for Cortex-A8",
                @"ARM RealView Platform Baseboard Explore for Cortex-A9",
                @"OpenPOWER Romulus BMC (ARM1176)",
                @"Freescale i.MX6 Quad SABRE Lite Board (Cortex A9)",
                @"QEMU 'SBSA Reference' ARM Virtual Machine",
                @"Samsung SMDKC210 board (Exynos4210)",
                @"Sharp SL-C3000 (Spitz) PDA (PXA270)",
                @"OpenPOWER Swift BMC (ARM1176)",
                @"Siemens SX1 (OMAP310) V2",
                @"Siemens SX1 (OMAP310) V1",
                @"Sharp SL-C3200 (Terrier) PDA (PXA270)",
                @"Sharp SL-6000 (Tosa) PDA (PXA255)",
                @"Gumstix Verdex (PXA270)",
                @"ARM Versatile/AB (ARM926EJ-S)",
                @"ARM Versatile/PB (ARM926EJ-S)",
                @"ARM Versatile Express for Cortex-A15",
                @"ARM Versatile Express for Cortex-A9",
                @"QEMU 2.10 ARM Virtual Machine",
                @"QEMU 2.11 ARM Virtual Machine",
                @"QEMU 2.12 ARM Virtual Machine",
                @"QEMU 2.6 ARM Virtual Machine",
                @"QEMU 2.7 ARM Virtual Machine",
                @"QEMU 2.8 ARM Virtual Machine",
                @"QEMU 2.9 ARM Virtual Machine",
                @"QEMU 3.0 ARM Virtual Machine",
                @"QEMU 3.1 ARM Virtual Machine",
                @"QEMU 4.0 ARM Virtual Machine",
                @"QEMU 4.1 ARM Virtual Machine",
                @"QEMU 4.2 ARM Virtual Machine (alias of virt-4.2)",
                @"QEMU 4.2 ARM Virtual Machine",
                @"OpenPOWER Witherspoon BMC (ARM1176)",
                @"Xilinx Zynq Platform Baseboard for Cortex-A9",
                @"Xilinx Versal Virtual development board",
                @"Xilinx ZynqMP ZCU102 board with 4xA53s and 2xR5Fs based on the value of smp",
                @"Zipit Z2 (PXA27x)",
            ],
        @"ppc":
            @[
                @"IBM RS/6000 7020 (40p)",
                @"bamboo",
                @"Heathrow based PowerMAC (default)",
                @"Mac99 based PowerMAC",
                @"mpc8544ds",
                @"empty machine",
                @"generic paravirt e500 platform",
                @"PowerPC PREP platform (deprecated)",
                @"ref405ep",
                @"aCube Sam460ex",
                @"taihu",
                @"Xilinx Virtex ML507 reference design",
            ],
        @"hppa":
            @[
                @"HPPA generic machine (default)",
                @"empty machine",
            ],
        @"mips64el":
            @[
                @"MIPS Boston",
                @"Fulong 2e mini pc",
                @"MIPS Magnum",
                @"MIPS Malta Core LV (default)",
                @"mips r4k platform",
                @"MIPS MIPSsim platform",
                @"empty machine",
                @"Acer Pica 61",
            ],
        @"or1k":
            @[
                @"empty machine",
                @"or1k simulation (default)",
            ],
        @"i386":
            @[
                @"microvm (i386)",
                @"Standard PC (i440FX + PIIX, 1996) (alias of pc-i440fx-4.2)",
                @"Standard PC (i440FX + PIIX, 1996) (default)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (Q35 + ICH9, 2009) (alias of pc-q35-4.2)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"ISA-only PC",
                @"empty machine",
            ],
        @"mips64":
            @[
                @"MIPS Magnum",
                @"MIPS Malta Core LV (default)",
                @"mips r4k platform",
                @"MIPS MIPSsim platform",
                @"empty machine",
                @"Acer Pica 61",
            ],
        @"microblazeel":
            @[
                @"empty machine",
                @"PetaLogix linux refdesign for xilinx ml605 little endian",
                @"PetaLogix linux refdesign for xilinx Spartan 3ADSP1800 (default)",
                @"Xilinx ZynqMP PMU machine",
            ],
        @"riscv64":
            @[
                @"empty machine",
                @"RISC-V Board compatible with SiFive E SDK",
                @"RISC-V Board compatible with SiFive U SDK",
                @"RISC-V Spike Board (default)",
                @"RISC-V Spike Board (Privileged ISA v1.10)",
                @"RISC-V Spike Board (Privileged ISA v1.9.1)",
                @"RISC-V VirtIO board",
            ],
        @"xtensaeb":
            @[
                @"kc705 EVB (fsf)",
                @"kc705 noMMU EVB (fsf)",
                @"lx200 EVB (fsf)",
                @"lx200 noMMU EVB (fsf)",
                @"lx60 EVB (fsf)",
                @"lx60 noMMU EVB (fsf)",
                @"ml605 EVB (fsf)",
                @"ml605 noMMU EVB (fsf)",
                @"empty machine",
                @"sim machine (fsf) (default)",
                @"virt machine (fsf)",
            ],
        @"mips":
            @[
                @"MIPS Malta Core LV (default)",
                @"mips r4k platform",
                @"MIPS MIPSsim platform",
                @"empty machine",
            ],
        @"x86_64":
            @[
                @"microvm (i386)",
                @"Standard PC (i440FX + PIIX, 1996) (alias of pc-i440fx-4.2)",
                @"Standard PC (i440FX + PIIX, 1996) (default)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (i440FX + PIIX, 1996) (deprecated)",
                @"Standard PC (Q35 + ICH9, 2009) (alias of pc-q35-4.2)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"Standard PC (Q35 + ICH9, 2009)",
                @"ISA-only PC",
                @"empty machine",
            ],
        @"s390x":
            @[
                @"empty machine",
                @"VirtIO-ccw based S390 machine v2.10",
                @"VirtIO-ccw based S390 machine v2.11",
                @"VirtIO-ccw based S390 machine v2.12",
                @"VirtIO-ccw based S390 machine v2.4",
                @"VirtIO-ccw based S390 machine v2.5",
                @"VirtIO-ccw based S390 machine v2.6",
                @"VirtIO-ccw based S390 machine v2.7",
                @"VirtIO-ccw based S390 machine v2.8",
                @"VirtIO-ccw based S390 machine v2.9",
                @"VirtIO-ccw based S390 machine v3.0",
                @"VirtIO-ccw based S390 machine v3.1",
                @"VirtIO-ccw based S390 machine v4.0",
                @"VirtIO-ccw based S390 machine v4.1",
                @"VirtIO-ccw based S390 machine v4.2 (alias of s390-ccw-virtio-4.2)",
                @"VirtIO-ccw based S390 machine v4.2 (default)",
            ],
        @"moxie":
            @[
                @"Moxie simulator platform (default)",
                @"empty machine",
            ],
        @"arm":
            @[
                @"Sharp SL-C1000 (Akita) PDA (PXA270)",
                @"Aspeed AST2500 EVB (ARM1176)",
                @"Aspeed AST2600 EVB (Cortex A7)",
                @"Sharp SL-C3100 (Borzoi) PDA (PXA270)",
                @"Canon PowerShot A1100 IS",
                @"Palm Tungsten|E aka. Cheetah PDA (OMAP310)",
                @"Sharp SL-5500 (Collie) PDA (SA-1110)",
                @"Gumstix Connex (PXA255)",
                @"cubietech cubieboard (Cortex-A9)",
                @"SmartFusion2 SOM kit from Emcraft (M2S010)",
                @"Calxeda Highbank (ECX-1000)",
                @"ARM i.MX25 PDK board (ARM926)",
                @"ARM Integrator/CP (ARM926EJ-S)",
                @"ARM KZM Emulation Baseboard (ARM1136)",
                @"Stellaris LM3S6965EVB",
                @"Stellaris LM3S811EVB",
                @"Mainstone II (PXA27x)",
                @"Freescale i.MX6UL Evaluation Kit (Cortex A7)",
                @"Freescale i.MX7 DUAL SABRE (Cortex A7)",
                @"BBC micro:bit",
                @"Calxeda Midway (ECX-2000)",
                @"ARM MPS2 with AN385 FPGA image for Cortex-M3",
                @"ARM MPS2 with AN505 FPGA image for Cortex-M33",
                @"ARM MPS2 with AN511 DesignStart FPGA image for Cortex-M3",
                @"ARM MPS2 with AN521 FPGA image for dual Cortex-M33",
                @"ARM Musca-A board (dual Cortex-M33)",
                @"ARM Musca-B1 board (dual Cortex-M33)",
                @"Marvell 88w8618 / MusicPal (ARM926EJ-S)",
                @"Nokia N800 tablet aka. RX-34 (OMAP2420)",
                @"Nokia N810 tablet aka. RX-44 (OMAP2420)",
                @"Netduino 2 Machine",
                @"empty machine",
                @"Samsung NURI board (Exynos4210)",
                @"OpenPOWER Palmetto BMC (ARM926EJ-S)",
                @"Raspberry Pi 2",
                @"ARM RealView Emulation Baseboard (ARM926EJ-S)",
                @"ARM RealView Emulation Baseboard (ARM11MPCore)",
                @"ARM RealView Platform Baseboard for Cortex-A8",
                @"ARM RealView Platform Baseboard Explore for Cortex-A9",
                @"OpenPOWER Romulus BMC (ARM1176)",
                @"Freescale i.MX6 Quad SABRE Lite Board (Cortex A9)",
                @"Samsung SMDKC210 board (Exynos4210)",
                @"Sharp SL-C3000 (Spitz) PDA (PXA270)",
                @"OpenPOWER Swift BMC (ARM1176)",
                @"Siemens SX1 (OMAP310) V2",
                @"Siemens SX1 (OMAP310) V1",
                @"Sharp SL-C3200 (Terrier) PDA (PXA270)",
                @"Sharp SL-6000 (Tosa) PDA (PXA255)",
                @"Gumstix Verdex (PXA270)",
                @"ARM Versatile/AB (ARM926EJ-S)",
                @"ARM Versatile/PB (ARM926EJ-S)",
                @"ARM Versatile Express for Cortex-A15",
                @"ARM Versatile Express for Cortex-A9",
                @"QEMU 2.10 ARM Virtual Machine",
                @"QEMU 2.11 ARM Virtual Machine",
                @"QEMU 2.12 ARM Virtual Machine",
                @"QEMU 2.6 ARM Virtual Machine",
                @"QEMU 2.7 ARM Virtual Machine",
                @"QEMU 2.8 ARM Virtual Machine",
                @"QEMU 2.9 ARM Virtual Machine",
                @"QEMU 3.0 ARM Virtual Machine",
                @"QEMU 3.1 ARM Virtual Machine",
                @"QEMU 4.0 ARM Virtual Machine",
                @"QEMU 4.1 ARM Virtual Machine",
                @"QEMU 4.2 ARM Virtual Machine (alias of virt-4.2)",
                @"QEMU 4.2 ARM Virtual Machine",
                @"OpenPOWER Witherspoon BMC (ARM1176)",
                @"Xilinx Zynq Platform Baseboard for Cortex-A9",
                @"Zipit Z2 (PXA27x)",
            ],
        @"ppc64":
            @[
                @"IBM RS/6000 7020 (40p)",
                @"bamboo",
                @"Heathrow based PowerMAC",
                @"Mac99 based PowerMAC",
                @"mpc8544ds",
                @"empty machine",
                @"IBM PowerNV (Non-Virtualized) POWER8",
                @"IBM PowerNV (Non-Virtualized) POWER9 (alias of powernv9)",
                @"IBM PowerNV (Non-Virtualized) POWER9",
                @"generic paravirt e500 platform",
                @"PowerPC PREP platform (deprecated)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant)",
                @"pSeries Logical Partition (PAPR compliant) (alias of pseries-4.2)",
                @"pSeries Logical Partition (PAPR compliant) (default)",
                @"ref405ep",
                @"aCube Sam460ex",
                @"taihu",
                @"Xilinx Virtex ML507 reference design",
            ],
    }[architecture];
}

+ (NSInteger)defaultTargetIndexForArchitecture:(NSString *)architecture {
    return [@{
        @"alpha": @0,
        @"sparc": @6,
        @"lm32": @0,
        @"nios2": @0,
        @"sh4": @2,
        @"xtensa": @9,
        @"sparc64": @2,
        @"riscv32": @3,
        @"m68k": @1,
        @"tricore": @1,
        @"microblaze": @1,
        @"cris": @0,
        @"mipsel": @0,
        @"sh4eb": @2,
        @"unicore32": @1,
        @"aarch64": @66,
        @"ppc": @2,
        @"hppa": @0,
        @"mips64el": @3,
        @"or1k": @1,
        @"i386": @1,
        @"mips64": @1,
        @"microblazeel": @2,
        @"riscv64": @3,
        @"xtensaeb": @9,
        @"mips": @0,
        @"x86_64": @1,
        @"s390x": @14,
        @"moxie": @0,
        @"arm": @64,
        @"ppc64": @28,
    }[architecture] integerValue];
}

+ (NSArray<NSString *>*)supportedResolutions {
    return @[
             @"320x240",
             @"640x480",
             @"800x600",
             @"1024x600",
             @"1136x640",
             @"1280x720",
             @"1334x750",
             @"1280x800",
             @"1280x1024",
             @"1920x1080",
             @"2436x1125",
             @"2048x1536",
             @"2560x1440",
             @"2732x2048"
             ];
}

+ (NSArray<NSString *>*)supportedDriveInterfaces {
    return @[
             @"ide",
             @"scsi",
             @"sd",
             @"mtd",
             @"floppy",
             @"pflash",
             @"virtio",
             @"none"
             ];
}

+ (NSArray<NSString *>*)supportedScalersPretty {
    return @[
        NSLocalizedString(@"Linear", "UTMConfiguration"),
        NSLocalizedString(@"Nearest Neighbor", "UTMConfiguration"),
    ];
}

+ (NSArray<NSString *>*)supportedScalers {
    return @[
        @"linear",
        @"nearest",
    ];
}

+ (NSArray<NSString *>*)supportedConsoleThemes {
    return @[
        @"Default"
    ];
}

+ (NSArray<NSString *>*)supportedConsoleFonts {
    static NSMutableArray<NSString *> *families;
    if (!families) {
        families = [NSMutableArray new];
        for (NSString *family in UIFont.familyNames) {
            UIFont *font = [UIFont fontWithName:family size:1];
            if (font.fontDescriptor.symbolicTraits & UIFontDescriptorTraitMonoSpace) {
                [families addObject:family];
            }
        }
    }
    return families;
}

+ (NSString *)diskImagesDirectory {
    return @"Images";
}

+ (NSString *)defaultDriveInterface {
    return [self supportedDriveInterfaces][0];
}

+ (NSString *)debugLogName {
    return @"debug.log";
}

@end
