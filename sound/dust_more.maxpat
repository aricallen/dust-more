{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ -211.0, 1158.0, 1052.0, 938.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ -1851.0, 156.0, 542.0, 471.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 261.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 34.0, 78.0, 1852.0, 968.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-34",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Compressor.maxpat",
													"numinlets" : 2,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 291.0, 892.000061, 339.0, 116.0 ],
													"varname" : "bp.Compressor",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-33",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.ADSR.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 851.0, 672.333313, 234.0, 116.0 ],
													"presentation_rect" : [ 851.0, 671.0, 0.0, 0.0 ],
													"varname" : "bp.ADSR[3]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-32",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.ADSR.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 571.0, 672.333313, 234.0, 116.0 ],
													"presentation_rect" : [ 571.0, 675.0, 0.0, 0.0 ],
													"varname" : "bp.ADSR[2]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-31",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.ADSR.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 308.333344, 672.333313, 234.0, 116.0 ],
													"presentation_rect" : [ 307.0, 675.0, 0.0, 0.0 ],
													"varname" : "bp.ADSR[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-24",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Wavetable.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 253.0, 483.0, 381.0, 116.0 ],
													"presentation_rect" : [ 253.0, 483.0, 0.0, 0.0 ],
													"varname" : "bp.Wavetable[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-22",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Wavetable.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 26.0, 358.0, 381.0, 116.0 ],
													"varname" : "bp.Wavetable",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-17",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.ADSR.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 54.999989, 672.333313, 234.0, 116.0 ],
													"varname" : "bp.ADSR",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-15",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Poly4.maxpat",
													"numinlets" : 1,
													"numoutlets" : 4,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 26.0, 52.0, 108.0, 116.0 ],
													"varname" : "bp.Poly4",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-28",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 721.0, 182.0, 163.0, 116.0 ],
													"varname" : "bp.MIDI to Signal[2]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-29",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 487.0, 182.0, 163.0, 116.0 ],
													"varname" : "bp.MIDI to Signal[3]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-27",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 253.0, 182.0, 163.0, 116.0 ],
													"varname" : "bp.MIDI to Signal[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 867.0, 134.0, 151.0, 22.0 ],
													"style" : "",
													"text" : "route /dust_more/attention"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 867.0, 95.0, 99.0, 22.0 ],
													"style" : "",
													"text" : "udpreceive 9001"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-4",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Reverb 1.maxpat",
													"numinlets" : 4,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 16.333332, 1021.333313, 190.0, 116.0 ],
													"varname" : "bp.Reverb 1",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-23",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.VCA.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 16.333332, 885.0, 113.0, 116.0 ],
													"varname" : "bp.VCA",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-5",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Stereo.maxpat",
													"numinlets" : 2,
													"numoutlets" : 0,
													"offset" : [ 0.0, 0.0 ],
													"patching_rect" : [ 13.333332, 1165.0, 148.0, 116.0 ],
													"varname" : "bp.Stereo",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-2",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 26.0, 182.0, 163.0, 116.0 ],
													"varname" : "bp.MIDI to Signal",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 26.0, 2.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-7",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Keyboard.maxpat",
													"numinlets" : 0,
													"numoutlets" : 4,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 339.5, 2.0, 506.0, 116.0 ],
													"varname" : "bp.Keyboard[1]",
													"viewvisibility" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-15", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-15", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-28", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-29", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "Manuel1",
												"default" : 												{
													"fontname" : [ "Arial Bold" ],
													"fontface" : [ 0 ],
													"fontsize" : [ 10.0 ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 58.0, 323.0, 134.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "patcher sparkles_synth",
									"varname" : "bass_synth"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 265.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 103.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 13.0, 99.0, 22.0 ],
									"style" : "",
									"text" : "udpreceive 9001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 178.0, 55.0, 131.0, 22.0 ],
									"style" : "",
									"text" : "route /dust_more/reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 171.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 171.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "1598"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 205.0, 171.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 58.0, 103.0, 103.0, 22.0 ],
									"style" : "",
									"text" : "unpack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 58.0, 177.0, 103.0, 22.0 ],
									"style" : "",
									"text" : "makenote 0 1000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 42.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"order" : 1,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 1,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 393.0, 254.0, 99.0, 22.0 ],
					"presentation_rect" : [ 379.0, 252.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "patcher sparkles",
					"varname" : "bass[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.5, 167.0, 67.0, 22.0 ],
					"presentation_rect" : [ 454.5, 163.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "r keyboard"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 472.5, 167.0, 24.0, 24.0 ],
					"presentation_rect" : [ 415.5, 163.0, 0.0, 0.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 472.5, 203.0, 58.0, 22.0 ],
					"presentation_rect" : [ 415.5, 199.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.5, 167.0, 67.0, 22.0 ],
					"presentation_rect" : [ 261.0, 166.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "r keyboard"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 278.5, 167.0, 24.0, 24.0 ],
					"presentation_rect" : [ 222.0, 166.0, 0.0, 0.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 278.5, 203.0, 58.0, 22.0 ],
					"presentation_rect" : [ 222.0, 202.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 129.0, 167.0, 67.0, 22.0 ],
					"style" : "",
					"text" : "r keyboard"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 167.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 203.0, 58.0, 22.0 ],
					"style" : "",
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 637.5, 191.0, 69.0, 22.0 ],
					"style" : "",
					"text" : "s keyboard"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 572.0, 78.0, 55.0, 23.0 ],
					"style" : "",
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"items" : [ "AU DLS Synth 1", ",", "IAC Driver DustTunnel", ",", "from Max 1", ",", "from Max 2", ",", "USB Axiom 49 Port 1" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 572.0, 109.0, 150.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 608.0, 46.0, 77.0, 23.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 637.5, 152.0, 45.0, 23.0 ],
					"style" : "",
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ -1851.0, 156.0, 542.0, 471.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 261.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ -1519.0, 56.0, 1212.0, 968.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-15",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Poly4.maxpat",
													"numinlets" : 1,
													"numoutlets" : 4,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 26.0, 52.0, 108.0, 116.0 ],
													"varname" : "bp.Poly4",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-28",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 721.0, 182.0, 163.0, 116.0 ],
													"presentation_rect" : [ 713.0, 183.0, 0.0, 0.0 ],
													"varname" : "bp.MIDI to Signal[2]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-29",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 487.0, 182.0, 163.0, 116.0 ],
													"presentation_rect" : [ 491.0, 183.0, 0.0, 0.0 ],
													"varname" : "bp.MIDI to Signal[3]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-27",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 253.0, 182.0, 163.0, 116.0 ],
													"presentation_rect" : [ 245.0, 185.0, 0.0, 0.0 ],
													"varname" : "bp.MIDI to Signal[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-26",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.FM.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 721.0, 343.0, 211.0, 116.0 ],
													"presentation_rect" : [ 721.0, 282.0, 0.0, 0.0 ],
													"varname" : "bp.FM[3]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-25",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.FM.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 487.0, 343.0, 211.0, 116.0 ],
													"presentation_rect" : [ 487.0, 286.0, 0.0, 0.0 ],
													"varname" : "bp.FM[2]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-24",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.FM.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 253.0, 343.0, 211.0, 116.0 ],
													"presentation_rect" : [ 253.0, 285.0, 0.0, 0.0 ],
													"varname" : "bp.FM[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-18",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.FM.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 26.0, 343.0, 211.0, 116.0 ],
													"varname" : "bp.FM",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-9",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Chorus.maxpat",
													"numinlets" : 1,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 236.0, 808.0, 187.0, 116.0 ],
													"varname" : "bp.Chorus",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-17",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.VCA.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 165.0, 651.0, 113.0, 116.0 ],
													"varname" : "bp.VCA[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-16",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MMF.maxpat",
													"numinlets" : 5,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 19.0, 491.0, 427.0, 116.0 ],
													"varname" : "bp.MMF",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 867.0, 134.0, 151.0, 22.0 ],
													"style" : "",
													"text" : "route /dust_more/attention"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 867.0, 95.0, 99.0, 22.0 ],
													"style" : "",
													"text" : "udpreceive 9001"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-4",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Reverb 1.maxpat",
													"numinlets" : 4,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 23.0, 808.0, 190.0, 116.0 ],
													"varname" : "bp.Reverb 1",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-3",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.ADSR2.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 471.0, 497.0, 341.0, 116.0 ],
													"varname" : "bp.ADSR2",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-23",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.VCA.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 19.0, 651.0, 113.0, 116.0 ],
													"varname" : "bp.VCA",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-5",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Stereo.maxpat",
													"numinlets" : 2,
													"numoutlets" : 0,
													"offset" : [ 0.0, 0.0 ],
													"patching_rect" : [ 23.0, 953.0, 148.0, 116.0 ],
													"varname" : "bp.Stereo",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-2",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 26.0, 182.0, 163.0, 116.0 ],
													"varname" : "bp.MIDI to Signal",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 2.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-7",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Keyboard.maxpat",
													"numinlets" : 0,
													"numoutlets" : 4,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 339.5, 2.0, 506.0, 116.0 ],
													"varname" : "bp.Keyboard[1]",
													"viewvisibility" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-15", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-15", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"order" : 1,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-28", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-29", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 1 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 2,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "Manuel1",
												"default" : 												{
													"fontname" : [ "Arial Bold" ],
													"fontface" : [ 0 ],
													"fontsize" : [ 10.0 ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 58.0, 323.0, 115.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "patcher pads_synth",
									"varname" : "bass_synth"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 191.0, 299.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 103.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 13.0, 99.0, 22.0 ],
									"style" : "",
									"text" : "udpreceive 9001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 178.0, 55.0, 131.0, 22.0 ],
									"style" : "",
									"text" : "route /dust_more/reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 216.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 216.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "1598"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 205.0, 216.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 58.0, 103.0, 103.0, 22.0 ],
									"style" : "",
									"text" : "unpack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 58.0, 177.0, 103.0, 22.0 ],
									"style" : "",
									"text" : "makenote 0 1000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 42.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"order" : 1,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 1,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 218.0, 254.0, 80.0, 22.0 ],
					"presentation_rect" : [ 120.0, 111.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "patcher pads",
					"varname" : "bass[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 398.0, 431.0, 99.0, 22.0 ],
					"style" : "",
					"text" : "udpreceive 9001"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 733.0, 512.0, 208.0, 22.0 ],
					"style" : "",
					"text" : "route /muse/elements/theta_absolute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 497.0, 512.0, 221.0, 22.0 ],
					"style" : "",
					"text" : "route /muse/elements/gamma_absolute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 264.0, 512.0, 205.0, 22.0 ],
					"style" : "",
					"text" : "route /muse/elements/beta_absolute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ -823.0, 1518.0, 636.0, 938.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 308.0, 535.0, 64.0, 22.0 ],
									"style" : "",
									"text" : "print reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.0, 535.0, 47.0, 22.0 ],
									"style" : "",
									"text" : "0 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 241.0, 492.0, 131.0, 22.0 ],
									"style" : "",
									"text" : "route /dust_more/reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.0, 447.0, 99.0, 22.0 ],
									"style" : "",
									"text" : "udpreceive 9001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 289.0, 171.0, 89.0, 22.0 ],
									"style" : "",
									"text" : "print new_max"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 178.0, 171.0, 85.0, 22.0 ],
									"style" : "",
									"text" : "print new_min"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 193.0, 110.0, 195.0, 22.0 ],
									"style" : "",
									"text" : "route /alpha_absolute/update_max"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 77.199997, 70.0, 192.0, 22.0 ],
									"style" : "",
									"text" : "route /alpha_absolute/update_min"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 193.0, 11.0, 99.0, 22.0 ],
									"style" : "",
									"text" : "udpreceive 9001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 171.0, 96.0, 22.0 ],
									"style" : "",
									"text" : "scale -1. 1. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-42",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 58.0, 791.0, 64.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 58.0, 400.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 447.0, 147.0, 22.0 ],
									"style" : "",
									"text" : "0.174157, 0.16473 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.666664, 305.0, 29.5, 22.0 ],
									"style" : "",
									"text" : ","
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 352.0, 93.0, 22.0 ],
									"style" : "",
									"text" : "pack 0. \\, 0. 250"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-22",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 114.0, 257.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-21",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 58.0, 257.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 58.0, 492.0, 101.0, 22.0 ],
									"style" : "",
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 58.0, 219.0, 115.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "number_switch.js",
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "js number_switch.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 58.0, 541.0, 74.0, 229.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 7.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 30.0, 557.0, 83.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "patcher alpha",
					"varname" : "alpha"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 512.0, 211.0, 22.0 ],
					"style" : "",
					"text" : "route /muse/elements/alpha_absolute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ -1851.0, 156.0, 542.0, 471.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 113.0, 262.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 34.0, 78.0, 1212.0, 968.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-17",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.VCA.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 476.0, 377.0, 113.0, 116.0 ],
													"varname" : "bp.VCA[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-16",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MMF.maxpat",
													"numinlets" : 5,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 26.0, 377.0, 427.0, 116.0 ],
													"varname" : "bp.MMF",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 867.0, 134.0, 151.0, 22.0 ],
													"style" : "",
													"text" : "route /dust_more/attention"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 867.0, 95.0, 99.0, 22.0 ],
													"style" : "",
													"text" : "udpreceive 9001"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-8",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Cloud.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 26.0, 221.0, 280.0, 116.0 ],
													"varname" : "bp.Cloud",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-4",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Reverb 1.maxpat",
													"numinlets" : 4,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 26.0, 674.0, 190.0, 116.0 ],
													"varname" : "bp.Reverb 1",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-3",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.ADSR2.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 322.0, 221.0, 341.0, 116.0 ],
													"varname" : "bp.ADSR2",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-23",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.VCA.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 26.0, 531.0, 113.0, 116.0 ],
													"varname" : "bp.VCA",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-5",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Stereo.maxpat",
													"numinlets" : 2,
													"numoutlets" : 0,
													"offset" : [ 0.0, 0.0 ],
													"patching_rect" : [ 26.0, 819.0, 148.0, 116.0 ],
													"varname" : "bp.Stereo",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-2",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.MIDI to Signal.maxpat",
													"numinlets" : 1,
													"numoutlets" : 5,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 26.0, 44.0, 163.0, 116.0 ],
													"varname" : "bp.MIDI to Signal",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 2.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"extract" : 1,
													"id" : "obj-7",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "bp.Keyboard.maxpat",
													"numinlets" : 0,
													"numoutlets" : 4,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 330.0, 44.0, 506.0, 116.0 ],
													"varname" : "bp.Keyboard[1]",
													"viewvisibility" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 1 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 2,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "Manuel1",
												"default" : 												{
													"fontname" : [ "Arial Bold" ],
													"fontface" : [ 0 ],
													"fontsize" : [ 10.0 ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 58.0, 322.0, 115.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "patcher bass_synth",
									"varname" : "bass_synth"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 103.0, 37.0, 22.0 ],
									"style" : "",
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 13.0, 99.0, 22.0 ],
									"style" : "",
									"text" : "udpreceive 9001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 178.0, 55.0, 131.0, 22.0 ],
									"style" : "",
									"text" : "route /dust_more/reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 176.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 176.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "1598"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 205.0, 176.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 58.0, 103.0, 103.0, 22.0 ],
									"style" : "",
									"text" : "unpack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 58.0, 177.0, 103.0, 22.0 ],
									"style" : "",
									"text" : "makenote 0 1000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 42.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"order" : 1,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 1,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 30.0, 254.0, 79.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "patcher bass",
					"varname" : "bass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 393.0, 134.0, 149.0, 22.0 ],
					"style" : "",
					"text" : "route /dust_more/sparkles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 218.0, 134.0, 131.0, 22.0 ],
					"style" : "",
					"text" : "route /dust_more/pads"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 134.0, 130.0, 22.0 ],
					"style" : "",
					"text" : "route /dust_more/bass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.0, 24.0, 99.0, 22.0 ],
					"style" : "",
					"text" : "udpreceive 9001"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 3,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 2,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-6::obj-24::obj-18::obj-80" : [ "Ratio", "Ratio", 0 ],
			"obj-6::obj-24::obj-24::obj-20" : [ "mute[3]", "mute", 0 ],
			"obj-38::obj-24::obj-7::obj-5" : [ "Octave[2]", "Octave", 0 ],
			"obj-38::obj-24::obj-24::obj-25" : [ "WaveCV[1]", "CV", 0 ],
			"obj-5::obj-24::obj-7::obj-12" : [ "KeyboardMode", "KeyboardMode", 0 ],
			"obj-6::obj-24::obj-16::obj-51" : [ "CV2[2]", "CV2", 0 ],
			"obj-6::obj-24::obj-2::obj-28" : [ "Bend[1]", "Bend", 0 ],
			"obj-38::obj-24::obj-23::obj-55" : [ "Bypass[5]", "Bypass", 0 ],
			"obj-38::obj-24::obj-22::obj-81" : [ "Bank", "Bank", 0 ],
			"obj-5::obj-24::obj-8::obj-46" : [ "Offset[1]", "Offset", 0 ],
			"obj-38::obj-24::obj-29::obj-69" : [ "1voctled[6]", "1voctled", 0 ],
			"obj-38::obj-24::obj-5::obj-55" : [ "DSP[2]", "DSP", 0 ],
			"obj-38::obj-24::obj-24::obj-3" : [ "Wave[1]", "Wave", 0 ],
			"obj-38::obj-24::obj-34::obj-44" : [ "Input", "Input", 0 ],
			"obj-5::obj-24::obj-16::obj-11" : [ "Res", "Res", 0 ],
			"obj-6::obj-24::obj-16::obj-95" : [ "ResCV[1]", "CV", 0 ],
			"obj-6::obj-24::obj-27::obj-20" : [ "ModWheelActivityLED[2]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-32::obj-32" : [ "Sustain[7]", "Sustain", 0 ],
			"obj-6::obj-24::obj-7::obj-5" : [ "Octave[1]", "Octave", 0 ],
			"obj-6::obj-24::obj-9::obj-23" : [ "bypass[2]", "bypass", 0 ],
			"obj-6::obj-24::obj-29::obj-28" : [ "Bend[4]", "Bend", 0 ],
			"obj-38::obj-24::obj-15::obj-34" : [ "output_led_3[1]", "output_led_3", 0 ],
			"obj-38::obj-24::obj-24::obj-12" : [ "Mute[8]", "Mute", 0 ],
			"obj-5::obj-24::obj-16::obj-20" : [ "Freq", "Freq", 0 ],
			"obj-6::obj-24::obj-4::obj-25" : [ "Cutoff[1]", "Cutoff", 0 ],
			"obj-6::obj-24::obj-23::obj-33" : [ "Quadrants[3]", "Quadrants", 0 ],
			"obj-6::obj-24::obj-9::obj-28" : [ "Center[1]", "Center", 0 ],
			"obj-6::obj-24::obj-29::obj-20" : [ "ModWheelActivityLED[4]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-7::obj-68" : [ "RepeatInterval[2]", "RepeatInterval", 0 ],
			"obj-38::obj-24::obj-17::obj-29" : [ "Decay[4]", "Decay", 0 ],
			"obj-38::obj-24::obj-32::obj-1" : [ "Attack[7]", "Attack", 0 ],
			"obj-6::obj-24::obj-3::obj-32" : [ "Sustain[1]", "Sustain", 0 ],
			"obj-6::obj-24::obj-15::obj-29" : [ "bypass[3]", "bypass", 0 ],
			"obj-38::obj-24::obj-4::obj-47" : [ "bypass[6]", "bypass", 0 ],
			"obj-38::obj-24::obj-23::obj-33" : [ "Quadrants[5]", "Quadrants", 0 ],
			"obj-38::obj-24::obj-31::obj-31" : [ "Release[6]", "Release", 0 ],
			"obj-6::obj-24::obj-25::obj-20" : [ "mute[4]", "mute", 0 ],
			"obj-38::obj-24::obj-4::obj-1" : [ "Time[2]", "Time", 0 ],
			"obj-38::obj-24::obj-17::obj-1" : [ "Attack[4]", "Attack", 0 ],
			"obj-38::obj-24::obj-22::obj-25" : [ "WaveCV", "CV", 0 ],
			"obj-38::obj-24::obj-33::obj-31" : [ "Release[8]", "Release", 0 ],
			"obj-5::obj-24::obj-8::obj-106" : [ "CV3[1]", "CV3", 0 ],
			"obj-5::obj-24::obj-5::obj-55" : [ "DSP", "DSP", 0 ],
			"obj-5::obj-24::obj-3::obj-29" : [ "Decay", "Decay", 0 ],
			"obj-6::obj-24::obj-26::obj-56" : [ "Depth[3]", "Depth", 0 ],
			"obj-6::obj-24::obj-28::obj-69" : [ "1voctled[3]", "1voctled", 0 ],
			"obj-38::obj-24::obj-4::obj-28" : [ "Mix[2]", "Mix", 0 ],
			"obj-38::obj-24::obj-34::obj-2" : [ "Output", "Output", 0 ],
			"obj-38::obj-24::obj-17::obj-15" : [ "Legato", "Legato", 0 ],
			"obj-5::obj-24::obj-2::obj-28" : [ "Bend", "Bend", 0 ],
			"obj-5::obj-24::obj-16::obj-95" : [ "ResCV", "CV", 0 ],
			"obj-6::obj-24::obj-7::obj-12" : [ "KeyboardMode[1]", "KeyboardMode", 0 ],
			"obj-38::obj-24::obj-15::obj-35" : [ "output_led_4[1]", "output_led_4", 0 ],
			"obj-38::obj-24::obj-33::obj-15" : [ "Legato[3]", "Legato", 0 ],
			"obj-5::obj-24::obj-3::obj-31" : [ "Release", "Release", 0 ],
			"obj-6::obj-24::obj-3::obj-45" : [ "release curve[1]", "release curve", 0 ],
			"obj-6::obj-24::obj-5::obj-22" : [ "Mute[4]", "Mute", 0 ],
			"obj-6::obj-24::obj-2::obj-20" : [ "ModWheelActivityLED[1]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-17::obj-32" : [ "Sustain[4]", "Sustain", 0 ],
			"obj-5::obj-24::obj-23::obj-55" : [ "Bypass", "Bypass", 0 ],
			"obj-6::obj-24::obj-16::obj-22" : [ "TimeMode[2]", "TimeMode", 1 ],
			"obj-6::obj-24::obj-4::obj-47" : [ "bypass[1]", "bypass", 0 ],
			"obj-6::obj-24::obj-7::obj-15::obj-2" : [ "pastebang[1]", "pastebang", 0 ],
			"obj-6::obj-24::obj-18::obj-91" : [ "Offset[3]", "Offset", 0 ],
			"obj-5::obj-24::obj-7::obj-15::obj-2" : [ "pastebang", "pastebang", 0 ],
			"obj-5::obj-24::obj-16::obj-23" : [ "Offset", "Offset", 0 ],
			"obj-38::obj-24::obj-2::obj-69" : [ "1voctled[8]", "1voctled", 0 ],
			"obj-6::obj-24::obj-16::obj-38" : [ "FilterType[1]", "FilterType", 0 ],
			"obj-6::obj-24::obj-7::obj-68" : [ "RepeatInterval[1]", "RepeatInterval", 0 ],
			"obj-5::obj-24::obj-3::obj-2" : [ "Attack", "Attack", 0 ],
			"obj-5::obj-24::obj-4::obj-1" : [ "Time", "Time", 0 ],
			"obj-38::obj-24::obj-32::obj-20" : [ "Mute[12]", "Mute", 0 ],
			"obj-5::obj-24::obj-17::obj-55" : [ "Bypass[1]", "Bypass", 0 ],
			"obj-6::obj-24::obj-4::obj-1" : [ "Time[1]", "Time", 0 ],
			"obj-6::obj-24::obj-26::obj-80" : [ "Ratio[3]", "Ratio", 0 ],
			"obj-6::obj-24::obj-26::obj-20" : [ "mute[5]", "mute", 0 ],
			"obj-38::obj-24::obj-29::obj-28" : [ "Bend[6]", "Bend", 0 ],
			"obj-38::obj-24::obj-34::obj-52" : [ "Threshold", "Threshold", 0 ],
			"obj-5::obj-24::obj-7::obj-5" : [ "Octave", "Octave", 0 ],
			"obj-6::obj-24::obj-16::obj-63" : [ "CV3[2]", "CV3", 0 ],
			"obj-6::obj-24::obj-15::obj-33" : [ "output_led_2", "output_led_2", 0 ],
			"obj-38::obj-24::obj-34::obj-78" : [ "Ratio[7]", "Ratio", 0 ],
			"obj-5::obj-24::obj-5::obj-56" : [ "OutputChannel", "OutputChannel", 0 ],
			"obj-5::obj-24::obj-16::obj-51" : [ "CV2[1]", "CV2", 0 ],
			"obj-6::obj-24::obj-4::obj-28" : [ "Mix[1]", "Mix", 0 ],
			"obj-6::obj-24::obj-3::obj-29" : [ "Decay[1]", "Decay", 0 ],
			"obj-6::obj-24::obj-25::obj-56" : [ "Depth[2]", "Depth", 0 ],
			"obj-6::obj-24::obj-27::obj-69" : [ "1voctled[2]", "1voctled", 0 ],
			"obj-38::obj-24::obj-24::obj-80" : [ "Ratio[6]", "Ratio", 0 ],
			"obj-38::obj-24::obj-24::obj-100" : [ "Offset[11]", "Offset", 0 ],
			"obj-5::obj-24::obj-3::obj-26" : [ "mute", "mute", 0 ],
			"obj-5::obj-24::obj-4::obj-28" : [ "Mix", "Mix", 0 ],
			"obj-5::obj-24::obj-8::obj-24" : [ "Freq[2]", "Freq", 0 ],
			"obj-5::obj-24::obj-2::obj-20" : [ "ModWheelActivityLED", "ModWheelActivityLED", 0 ],
			"obj-6::obj-24::obj-16::obj-55" : [ "power[1]", "power", 0 ],
			"obj-6::obj-24::obj-5::obj-52" : [ "Level[1]", "Level", 0 ],
			"obj-38::obj-24::obj-31::obj-20" : [ "Mute[11]", "Mute", 0 ],
			"obj-38::obj-24::obj-32::obj-15" : [ "Legato[2]", "Legato", 0 ],
			"obj-5::obj-24::obj-3::obj-32" : [ "Sustain", "Sustain", 0 ],
			"obj-38::obj-24::obj-5::obj-22" : [ "Mute[5]", "Mute", 0 ],
			"obj-5::obj-24::obj-23::obj-33" : [ "Quadrants", "Quadrants", 0 ],
			"obj-5::obj-24::obj-8::obj-45" : [ "TimeMode[1]", "TimeMode", 1 ],
			"obj-5::obj-24::obj-16::obj-55" : [ "power", "power", 0 ],
			"obj-6::obj-24::obj-5::obj-56" : [ "OutputChannel[1]", "OutputChannel", 0 ],
			"obj-38::obj-24::obj-27::obj-20" : [ "ModWheelActivityLED[7]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-22::obj-100" : [ "Offset[10]", "Offset", 0 ],
			"obj-38::obj-24::obj-24::obj-110" : [ "Wavetable[1]", "Wavetable", 0 ],
			"obj-38::obj-24::obj-32::obj-31" : [ "Release[7]", "Release", 0 ],
			"obj-38::obj-24::obj-34::obj-12" : [ "Bypass[6]", "Bypass", 0 ],
			"obj-38::obj-24::obj-5::obj-56" : [ "OutputChannel[2]", "OutputChannel", 0 ],
			"obj-5::obj-24::obj-4::obj-25" : [ "Cutoff", "Cutoff", 0 ],
			"obj-6::obj-24::obj-3::obj-47" : [ "attack curve[1]", "attack curve", 0 ],
			"obj-38::obj-24::obj-24::obj-81" : [ "Bank[1]", "Bank", 0 ],
			"obj-5::obj-24::obj-8::obj-51" : [ "Fatness", "Fatness", 0 ],
			"obj-5::obj-24::obj-8::obj-107" : [ "Linear", "Linear", 0 ],
			"obj-5::obj-24::obj-17::obj-80" : [ "Response[1]", "Response", 0 ],
			"obj-6::obj-24::obj-9::obj-2" : [ "Rate", "Rate", 0 ],
			"obj-6::obj-24::obj-15::obj-22" : [ "DecayCV", "CV", 0 ],
			"obj-38::obj-24::obj-15::obj-22" : [ "output_led_1", "output_led_1", 0 ],
			"obj-38::obj-24::obj-31::obj-32" : [ "Sustain[6]", "Sustain", 0 ],
			"obj-38::obj-24::obj-34::obj-35" : [ "slider[2]", "slider[2]", 0 ],
			"obj-6::obj-24::obj-26::obj-86" : [ "Amt[3]", "Amt", 0 ],
			"obj-6::obj-24::obj-15::obj-3" : [ "input_led", "input_led", 0 ],
			"obj-38::obj-24::obj-15::obj-3" : [ "input_led[1]", "input_led", 0 ],
			"obj-38::obj-24::obj-4::obj-26" : [ "Reflections[2]", "Reflections", 0 ],
			"obj-38::obj-24::obj-7::obj-15::obj-2" : [ "pastebang[2]", "pastebang", 0 ],
			"obj-5::obj-24::obj-5::obj-22" : [ "Mute[2]", "Mute", 0 ],
			"obj-5::obj-24::obj-4::obj-47" : [ "bypass", "bypass", 0 ],
			"obj-6::obj-24::obj-3::obj-26" : [ "mute[1]", "mute", 0 ],
			"obj-6::obj-24::obj-3::obj-2" : [ "Attack[1]", "Attack", 0 ],
			"obj-6::obj-24::obj-18::obj-56" : [ "Depth", "Depth", 0 ],
			"obj-6::obj-24::obj-17::obj-55" : [ "Bypass[2]", "Bypass", 0 ],
			"obj-6::obj-24::obj-25::obj-80" : [ "Ratio[2]", "Ratio", 0 ],
			"obj-6::obj-24::obj-28::obj-28" : [ "Bend[3]", "Bend", 0 ],
			"obj-6::obj-24::obj-15::obj-34" : [ "output_led_3", "output_led_3", 0 ],
			"obj-38::obj-24::obj-24::obj-154" : [ "CV2[6]", "CV2", 0 ],
			"obj-5::obj-24::obj-7::obj-68" : [ "RepeatInterval", "RepeatInterval", 0 ],
			"obj-6::obj-24::obj-2::obj-69" : [ "1voctled[1]", "1voctled", 0 ],
			"obj-6::obj-24::obj-24::obj-56" : [ "Depth[1]", "Depth", 0 ],
			"obj-6::obj-24::obj-26::obj-91" : [ "Offset[6]", "Offset", 0 ],
			"obj-38::obj-24::obj-33::obj-1" : [ "Attack[8]", "Attack", 0 ],
			"obj-5::obj-24::obj-5::obj-52" : [ "Level", "Level", 0 ],
			"obj-6::obj-24::obj-16::obj-20" : [ "Freq[3]", "Freq", 0 ],
			"obj-38::obj-24::obj-29::obj-20" : [ "ModWheelActivityLED[6]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-27::obj-69" : [ "1voctled[7]", "1voctled", 0 ],
			"obj-38::obj-24::obj-5::obj-52" : [ "Level[2]", "Level", 0 ],
			"obj-38::obj-24::obj-31::obj-15" : [ "Legato[1]", "Legato", 0 ],
			"obj-5::obj-24::obj-3::obj-47" : [ "attack curve", "attack curve", 0 ],
			"obj-5::obj-24::obj-16::obj-38" : [ "FilterType", "FilterType", 0 ],
			"obj-38::obj-24::obj-17::obj-20" : [ "Mute[6]", "Mute", 0 ],
			"obj-38::obj-24::obj-22::obj-80" : [ "BankCV", "CV", 0 ],
			"obj-5::obj-24::obj-23::obj-80" : [ "Response", "Response", 0 ],
			"obj-38::obj-24::obj-28::obj-69" : [ "1voctled[5]", "1voctled", 0 ],
			"obj-38::obj-24::obj-17::obj-31" : [ "Release[4]", "Release", 0 ],
			"obj-5::obj-24::obj-4::obj-26" : [ "Reflections", "Reflections", 0 ],
			"obj-5::obj-24::obj-8::obj-129" : [ "CV2", "CV2", 0 ],
			"obj-5::obj-24::obj-17::obj-33" : [ "Quadrants[1]", "Quadrants", 0 ],
			"obj-38::obj-24::obj-22::obj-3" : [ "Wave", "Wave", 0 ],
			"obj-38::obj-24::obj-34::obj-47" : [ "Release[9]", "Release", 0 ],
			"obj-5::obj-24::obj-8::obj-331" : [ "WaveformCloud", "Waveform", 0 ],
			"obj-5::obj-24::obj-8::obj-20" : [ "Mute", "Mute", 0 ],
			"obj-6::obj-24::obj-17::obj-80" : [ "Response[2]", "Response", 0 ],
			"obj-6::obj-24::obj-9::obj-3" : [ "Regen[1]", "Regen", 0 ],
			"obj-38::obj-24::obj-33::obj-20" : [ "Mute[13]", "Mute", 0 ],
			"obj-38::obj-24::obj-34::obj-34" : [ "slider[3]", "slider[3]", 0 ],
			"obj-5::obj-24::obj-2::obj-69" : [ "1voctled", "1voctled", 0 ],
			"obj-6::obj-24::obj-16::obj-11" : [ "Res[1]", "Res", 0 ],
			"obj-6::obj-24::obj-4::obj-26" : [ "Reflections[1]", "Reflections", 0 ],
			"obj-6::obj-24::obj-25::obj-86" : [ "Amt[2]", "Amt", 0 ],
			"obj-38::obj-24::obj-33::obj-32" : [ "Sustain[8]", "Sustain", 0 ],
			"obj-38::obj-24::obj-34::obj-28" : [ "Attack[9]", "Attack", 0 ],
			"obj-6::obj-24::obj-3::obj-31" : [ "Release[1]", "Release", 0 ],
			"obj-6::obj-24::obj-18::obj-20" : [ "mute[2]", "mute", 0 ],
			"obj-6::obj-24::obj-15::obj-35" : [ "output_led_4", "output_led_4", 0 ],
			"obj-6::obj-24::obj-23::obj-55" : [ "Bypass[3]", "Bypass", 0 ],
			"obj-6::obj-24::obj-24::obj-80" : [ "Ratio[1]", "Ratio", 0 ],
			"obj-6::obj-24::obj-27::obj-28" : [ "Bend[2]", "Bend", 0 ],
			"obj-38::obj-24::obj-31::obj-29" : [ "Decay[6]", "Decay", 0 ],
			"obj-6::obj-24::obj-5::obj-55" : [ "DSP[1]", "DSP", 0 ],
			"obj-6::obj-24::obj-18::obj-86" : [ "Amt", "Amt", 0 ],
			"obj-38::obj-24::obj-31::obj-1" : [ "Attack[6]", "Attack", 0 ],
			"obj-5::obj-24::obj-3::obj-45" : [ "release curve", "release curve", 0 ],
			"obj-38::obj-24::obj-22::obj-110" : [ "Wavetable", "Wavetable", 0 ],
			"obj-38::obj-24::obj-34::obj-15::obj-2" : [ "pastebang[3]", "pastebang", 0 ],
			"obj-5::obj-24::obj-16::obj-54" : [ "CV1", "CV1", 0 ],
			"obj-6::obj-24::obj-25::obj-91" : [ "Offset[5]", "Offset", 0 ],
			"obj-38::obj-24::obj-27::obj-28" : [ "Bend[7]", "Bend", 0 ],
			"obj-6::obj-24::obj-28::obj-20" : [ "ModWheelActivityLED[3]", "ModWheelActivityLED", 0 ],
			"obj-5::obj-24::obj-3::obj-46" : [ "decay curve", "decay curve", 0 ],
			"obj-38::obj-24::obj-15::obj-29" : [ "bypass[4]", "bypass", 0 ],
			"obj-38::obj-24::obj-28::obj-28" : [ "Bend[5]", "Bend", 0 ],
			"obj-38::obj-24::obj-22::obj-12" : [ "Mute[7]", "Mute", 0 ],
			"obj-6::obj-24::obj-16::obj-54" : [ "CV1[1]", "CV1", 0 ],
			"obj-6::obj-24::obj-3::obj-46" : [ "decay curve[1]", "decay curve", 0 ],
			"obj-6::obj-24::obj-29::obj-69" : [ "1voctled[4]", "1voctled", 0 ],
			"obj-38::obj-24::obj-2::obj-28" : [ "Bend[8]", "Bend", 0 ],
			"obj-38::obj-24::obj-7::obj-12" : [ "KeyboardMode[2]", "KeyboardMode", 0 ],
			"obj-38::obj-24::obj-15::obj-33" : [ "output_led_2[1]", "output_led_2", 0 ],
			"obj-38::obj-24::obj-32::obj-29" : [ "Decay[7]", "Decay", 0 ],
			"obj-5::obj-24::obj-16::obj-63" : [ "CV3", "CV3", 0 ],
			"obj-6::obj-24::obj-17::obj-33" : [ "Quadrants[2]", "Quadrants", 0 ],
			"obj-38::obj-24::obj-28::obj-20" : [ "ModWheelActivityLED[5]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-4::obj-25" : [ "Cutoff[2]", "Cutoff", 0 ],
			"obj-38::obj-24::obj-33::obj-29" : [ "Decay[8]", "Decay", 0 ],
			"obj-5::obj-24::obj-16::obj-22" : [ "TimeMode", "TimeMode", 1 ],
			"obj-6::obj-24::obj-16::obj-23" : [ "Offset[2]", "Offset", 0 ],
			"obj-6::obj-24::obj-23::obj-80" : [ "Response[3]", "Response", 0 ],
			"obj-6::obj-24::obj-9::obj-1" : [ "Width[1]", "Width", 0 ],
			"obj-6::obj-24::obj-24::obj-91" : [ "Offset[4]", "Offset", 0 ],
			"obj-38::obj-24::obj-23::obj-80" : [ "Response[5]", "Response", 0 ],
			"obj-38::obj-24::obj-2::obj-20" : [ "ModWheelActivityLED[8]", "ModWheelActivityLED", 0 ],
			"obj-38::obj-24::obj-22::obj-154" : [ "CV2[5]", "CV2", 0 ],
			"obj-6::obj-24::obj-24::obj-86" : [ "Amt[1]", "Amt", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "bp.Keyboard.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Input",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "background_sm.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pastebang.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.MIDI to Signal.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/MIDI",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Stereo.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Output",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.VCA.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Level",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.ADSR2.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Envelope",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Reverb 1.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.cross1~.maxpat",
				"bootpath" : "C74:/patchers/m4l/Tools resources",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Cloud.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.MMF.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Filter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "number_switch.js",
				"bootpath" : "~/Developer/Mindwerk/2018/dust-more/sound",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Chorus.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.FM.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Poly4.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/MIDI",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.ADSR.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Envelope",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Wavetable.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Compressor.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
