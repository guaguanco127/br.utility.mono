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
            1160.0,
            640.0
        ],
        "description": "_br.utility.mono.example.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        630.0,
                        15.0,
                        470.0,
                        33.0
                    ],
                    "text": "_br.utility.mono.example.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 24.0,
                    "maxclass": "comment",
                    "id": "obj-title",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        33.0
                    ],
                    "text": "br.utility.mono"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        57.0,
                        560.0,
                        33.0
                    ],
                    "text": "Turns a stereo signal into mono: L + R to both sides, click-free. Mix sets how much the sum is turned down, because different sources add up to different levels."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        105.0,
                        560.0,
                        60.0
                    ],
                    "text": "Two files, same DSP inside:\nbr.utility.mono.2.0 = core, no UI (in: L, R, Mono, Mix)\nbr.utility.mono.ui.2.0 = the same with a Mono button and a Mix menu, for bpatchers\nUI and core have the same inlets and outlets, so either swaps in without rewiring.",
                    "linecount": 4
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n3",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        175.0,
                        560.0,
                        75.0
                    ],
                    "text": "A: pick a source, raise A's slider, and try each Mix setting while toggling Mono. The right setting keeps the level about the same in mono as in stereo: stereo source = -3 dB, dual mono = -6 dB, one side = 0 dB. With dual mono at 0 dB the sum is twice as loud (6 dB up) and can clip. On a full mix, -6 keeps the center steady, -3 keeps the wide parts, -4.5 splits the difference."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n4",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        260.0,
                        560.0,
                        33.0
                    ],
                    "text": "B: the core's Mono inlet takes a signal. A square wave switches B between stereo and mono once a second: the 10 ms crossfade keeps every switch click-free."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n5",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        310.0,
                        560.0,
                        20.0
                    ],
                    "text": "Numbers into the UI's inlets move its controls. Hover any inlet or outlet for its range and default."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n6",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        512.0,
                        573.0,
                        20.0
                    ],
                    "text": "Outputs start muted at -70 dB: turn on audio, then raise ONE slider slowly (A and B play the same source)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n7",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        550.0,
                        300.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "id": "obj-menu",
                    "items": [
                        "stereo (L drums, R Anton)",
                        ",",
                        "dual mono (drums both sides)",
                        ",",
                        "one side (drums L only)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        630.0,
                        105.0,
                        200.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-menuinit",
                    "text": "loadmess 0",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        105.0,
                        75.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-menulabel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        920.0,
                        105.0,
                        60.0,
                        20.0
                    ],
                    "text": "source"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            420.0,
                            260.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        60.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        90.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        120.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        120.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        150.0,
                                        70.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        150.0,
                                        70.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal) drum loop",
                                    "id": "src-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        290.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "comment",
                                    "id": "src-note",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15.0,
                                        15.0,
                                        520.0,
                                        33.0
                                    ],
                                    "text": "Left = drum loop. Right = Anton (stereo), the drum loop again (dual mono) or nothing (one side). Both files ship with Max. Each choice fades over 20 ms, so switching never clicks."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "inlet",
                                    "id": "src-in",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        420.0,
                                        60.0,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Source (Int) 0 stereo, 1 dual mono, 2 one side",
                                    "index": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-ti",
                                    "text": "t i i",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        420.0,
                                        100.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-eq0",
                                    "text": "== 0",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        420.0,
                                        130.0,
                                        44.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-eq1",
                                    "text": "== 1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        500.0,
                                        130.0,
                                        44.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "src-f0",
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        420.0,
                                        160.0,
                                        50.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "message",
                                    "id": "src-f1",
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        500.0,
                                        160.0,
                                        50.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-l0",
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        420.0,
                                        190.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-l1",
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        500.0,
                                        190.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-g0",
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        230.0,
                                        40.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-g1",
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        300.0,
                                        230.0,
                                        40.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "outlet",
                                    "id": "src-o2",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "index": 2,
                                    "patching_rect": [
                                        210.0,
                                        290.0,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Right Source (Signal) Anton, drum loop or nothing"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "src-t",
                                        0
                                    ],
                                    "source": [
                                        "src-lb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-p1",
                                        0
                                    ],
                                    "source": [
                                        "src-m1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-p2",
                                        0
                                    ],
                                    "source": [
                                        "src-m2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-o1",
                                        0
                                    ],
                                    "source": [
                                        "src-p1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-m1",
                                        0
                                    ],
                                    "source": [
                                        "src-t",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-m2",
                                        0
                                    ],
                                    "source": [
                                        "src-t",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-in",
                                        0
                                    ],
                                    "destination": [
                                        "src-ti",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-ti",
                                        1
                                    ],
                                    "destination": [
                                        "src-eq1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-ti",
                                        0
                                    ],
                                    "destination": [
                                        "src-eq0",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-eq0",
                                        0
                                    ],
                                    "destination": [
                                        "src-f0",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-eq1",
                                        0
                                    ],
                                    "destination": [
                                        "src-f1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-f0",
                                        0
                                    ],
                                    "destination": [
                                        "src-l0",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-f1",
                                        0
                                    ],
                                    "destination": [
                                        "src-l1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-p2",
                                        0
                                    ],
                                    "destination": [
                                        "src-g0",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-l0",
                                        0
                                    ],
                                    "destination": [
                                        "src-g0",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-p1",
                                        0
                                    ],
                                    "destination": [
                                        "src-g1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-l1",
                                        0
                                    ],
                                    "destination": [
                                        "src-g1",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-g0",
                                        0
                                    ],
                                    "destination": [
                                        "src-o2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-g1",
                                        0
                                    ],
                                    "destination": [
                                        "src-o2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        630.0,
                        135.0,
                        110.0,
                        22.0
                    ],
                    "text": "p mono-source"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-alabel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        630.0,
                        175.0,
                        220.0,
                        20.0
                    ],
                    "text": "A: br.utility.mono.ui.2.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.utility.mono.ui.2.0.maxpat",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        630.0,
                        205.0,
                        58.0,
                        52.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-blabel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        870.0,
                        175.0,
                        230.0,
                        20.0
                    ],
                    "text": "B: switches Mono on and off (Hz)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-rateinit",
                    "text": "loadmess 0.5",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        870.0,
                        200.0,
                        85.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "flonum",
                    "id": "obj-rate",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "minimum": 0.0,
                    "maximum": 10.0,
                    "parameter_enable": 0,
                    "patching_rect": [
                        870.0,
                        230.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-phasor",
                    "text": "phasor~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        870.0,
                        260.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-sq",
                    "text": "<~ 0.5",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        870.0,
                        290.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-sqnote",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        930.0,
                        290.0,
                        170.0,
                        20.0
                    ],
                    "text": "square: 1 = mono, 0 = stereo"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-b",
                    "text": "br.utility.mono.2.0",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        810.0,
                        340.0,
                        255.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-bnote",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        1075.0,
                        340.0,
                        60.0,
                        20.0
                    ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        630.0,
                        420.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        870.0,
                        420.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        700.0,
                        420.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dacnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        730.0,
                        420.0,
                        75.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        630.0,
                        580.0,
                        72.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-menuinit",
                        0
                    ],
                    "destination": [
                        "obj-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-menu",
                        0
                    ],
                    "destination": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        0
                    ],
                    "destination": [
                        "obj-a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        1
                    ],
                    "destination": [
                        "obj-a",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        1
                    ],
                    "destination": [
                        "obj-b",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rateinit",
                        0
                    ],
                    "destination": [
                        "obj-rate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rate",
                        0
                    ],
                    "destination": [
                        "obj-phasor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-phasor",
                        0
                    ],
                    "destination": [
                        "obj-sq",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-sq",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        0
                    ],
                    "destination": [
                        "obj-gaina",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        1
                    ],
                    "destination": [
                        "obj-gaina",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        0
                    ],
                    "destination": [
                        "obj-gainb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        1
                    ],
                    "destination": [
                        "obj-gainb",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gaina",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gaina",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gainb",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gainb",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-dactog",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-a::obj-mono": [
                "Mono",
                "Mono",
                0
            ],
            "obj-a::obj-mix": [
                "Mix",
                "Mix",
                0
            ],
            "obj-gaina": [
                "A out",
                "A",
                0
            ],
            "obj-gainb": [
                "B out",
                "B",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}