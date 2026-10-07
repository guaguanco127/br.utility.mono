{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            900.0,
            360.0
        ],
        "bglocked": 0,
        "openinpresentation": 1,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 58.0,
        "description": "br.utility.mono.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
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
                        600.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.utility.mono.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in1",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left In (Signal)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right In (Signal)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in3",
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
                    ],
                    "comment": "Mono (Int) 0 = off, stereo passes through. 1 = on, L + R to both outputs. Sets the button. Default 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in4",
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
                    ],
                    "comment": "Mix (Int) how L + R are combined. 0 = 0 dB (sound on one side only), 1 = -3 dB (stereo, L and R different), 2 = -4.5 dB (full mix, centered and wide parts), 3 = -6 dB (dual mono, L = R). Sets the menu. Default 3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "outlet",
                    "id": "obj-out1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        180.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Out (Signal) the mono sum when Mono is on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "outlet",
                    "id": "obj-out2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        240.0,
                        180.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Out (Signal) same as left when Mono is on"
                }
            },
            {
                "box": {
                    "maxclass": "live.text",
                    "id": "obj-mono",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        60.0,
                        48.0,
                        20.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        5.0,
                        48.0,
                        20.0
                    ],
                    "text": "Stereo",
                    "texton": "Mono",
                    "varname": "Mono",
                    "annotation_name": "Mono",
                    "annotation": "0/1. On = L + R to both sides, off = stereo passes through. 10 ms crossfade. Default on",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mono",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mono",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.menu",
                    "id": "obj-mix",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "float"
                    ],
                    "patching_rect": [
                        240.0,
                        90.0,
                        48.0,
                        17.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        30.0,
                        48.0,
                        17.0
                    ],
                    "varname": "Mix",
                    "annotation_name": "Mix",
                    "annotation": "How L + R are combined: 0 dB = sound on one side only, -3 dB = stereo (L and R different), -4.5 dB = full mix (centered and wide parts), -6 dB = dual mono (L = R, never clips). Default -6 dB",
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "0 dB",
                                "-3 dB",
                                "-4.5 dB",
                                "-6 dB"
                            ],
                            "parameter_initial": [
                                3
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-core",
                    "text": "br.utility.mono.2.0",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        130.0,
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
                    "id": "obj-t1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        320.0,
                        55.0,
                        260.0,
                        75.0
                    ],
                    "text": "Mono button (live.text): lit = Mono, L + R on both sides; dark = Stereo, untouched. Mix menu (live.menu): how much the sum is turned down. Initial values in the inspector: Mono on, Mix -6 dB."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        320.0,
                        140.0,
                        260.0,
                        75.0
                    ],
                    "text": "[br.utility.mono.2.0] is the real object: open it to see the gen~ inside. This file only adds the controls, so you can also patch the core directly and switch Mono with a signal."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t3",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        235.0,
                        565.0,
                        75.0
                    ],
                    "text": "Why three Mix settings: L + R adds up differently depending on the source. Dual mono (the same sound on both sides) doubles = +6 dB, so -6 dB gives it back unchanged. Stereo (different sounds) adds up to about +3 dB, so -3 dB. A full mix is both at once, so -4.5 dB splits the difference. Sound on one side only (the other silent) adds nothing, so 0 dB. When in doubt use -6 dB: it can never clip."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t4",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        320.0,
                        565.0,
                        33.0
                    ],
                    "text": "Numbers into the right inlets move the button and the menu, and they drive the core, so the screen always shows what you hear."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.utility.mono.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.utility.mono.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        600.0,
                        60.0,
                        80.0,
                        70.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        80.0,
                        75.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-mono",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in4",
                        0
                    ],
                    "destination": [
                        "obj-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-mono",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-mix",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0,
        "openrect": [
            85.0,
            104.0,
            58.0,
            52.0
        ],
        "parameters": {
            "obj-mono": [
                "Mono",
                "Mono",
                0
            ],
            "obj-mix": [
                "Mix",
                "Mix",
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
        }
    }
}