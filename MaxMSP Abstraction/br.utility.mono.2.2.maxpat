{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            840.0,
            300.0
        ],
        "description": "br.utility.mono.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        460.0,
                        15.0,
                        406.0,
                        33.0
                    ],
                    "text": "br.utility.mono.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-in1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-in2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mono (Signal/Float) 0 = off, stereo passes through. 1 = on, L + R to both outputs. 10 ms crossfade. Default 1",
                    "id": "obj-in3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mix (Int) how L + R are combined. 0 = 0 dB (sound on one side only), 1 = -3 dB (stereo, L and R different), 2 = -4.5 dB (full mix, centered and wide parts), 3 = -6 dB (dual mono, L = R). 10 ms glide. Default 3",
                    "id": "obj-in4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal) the mono sum when Mono is on",
                    "id": "obj-out1",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        11.333333333333329,
                        239.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal) same as left when Mono is on",
                    "id": "obj-out2",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        236.33333333333331,
                        239.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            100.0,
                            100.0,
                            780.0,
                            720.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment \"Left In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        265.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 2 @comment \"Right In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "linecount": 5,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        480.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment \"Mono (Signal/Float) 0 = off, stereo passes through. 1 = on, L + R to both outputs. 10 ms crossfade. Default 1\" @default 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "linecount": 7,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        695.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 4 @comment \"Mix (Int) how L + R are combined. 0 = 0 dB (sound on one side only), 1 = -3 dB (stereo, L and R different), 2 = -4.5 dB (full mix, centered and wide parts), 3 = -6 dB (dual mono, L = R). 10 ms glide. Default 3\" @default 3"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.utility.mono.2.2 -- stereo to mono, click-free\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: the core, the UI, the RNBO host and the M4L device embed this same code\n// in1/in2 audio L/R\n// in3 Mono 0/1, signal or number. 0 = stereo passes through, 1 = L + R to both outputs\n// in4 Mix 0/1/2/3, how L + R are combined:\n//   0 = 0 dB   sound on one side only, the other side silent: the sum is the same level\n//   1 = -3 dB  stereo, L and R different: they add up about +3 dB louder, so take 3 dB off\n//   2 = -4.5 dB full mix, centered and wide parts: halfway, the smallest error for both\n//   3 = -6 dB  dual mono, L = R: they add up exactly twice as loud, so halve it, never clips\n// out1/out2 the same mono signal on both sides when Mono is on\n// Mono on/off crossfades along a raised-cosine S-curve in exactly 10 ms, as br.utility.mute.\n// A Mix change glides over 10 ms on amplitude and lands exactly on its target, as br.utility.gain.\n\n// fade position: 0 = stereo, 1 = mono\nHistory pos(1);\n// mono sum gain, starts at the default -6 dB\nHistory gS(0.5);\n\n// read state first\np = pos;\ng = gS;\n\n// Mono on/off: S-curve crossfade\ngoal = clamp(in3, 0, 1);\ninc = 1 / mstosamps(10);\nif (p < goal) {\n    p = min(p + inc, goal);\n}\nelse if (p > goal) {\n    p = max(p - inc, goal);\n}\nw = 0.5 - 0.5 * cos(p * pi);\n\n// Mix: 0 / -3 / -4.5 / -6 dB. -3 = sqrt(0.5) and -6 = 0.5 exactly; -4.5 = 0.5^0.75, halfway between them\nm = clamp(floor(in4 + 0.5), 0, 3);\nmg = (m < 0.5) ? 1 : ((m < 1.5) ? sqrt(0.5) : ((m < 2.5) ? pow(0.5, 0.75) : 0.5));\nk = 1 - exp(-1 / max(1, mstosamps(10)));\ng = g + (mg - g) * k;\n// within -120 dB of the target: land on it\nif (abs(mg - g) < 0.000001) {\n    g = mg;\n}\n\nmono = (in1 + in2) * g;\nout1 = in1 + (mono - in1) * w;\nout2 = in2 + (mono - in2) * w;\n\n// write state last\npos = p;\ngS = g;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        70.0,
                                        645.0,
                                        560.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-o1",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        650.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Left Out (Signal) the mono sum when Mono is on\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-o2",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        265.0,
                                        650.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment \"Right Out (Signal) same as left when Mono is on\""
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-cb",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-cb",
                                        1
                                    ],
                                    "source": [
                                        "obj-2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-cb",
                                        2
                                    ],
                                    "source": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-cb",
                                        3
                                    ],
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-o1",
                                        0
                                    ],
                                    "source": [
                                        "obj-cb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-o2",
                                        0
                                    ],
                                    "source": [
                                        "obj-cb",
                                        1
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        11.333333333333329,
                        149.0,
                        255.0,
                        22.0
                    ],
                    "text": "gen~ @title br.utility.mono.2.2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-why",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        520.0,
                        66.0,
                        327.0,
                        127.0
                    ],
                    "text": "stereo to mono without a click. Mono on = L + R to both outputs; off = stereo passes through, with a 10 ms crossfade between them. Mix sets how much the sum is turned down, because sources add up differently: one side only = 0 dB, stereo (L and R different) = -3 dB, full mix = -4.5 dB, dual mono (L = R) = -6 dB. No State outlet here: whatever drives the core already knows the values. The .ui version reports its controls."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-out1",
                        0
                    ],
                    "source": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out2",
                        0
                    ],
                    "source": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        0
                    ],
                    "source": [
                        "obj-in1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        1
                    ],
                    "source": [
                        "obj-in2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        2
                    ],
                    "order": 1,
                    "source": [
                        "obj-in3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gen",
                        3
                    ],
                    "order": 1,
                    "source": [
                        "obj-in4",
                        0
                    ]
                }
            }
        ]
    }
}