{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 135.0, 642.0, 405.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"bgcolor" : [ 0.50195974111557, 0.0, 0.008130922913551, 1.0 ],
					"fontname" : "Apple Braille",
					"fontsize" : 32.0,
					"id" : "obj-153",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.0, 18.0, 210.0, 46.0 ],
					"presentation" : 1,
					"presentation_linecount" : 5,
					"presentation_rect" : [ 580.400146484375, 21.0, 32.0, 178.0 ],
					"text" : "EMIKO",
					"textcolor" : [ 0.995808362960815, 0.800102710723877, 0.399984955787659, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.0, 21.0, 90.5, 77.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 137.0, 21.0, 75.5, 90.0 ],
					"text" : "<必要時可以調整左邊的參數，聽聽看聲音變化是不是更符合現場需求"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.59991455078125, 127.0, 90.5, 50.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 249.0, 123.0, 97.0, 37.0 ],
					"text" : "黃色按鈕會強制觸發聲音小變化"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 479.5, 38.0, 150.0, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 347.5, 200.0, 128.0, 37.0 ],
					"text" : "P.S.高低頻cut-off控制不能互相覆蓋(overlap)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.5, 414.0, 59.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "$1 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 646.5, 444.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.5, 308.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 663.0, 133.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1004.0, 286.0, 29.5, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.999996185302734, 0.99993908405304, 0.041033305227757, 1.0 ],
					"format" : 6,
					"id" : "obj-116",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 710.5, 217.0, 59.0, 22.0 ],
					"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 710.5, 180.0, 29.5, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.5, 347.0, 29.5, 22.0 ],
					"text" : "120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 710.5, 447.0, 22.0, 99.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-9",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 646.5, 380.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.999996185302734, 0.99993908405304, 0.041033305227757, 1.0 ],
					"format" : 6,
					"id" : "obj-126",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 960.0, 66.0, 53.0, 22.0 ],
					"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 960.0, 184.0, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 960.0, 133.0, 31.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-129",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 960.0, 217.0, 63.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 960.0, 339.0, 35.0, 22.0 ],
					"text" : "+~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 960.0, 312.0, 32.0, 22.0 ],
					"text" : "*~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 960.0, 286.0, 35.0, 22.0 ],
					"text" : "+~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 960.0, 256.0, 45.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 876.0, 184.0, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 876.0, 133.0, 31.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.999996185302734, 0.99993908405304, 0.041033305227757, 1.0 ],
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 876.0, 66.0, 53.0, 22.0 ],
					"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 792.0, 133.0, 31.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.999996185302734, 0.99993908405304, 0.041033305227757, 1.0 ],
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 792.0, 66.0, 53.0, 22.0 ],
					"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 791.5, 184.0, 29.5, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-136",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 791.5, 217.0, 63.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 791.5, 256.0, 45.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-138",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 876.0, 217.0, 63.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 876.0, 256.0, 45.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"calccount" : 2,
					"id" : "obj-140",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 870.5, 447.0, 125.0, 99.0 ]
				}

			}
, 			{
				"box" : 				{
					"domain" : [ 0.0, 11025.0 ],
					"id" : "obj-141",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.0, 447.0, 124.0, 99.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-142",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1014.5, 256.0, 54.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.999996185302734, 0.99993908405304, 0.041033305227757, 1.0 ],
					"format" : 6,
					"id" : "obj-143",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 721.0, 133.0, 59.0, 22.0 ],
					"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 710.5, 256.0, 45.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 710.5, 380.0, 154.0, 22.0 ],
					"text" : "scale~ -1 1 -1 1 @classic 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.5, 855.0, 42.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 532.400146484375, 325.0, 39.0, 23.0 ],
					"text" : "恢復"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-123",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 202.75, 808.0, 94.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 489.400146484375, 300.0, 82.0, 23.0 ],
					"text" : "暫停所有聲音"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 412.0, 11.0, 90.5, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 421.50006103515625, 123.0, 87.0, 37.0 ],
					"text" : "紅色開關按了聲音會隨機跑"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 753.0, 96.0, 77.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 347.5, 273.0, 132.0, 50.0 ],
					"text" : "在聲音要fade-out或較安靜的橋段，建議手動調整Main Volume控制"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 415.5, 470.0, 129.0, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 347.5, 233.0, 128.0, 37.0 ],
					"text" : "覺得低頻太轟若太少，調整Low Cut推桿"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 325.0, 391.0, 150.0, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 347.5, 166.0, 128.0, 37.0 ],
					"text" : "覺得高頻太尖或太少，調整High Cut旋鈕"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.0, 345.0, 81.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 515.400146484375, 166.0, 54.0, 18.0 ],
					"text" : "High Cut"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-114",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.5, 463.0, 80.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 515.400146484375, 252.0, 55.0, 18.0 ],
					"text" : "Low Cut"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 273.0, 544.0, 52.0, 22.0 ],
					"text" : "$1 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 273.0, 571.5, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.0, 278.0, 52.0, 22.0 ],
					"text" : "$1 3000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 292.0, 308.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.0, 306.0, 52.0, 22.0 ],
					"text" : "$1 3000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 434.0, 336.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.0, 306.0, 52.0, 22.0 ],
					"text" : "$1 3000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 546.0, 336.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.0, 602.5, 26.0, 20.0 ],
					"style" : "helpfile_label",
					"text" : "Hz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 640.0, 480.0 ],
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
									"id" : "obj-10",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 124.0, 221.0, 60.0 ],
									"style" : "helpfile_label",
									"text" : "This subpatch applies an exponential curve to the linear knob values to improve their resolution at low frequencies."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 124.0, 71.0, 23.0 ],
									"text" : "* 0.052456"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 50.0, 148.0, 71.0, 23.0 ],
									"text" : "t 2. f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"format" : 6,
									"id" : "obj-53",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 52.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 184.0, 71.0, 23.0 ],
									"text" : "pow 2."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 252.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 273.0, 515.0, 71.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p lin-to-log"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 273.0, 487.0, 140.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 482.400146484375, 234.0, 88.0, 17.0 ],
					"size" : 160.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-98",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 273.0, 602.5, 55.0, 23.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.25, 217.0, 52.0, 22.0 ],
					"text" : "$1 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 434.25, 247.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.0, 217.0, 52.0, 22.0 ],
					"text" : "$1 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 546.0, 247.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 115.25, 667.0, 36.0, 23.0 ],
					"text" : "-~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 132.25, 602.5, 104.0, 23.0 ],
					"text" : "onepole~ 80. Hz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 171.0, 667.0, 36.0, 23.0 ],
					"text" : "-~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 188.0, 635.0, 104.0, 23.0 ],
					"text" : "onepole~ 80. Hz"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 415.4998779296875, 601.5, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.4998779296875, 546.5, 202.4998779296875, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.5, 44.0, 161.00006103515625, 48.0 ],
					"tabs" : [ "S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", "S11", "S12" ]
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 16,
					"id" : "obj-97",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 415.4998779296875, 632.5, 88.0, 66.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5271, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -1.471432328224182, 5, "obj-37", "flonum", "float", 0.675000011920929, 5, "obj-29", "flonum", "float", 5.800000190734863, 5, "obj-32", "flonum", "float", 0.200000002980232, 5, "obj-14", "flonum", "float", 0.019999999552965, 5, "obj-7", "flonum", "float", 0.264999985694885, 5, "obj-6", "flonum", "float", 0.00800000037998, 5, "obj-81", "flonum", "float", 5.0, 5, "obj-83", "flonum", "float", 1100.0, 5, "obj-76", "flonum", "float", 4.0, 5, "obj-71", "flonum", "float", 2.200000047683716, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-30", "flonum", "float", 12.0, 5, "obj-17", "flonum", "float", 1.0, 5, "obj-96", "dial", "float", 1150.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 89.0, 5, "obj-143", "flonum", "float", 3.0, 5, "obj-142", "flonum", "float", 33.0, 5, "obj-138", "flonum", "float", 3000.0, 5, "obj-136", "flonum", "float", 105.0, 5, "obj-18", "flonum", "float", 35.0, 5, "obj-21", "flonum", "float", 1000.0, 5, "obj-129", "flonum", "float", 30.0, 5, "obj-126", "flonum", "float", 10.0, 5, "obj-9", "flonum", "float", 0.0, 5, "obj-116", "flonum", "float", 36.0, 5, "obj-113", "number", "int", 33 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5000, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.079999998211861, 5, "obj-29", "flonum", "float", 548.0, 5, "obj-32", "flonum", "float", 0.400000005960464, 5, "obj-14", "flonum", "float", 0.180000007152557, 5, "obj-7", "flonum", "float", 0.264999985694885, 5, "obj-6", "flonum", "float", 0.009999999776483, 5, "obj-81", "flonum", "float", 34.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 2.200000047683716, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 320.0, 5, "obj-30", "flonum", "float", 216.0, 5, "obj-17", "flonum", "float", 1.0, 5, "obj-96", "dial", "float", 4550.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 119.0, 5, "obj-143", "flonum", "float", 3.0, 5, "obj-142", "flonum", "float", 33.0, 5, "obj-138", "flonum", "float", 3000.0, 5, "obj-136", "flonum", "float", 105.0, 5, "obj-18", "flonum", "float", 35.0, 5, "obj-21", "flonum", "float", 1000.0, 5, "obj-129", "flonum", "float", 30.0, 5, "obj-126", "flonum", "float", 10.0, 5, "obj-9", "flonum", "float", 80.0, 5, "obj-116", "flonum", "float", 36.0, 5, "obj-113", "number", "int", 33 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5000, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 1.799999952316284, 5, "obj-29", "flonum", "float", 660.0, 5, "obj-32", "flonum", "float", 0.400000005960464, 5, "obj-14", "flonum", "float", 0.5, 5, "obj-7", "flonum", "float", 0.264999985694885, 5, "obj-6", "flonum", "float", 0.009999999776483, 5, "obj-81", "flonum", "float", 2.5, 5, "obj-83", "flonum", "float", 1380.0, 5, "obj-76", "flonum", "float", 10.0, 5, "obj-71", "flonum", "float", 3.5, 5, "obj-67", "flonum", "float", 1120.0, 5, "obj-66", "flonum", "float", 420.0, 5, "obj-30", "flonum", "float", 330.0, 5, "obj-17", "flonum", "float", 1.0, 5, "obj-96", "dial", "float", 5750.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 80.0, 5, "obj-143", "flonum", "float", 3.0, 5, "obj-142", "flonum", "float", 33.0, 5, "obj-138", "flonum", "float", 3000.0, 5, "obj-136", "flonum", "float", 105.0, 5, "obj-18", "flonum", "float", 35.0, 5, "obj-21", "flonum", "float", 1000.0, 5, "obj-129", "flonum", "float", 30.0, 5, "obj-126", "flonum", "float", 10.0, 5, "obj-9", "flonum", "float", 0.0, 5, "obj-116", "flonum", "float", 36.0, 5, "obj-113", "number", "int", 33 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5000, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.200000002980232, 5, "obj-29", "flonum", "float", 188.0, 5, "obj-32", "flonum", "float", 0.200000002980232, 5, "obj-14", "flonum", "float", 0.200000002980232, 5, "obj-7", "flonum", "float", 0.25, 5, "obj-6", "flonum", "float", 0.009999999776483, 5, "obj-81", "flonum", "float", 5.0, 5, "obj-83", "flonum", "float", 380.0, 5, "obj-76", "flonum", "float", 2.0, 5, "obj-71", "flonum", "float", 2.0, 5, "obj-67", "flonum", "float", 1120.0, 5, "obj-66", "flonum", "float", 288.0, 5, "obj-30", "flonum", "float", 200.0, 5, "obj-17", "flonum", "float", 1.0, 5, "obj-96", "dial", "float", 150.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 80.0, 5, "obj-143", "flonum", "float", 0.200000002980232, 5, "obj-142", "flonum", "float", 900.0, 5, "obj-138", "flonum", "float", 6.599999904632568, 5, "obj-136", "flonum", "float", 20.0, 5, "obj-18", "flonum", "float", 100.0, 5, "obj-21", "flonum", "float", 33.0, 5, "obj-129", "flonum", "float", 1.799999952316284, 5, "obj-126", "flonum", "float", 9.0, 5, "obj-9", "flonum", "float", 66.0, 5, "obj-116", "flonum", "float", 111.0, 5, "obj-113", "number", "int", 108 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5000, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.314999997615814, 5, "obj-29", "flonum", "float", 5.25, 5, "obj-32", "flonum", "float", 0.400000005960464, 5, "obj-14", "flonum", "float", 0.050000000745058, 5, "obj-7", "flonum", "float", 0.264999985694885, 5, "obj-6", "flonum", "float", 0.00800000037998, 5, "obj-81", "flonum", "float", 34.0, 5, "obj-83", "flonum", "float", 1180.0, 5, "obj-76", "flonum", "float", 8.050000190734863, 5, "obj-71", "flonum", "float", 2.200000047683716, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 550.0, 5, "obj-30", "flonum", "float", 57.5, 5, "obj-17", "flonum", "float", 1.200000047683716, 5, "obj-96", "dial", "float", 5400.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 107.0, 5, "obj-143", "flonum", "float", 0.200000002980232, 5, "obj-142", "flonum", "float", 900.0, 5, "obj-138", "flonum", "float", 6.599999904632568, 5, "obj-136", "flonum", "float", 20.0, 5, "obj-18", "flonum", "float", 100.0, 5, "obj-21", "flonum", "float", 33.0, 5, "obj-129", "flonum", "float", 1.799999952316284, 5, "obj-126", "flonum", "float", 9.0, 5, "obj-9", "flonum", "float", 0.0, 5, "obj-116", "flonum", "float", 111.0, 5, "obj-113", "number", "int", 108 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5271, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.319999992847443, 5, "obj-29", "flonum", "float", 0.119999997317791, 5, "obj-32", "flonum", "float", 0.400000005960464, 5, "obj-14", "flonum", "float", 0.239999994635582, 5, "obj-7", "flonum", "float", 2.539999961853027, 5, "obj-6", "flonum", "float", 0.230000004172325, 5, "obj-81", "flonum", "float", 20.0, 5, "obj-83", "flonum", "float", 1230.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 5.25, 5, "obj-67", "flonum", "float", 1100.0, 5, "obj-66", "flonum", "float", 188.0, 5, "obj-30", "flonum", "float", 45.799999237060547, 5, "obj-17", "flonum", "float", 1.080000042915344, 5, "obj-96", "dial", "float", 800.0, 5, "obj-8", "tab", "int", 5, 5, "obj-95", "slider", "float", 132.0, 5, "obj-143", "flonum", "float", 1.799999952316284, 5, "obj-142", "flonum", "float", 3.0, 5, "obj-138", "flonum", "float", 59.400001525878906, 5, "obj-136", "flonum", "float", 36.0, 5, "obj-18", "flonum", "float", 20.0, 5, "obj-21", "flonum", "float", 33.0, 5, "obj-129", "flonum", "float", 14400.0, 5, "obj-126", "flonum", "float", 8000.0, 5, "obj-9", "flonum", "float", 55.0, 5, "obj-116", "flonum", "float", 20.200000762939453, 5, "obj-113", "number", "int", 20 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 0, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", 0.0, 5, "obj-37", "flonum", "float", 0.300000011920929, 5, "obj-29", "flonum", "float", 0.119999997317791, 5, "obj-32", "flonum", "float", 228.0, 5, "obj-14", "flonum", "float", 0.019999999552965, 5, "obj-7", "flonum", "float", 2.519999980926514, 5, "obj-6", "flonum", "float", 0.28600001335144, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 9.699999809265137, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-30", "flonum", "float", 128.0, 5, "obj-17", "flonum", "float", 1.110000014305115, 5, "obj-96", "dial", "float", 800.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 135.0, 5, "obj-143", "flonum", "float", 0.200000002980232, 5, "obj-142", "flonum", "float", 900.0, 5, "obj-138", "flonum", "float", 6.599999904632568, 5, "obj-136", "flonum", "float", 20.0, 5, "obj-18", "flonum", "float", 100.0, 5, "obj-21", "flonum", "float", 33.0, 5, "obj-129", "flonum", "float", 1.799999952316284, 5, "obj-126", "flonum", "float", 9.0, 5, "obj-9", "flonum", "float", 0.0, 5, "obj-116", "flonum", "float", 111.0, 5, "obj-113", "number", "int", 108 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 92, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.314999997615814, 5, "obj-29", "flonum", "float", 5.758999824523926, 5, "obj-32", "flonum", "float", 0.400000005960464, 5, "obj-14", "flonum", "float", 0.019999999552965, 5, "obj-7", "flonum", "float", 0.264999985694885, 5, "obj-6", "flonum", "float", 3.180000066757202, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 2.200000047683716, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-17", "flonum", "float", 224.0, 5, "obj-96", "dial", "float", 1400.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 99.0, 5, "obj-143", "flonum", "float", 0.200000002980232, 5, "obj-142", "flonum", "float", 900.0, 5, "obj-138", "flonum", "float", 6.599999904632568, 5, "obj-136", "flonum", "float", 20.0, 5, "obj-18", "flonum", "float", 100.0, 5, "obj-21", "flonum", "float", 33.0, 5, "obj-129", "flonum", "float", 1.799999952316284, 5, "obj-126", "flonum", "float", 9.0, 5, "obj-9", "flonum", "float", 0.0, 5, "obj-116", "flonum", "float", 111.0, 5, "obj-113", "number", "int", 108 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5271, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.239999994635582, 5, "obj-29", "flonum", "float", 31.600000381469727, 5, "obj-32", "flonum", "float", 0.400000005960464, 5, "obj-14", "flonum", "float", 0.019999999552965, 5, "obj-7", "flonum", "float", 1.279999971389771, 5, "obj-6", "flonum", "float", 0.349999994039536, 5, "obj-81", "flonum", "float", 0.349999994039536, 5, "obj-83", "flonum", "float", 620.0, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-67", "flonum", "float", 3.0, 5, "obj-66", "flonum", "float", 361.0, 5, "obj-30", "flonum", "float", 180.0, 5, "obj-17", "flonum", "float", 23.200000762939453, 5, "obj-96", "dial", "float", 2400.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 102.0, 5, "obj-143", "flonum", "float", 0.0, 5, "obj-142", "flonum", "float", 0.0, 5, "obj-138", "flonum", "float", 0.0, 5, "obj-136", "flonum", "float", 0.0, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-21", "flonum", "float", 0.0, 5, "obj-129", "flonum", "float", 0.0, 5, "obj-126", "flonum", "float", 0.0, 5, "obj-9", "flonum", "float", 0.0, 6, "obj-125", "gain~", "list", 114, 10.0, 5, "obj-116", "flonum", "float", 0.0, 5, "obj-113", "number", "int", 0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 0, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -0.972571074962616, 5, "obj-37", "flonum", "float", 0.068000003695488, 5, "obj-29", "flonum", "float", 0.041000001132488, 5, "obj-32", "flonum", "float", 26.5, 5, "obj-14", "flonum", "float", 0.28600001335144, 5, "obj-7", "flonum", "float", 2.519999980926514, 5, "obj-6", "flonum", "float", 0.28600001335144, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 5.300000190734863, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-30", "flonum", "float", 45.900001525878906, 5, "obj-17", "flonum", "float", 224.0, 5, "obj-96", "dial", "float", 200.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 159.0, 5, "obj-143", "flonum", "float", 12.0, 5, "obj-142", "flonum", "float", 35.0, 5, "obj-138", "flonum", "float", -0.300000011920929, 5, "obj-136", "flonum", "float", 0.059999998658895, 5, "obj-18", "flonum", "float", 0.004999999888241, 5, "obj-21", "flonum", "float", -0.025000000372529, 5, "obj-129", "flonum", "float", 4.199999809265137, 5, "obj-126", "flonum", "float", 0.349999994039536, 5, "obj-9", "flonum", "float", 120.0, 6, "obj-125", "gain~", "list", 120, 10.0, 5, "obj-116", "flonum", "float", 30.0, 5, "obj-113", "number", "int", 18 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 5271, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.010759999975562, 5, "obj-29", "flonum", "float", 8.189999580383301, 5, "obj-32", "flonum", "float", 24.340000152587891, 5, "obj-14", "flonum", "float", 0.018432000651956, 5, "obj-7", "flonum", "float", 0.265493005514145, 5, "obj-6", "flonum", "float", 0.007034999784082, 5, "obj-81", "flonum", "float", 3.463000059127808, 5, "obj-83", "flonum", "float", 39.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 2.200000047683716, 5, "obj-67", "flonum", "float", 1238.0, 5, "obj-66", "flonum", "float", 619.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-17", "flonum", "float", 1.080000042915344, 5, "obj-96", "dial", "float", 800.0, 5, "obj-8", "tab", "int", 10, 5, "obj-95", "slider", "float", 118.0, 5, "obj-143", "flonum", "float", 10.0, 5, "obj-142", "flonum", "float", 40.0, 5, "obj-138", "flonum", "float", -0.25, 5, "obj-136", "flonum", "float", 0.049999997019768, 5, "obj-18", "flonum", "float", 0.004999999888241, 5, "obj-21", "flonum", "float", -0.025000000372529, 5, "obj-129", "flonum", "float", 5.0, 5, "obj-126", "flonum", "float", 0.5, 5, "obj-9", "flonum", "float", 120.0, 6, "obj-125", "gain~", "list", 120, 10.0, 5, "obj-116", "flonum", "float", 20.0, 5, "obj-113", "number", "int", 10 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 0, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", 0.0, 5, "obj-37", "flonum", "float", 0.349999994039536, 5, "obj-29", "flonum", "float", 0.119999997317791, 5, "obj-32", "flonum", "float", 228.0, 5, "obj-14", "flonum", "float", 0.019999999552965, 5, "obj-7", "flonum", "float", 2.519999980926514, 5, "obj-6", "flonum", "float", 0.28600001335144, 5, "obj-81", "flonum", "float", 45.849998474121094, 5, "obj-83", "flonum", "float", 1098.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 9.989999771118164, 5, "obj-67", "flonum", "float", 923.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-30", "flonum", "float", 128.0, 5, "obj-17", "flonum", "float", 1.110000014305115, 5, "obj-96", "dial", "float", 6000.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 92.0, 5, "obj-143", "flonum", "float", 10.0, 5, "obj-142", "flonum", "float", 40.0, 5, "obj-138", "flonum", "float", -0.25, 5, "obj-136", "flonum", "float", 0.049999997019768, 5, "obj-18", "flonum", "float", 0.004999999888241, 5, "obj-21", "flonum", "float", -0.025000000372529, 5, "obj-129", "flonum", "float", 5.0, 5, "obj-126", "flonum", "float", 0.5, 5, "obj-9", "flonum", "float", 120.0, 6, "obj-125", "gain~", "list", 0, 10.0, 5, "obj-116", "flonum", "float", 20.0, 5, "obj-113", "number", "int", 10 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 0, 5, "obj-65", "toggle", "int", 0, 5, "obj-56", "live.gain~", "float", -1.012396693229675, 5, "obj-37", "flonum", "float", 0.068000003695488, 5, "obj-29", "flonum", "float", 0.041000001132488, 5, "obj-32", "flonum", "float", 26.5, 5, "obj-14", "flonum", "float", 0.28600001335144, 5, "obj-7", "flonum", "float", 2.519999980926514, 5, "obj-6", "flonum", "float", 0.28600001335144, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-76", "flonum", "float", 7.050000190734863, 5, "obj-71", "flonum", "float", 5.300000190734863, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-30", "flonum", "float", 45.900001525878906, 5, "obj-17", "flonum", "float", 224.0, 5, "obj-96", "dial", "float", 0.0, 5, "obj-8", "tab", "int", 0, 5, "obj-95", "slider", "float", 159.0, 5, "obj-143", "flonum", "float", 10.0, 5, "obj-142", "flonum", "float", 40.0, 5, "obj-138", "flonum", "float", -0.25, 5, "obj-136", "flonum", "float", 0.049999997019768, 5, "obj-18", "flonum", "float", 0.004999999888241, 5, "obj-21", "flonum", "float", -0.025000000372529, 5, "obj-129", "flonum", "float", 5.0, 5, "obj-126", "flonum", "float", 0.5, 5, "obj-9", "flonum", "float", 120.0, 6, "obj-125", "gain~", "list", 120, 10.0, 5, "obj-116", "flonum", "float", 20.0, 5, "obj-113", "number", "int", 10 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-96",
					"maxclass" : "dial",
					"min" : 180.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.5, 345.0, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 530.400146484375, 186.0, 40.0, 40.0 ],
					"size" : 8000.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-91",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.5, 391.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.5, 421.0, 55.0, 23.0 ],
					"text" : "$1 5000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 254.5, 456.0, 63.0, 23.0 ],
					"text" : "line~ 200"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-94",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 115.25, 523.5, 54.0, 38.0 ],
					"text" : "lores~ 200 0.4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 171.0, 523.5, 54.0, 38.0 ],
					"text" : "lores~ 200 0.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.5, 54.0, 52.0, 22.0 ],
					"text" : "$1 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 210.5, 84.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 137.0, 54.0, 52.0, 22.0 ],
					"text" : "$1 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 137.0, 84.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-147",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.99969482421875, 596.5, 116.00006103515625, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.5, 91.5, 128.00006103515625, 23.0 ],
					"text" : "S10跟S11有包含低頻"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 415.5, 518.5, 116.00006103515625, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.5, 21.0, 116.00006103515625, 23.0 ],
					"text" : "用這一組Tab來切換"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 137.0, 117.0, 68.0, 22.0 ],
					"text" : "cycle~ 300"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "tapconnect" ],
					"patching_rect" : [ 114.5, 309.0, 74.0, 22.0 ],
					"text" : "tapin~ 1500"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 114.5, 363.0, 91.0, 22.0 ],
					"text" : "tapout~ 0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "list", "list" ],
					"patching_rect" : [ 115.25, 487.0, 85.0, 22.0 ],
					"text" : "omx.peaklim~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 114.5, 456.0, 32.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 181.25, 456.0, 32.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 202.75, 421.0, 40.25, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.75, 56.0, 53.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 115.25, 715.0, 42.0, 22.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 171.0, 715.0, 42.0, 22.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 114.0, 831.0, 37.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.5, 831.0, 74.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 489.400146484375, 350.0, 75.0, 22.0 ],
					"text" : "startwindow"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.5, 808.0, 33.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 489.400146484375, 324.0, 33.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 137.0, 19.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 21.0, 54.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bufsize" : 64,
					"calccount" : 16,
					"fgcolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"gridcolor" : [ 0.301961, 0.337255, 0.403922, 0.25098 ],
					"id" : "obj-54",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 332.5, 755.04998779296875, 174.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 165.0, 321.900146484375, 206.0 ],
					"prototypename" : "M4L.yellow"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 217.0, 42.0, 22.0 ],
					"text" : "rand~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 243.0, 278.0, 32.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-66",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 256.5, 223.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.5, 92.0, 53.25, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 306.0, 32.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-67",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.25, 186.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 363.0, 32.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-71",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.25, 278.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 243.0, 309.0, 32.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-76",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 294.0, 249.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.996078431372549, 0.968627450980392, 0.098039215686275, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.5, 193.5, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.5, 127.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 165.5, 249.0, 41.0, 22.0 ],
					"text" : "click~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 217.0, 42.0, 22.0 ],
					"text" : "rand~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 306.0, 32.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-83",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 546.0, 186.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 363.0, 32.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 546.0, 278.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 312.0, 217.0, 42.0, 22.0 ],
					"text" : "rand~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 186.0, 42.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 127.0, 54.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.0, 186.0, 42.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 92.0, 54.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-14",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 312.0, 186.0, 46.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 21.0, 53.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"id" : "obj-16",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 319.5, 88.0, 183.0, 79.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 157.399993999999992, 5, "obj-66", "flonum", "float", 6.34, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 25.0, 5, "obj-83", "flonum", "float", 28.200001, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 2.03, 5, "obj-14", "flonum", "float", 5.7 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 157.399993999999992, 5, "obj-66", "flonum", "float", 185.0, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 66.0, 5, "obj-83", "flonum", "float", 28.200001, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 2.03, 5, "obj-14", "flonum", "float", 5.7 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 424.0, 5, "obj-66", "flonum", "float", 6.34, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 25.0, 5, "obj-83", "flonum", "float", 28.200001, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 2.03, 5, "obj-14", "flonum", "float", 5.7 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 111.0, 5, "obj-66", "flonum", "float", 781.0, 5, "obj-67", "flonum", "float", 227.0, 5, "obj-71", "flonum", "float", 2.73, 5, "obj-76", "flonum", "float", 1.85, 5, "obj-83", "flonum", "float", 204.0, 5, "obj-81", "flonum", "float", 1.0, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 2.03, 5, "obj-14", "flonum", "float", 1.8 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 5, "obj-30", "flonum", "float", 412.0, 5, "obj-66", "flonum", "float", 781.0, 5, "obj-67", "flonum", "float", 227.0, 5, "obj-71", "flonum", "float", 2.73, 5, "obj-76", "flonum", "float", 1.85, 5, "obj-83", "flonum", "float", 204.0, 5, "obj-81", "flonum", "float", 1.0, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 2.03, 5, "obj-14", "flonum", "float", 1.8, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 92 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 5, "obj-30", "flonum", "float", 2080.0, 5, "obj-66", "flonum", "float", 6.34, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 25.0, 5, "obj-83", "flonum", "float", 28.200001, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 2.03, 5, "obj-14", "flonum", "float", 5.7, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 181 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 5, "obj-30", "flonum", "float", 3887.0, 5, "obj-66", "flonum", "float", 6.34, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 500.0, 5, "obj-76", "flonum", "float", 25.0, 5, "obj-83", "flonum", "float", 416.0, 5, "obj-81", "flonum", "float", 50.0, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 0.3, 5, "obj-14", "flonum", "float", 5.7, 5, "obj-32", "flonum", "float", 317.0, 5, "obj-29", "flonum", "float", 3.71751, 5, "obj-37", "flonum", "float", 0.023, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 5, "obj-30", "flonum", "float", 91.0, 5, "obj-66", "flonum", "float", 6.34, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 347.0, 5, "obj-76", "flonum", "float", 25.0, 5, "obj-83", "flonum", "float", 16.0, 5, "obj-81", "flonum", "float", 482.0, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 9.0, 5, "obj-14", "flonum", "float", 5.7, 5, "obj-32", "flonum", "float", 317.0, 5, "obj-29", "flonum", "float", 3.71751, 5, "obj-37", "flonum", "float", 0.023, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 30 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 192.0, 5, "obj-66", "flonum", "float", 363.0, 5, "obj-67", "flonum", "float", 54.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.82, 5, "obj-7", "flonum", "float", 1.43, 5, "obj-14", "flonum", "float", 2.24 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 1260.0, 5, "obj-66", "flonum", "float", 363.0, 5, "obj-67", "flonum", "float", 54.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.82, 5, "obj-7", "flonum", "float", 1.43, 5, "obj-14", "flonum", "float", 2.24 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 1260.0, 5, "obj-66", "flonum", "float", 363.0, 5, "obj-67", "flonum", "float", 54.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 6.05, 5, "obj-6", "flonum", "float", 0.82, 5, "obj-7", "flonum", "float", 1.43, 5, "obj-14", "flonum", "float", 113.0 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-17", "flonum", "float", 0.17, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 82.930000000000007, 5, "obj-66", "flonum", "float", 361.0, 5, "obj-67", "flonum", "float", 2.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 0.35, 5, "obj-6", "flonum", "float", 0.41, 5, "obj-7", "flonum", "float", 1.43, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-17", "flonum", "float", 23.200001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 82.930000000000007, 5, "obj-66", "flonum", "float", 361.0, 5, "obj-67", "flonum", "float", 2.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 0.35, 5, "obj-6", "flonum", "float", 0.41, 5, "obj-7", "flonum", "float", 1.43, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 14,
							"data" : [ 5, "obj-17", "flonum", "float", 23.200001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 203.0, 5, "obj-66", "flonum", "float", 361.0, 5, "obj-67", "flonum", "float", 2.0, 5, "obj-71", "flonum", "float", 7.5, 5, "obj-76", "flonum", "float", 246.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 0.35, 5, "obj-6", "flonum", "float", 0.41, 5, "obj-7", "flonum", "float", 1.43, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 15,
							"data" : [ 5, "obj-17", "flonum", "float", 23.200001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 533.0, 5, "obj-66", "flonum", "float", 758.0, 5, "obj-67", "flonum", "float", 127.699996999999996, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 253.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 1.24, 5, "obj-6", "flonum", "float", 0.139, 5, "obj-7", "flonum", "float", 0.502, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 16,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 533.0, 5, "obj-66", "flonum", "float", 758.0, 5, "obj-67", "flonum", "float", 127.699996999999996, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 253.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 1.24, 5, "obj-6", "flonum", "float", 0.139, 5, "obj-7", "flonum", "float", 0.502, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 17,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 43.0, 5, "obj-66", "flonum", "float", 758.0, 5, "obj-67", "flonum", "float", 127.699996999999996, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 253.0, 5, "obj-83", "flonum", "float", 635.0, 5, "obj-81", "flonum", "float", 1.24, 5, "obj-6", "flonum", "float", 0.139, 5, "obj-7", "flonum", "float", 0.502, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 18,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 43.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 726.0, 5, "obj-81", "flonum", "float", 1.24, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 19,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 43.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 20,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 121.199996999999996, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02 ]
						}
, 						{
							"number" : 21,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 349.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 317.0, 5, "obj-29", "flonum", "float", 3.706, 5, "obj-37", "flonum", "float", 0.45 ]
						}
, 						{
							"number" : 22,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 349.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 317.0, 5, "obj-29", "flonum", "float", 3.706, 5, "obj-37", "flonum", "float", 1.67 ]
						}
, 						{
							"number" : 23,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 9.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 317.0, 5, "obj-29", "flonum", "float", 3.706, 5, "obj-37", "flonum", "float", 1.67 ]
						}
, 						{
							"number" : 24,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 9.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 363.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 340.0, 5, "obj-29", "flonum", "float", 17.700001, 5, "obj-37", "flonum", "float", 0.892 ]
						}
, 						{
							"number" : 25,
							"data" : [ 5, "obj-17", "flonum", "float", 47.380001, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 9.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 500.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 340.0, 5, "obj-29", "flonum", "float", 17.700001, 5, "obj-37", "flonum", "float", 0.892 ]
						}
, 						{
							"number" : 26,
							"data" : [ 5, "obj-17", "flonum", "float", 104.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 9.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 21.200001, 5, "obj-76", "flonum", "float", 500.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 58.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 340.0, 5, "obj-29", "flonum", "float", 17.700001, 5, "obj-37", "flonum", "float", 0.892 ]
						}
, 						{
							"number" : 27,
							"data" : [ 5, "obj-17", "flonum", "float", 104.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 9.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 4.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.2, 5, "obj-29", "flonum", "float", 5.8, 5, "obj-37", "flonum", "float", 0.675 ]
						}
, 						{
							"number" : 28,
							"data" : [ 5, "obj-17", "flonum", "float", 104.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 130.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 4.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.2, 5, "obj-29", "flonum", "float", 5.8, 5, "obj-37", "flonum", "float", 0.675 ]
						}
, 						{
							"number" : 29,
							"data" : [ 5, "obj-17", "flonum", "float", 104.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 793.0, 5, "obj-66", "flonum", "float", 214.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 4.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.88, 5, "obj-29", "flonum", "float", 5.8, 5, "obj-37", "flonum", "float", 0.675 ]
						}
, 						{
							"number" : 30,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 793.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315 ]
						}
, 						{
							"number" : 31,
							"data" : [ 5, "obj-17", "flonum", "float", 1.662, 5, "obj-30", "flonum", "float", 107.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 0.12, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 79 ]
						}
, 						{
							"number" : 32,
							"data" : [ 5, "obj-17", "flonum", "float", 4.0, 5, "obj-30", "flonum", "float", 164.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 33,
							"data" : [ 5, "obj-17", "flonum", "float", 2.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 374.0, 5, "obj-37", "flonum", "float", 0.315, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 34,
							"data" : [ 5, "obj-17", "flonum", "float", 2.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 374.0, 5, "obj-37", "flonum", "float", 0.09, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 2126 ]
						}
, 						{
							"number" : 35,
							"data" : [ 5, "obj-17", "flonum", "float", 6.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.463, 5, "obj-6", "flonum", "float", 0.007035, 5, "obj-7", "flonum", "float", 0.265493, 5, "obj-14", "flonum", "float", 0.019115, 5, "obj-32", "flonum", "float", 1.249, 5, "obj-29", "flonum", "float", 8.19, 5, "obj-37", "flonum", "float", 0.020748, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 36,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 180.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 63.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 81.0, 5, "obj-6", "flonum", "float", 0.007291, 5, "obj-7", "flonum", "float", 0.265493, 5, "obj-14", "flonum", "float", 0.019115, 5, "obj-32", "flonum", "float", 1.249, 5, "obj-29", "flonum", "float", 8.19, 5, "obj-37", "flonum", "float", 0.018708 ]
						}
, 						{
							"number" : 37,
							"data" : [ 5, "obj-17", "flonum", "float", 1.08, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 619.0, 5, "obj-67", "flonum", "float", 1238.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 39.0, 5, "obj-81", "flonum", "float", 3.463, 5, "obj-6", "flonum", "float", 0.007035, 5, "obj-7", "flonum", "float", 0.265493, 5, "obj-14", "flonum", "float", 0.018432, 5, "obj-32", "flonum", "float", 24.34, 5, "obj-29", "flonum", "float", 8.19, 5, "obj-37", "flonum", "float", 0.01076, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 38,
							"data" : [ 5, "obj-17", "flonum", "float", 0.31, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 619.0, 5, "obj-67", "flonum", "float", 1238.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 39.0, 5, "obj-81", "flonum", "float", 3.463, 5, "obj-6", "flonum", "float", 0.007035, 5, "obj-7", "flonum", "float", 0.265493, 5, "obj-14", "flonum", "float", 0.018432, 5, "obj-32", "flonum", "float", 24.34, 5, "obj-29", "flonum", "float", 8.19, 5, "obj-37", "flonum", "float", 0.01076, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 39,
							"data" : [ 5, "obj-17", "flonum", "float", 0.505, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 619.0, 5, "obj-67", "flonum", "float", 1238.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 39.0, 5, "obj-81", "flonum", "float", 3.463, 5, "obj-6", "flonum", "float", 0.007035, 5, "obj-7", "flonum", "float", 0.265493, 5, "obj-14", "flonum", "float", 0.018432, 5, "obj-32", "flonum", "float", 24.34, 5, "obj-29", "flonum", "float", 8.19, 5, "obj-37", "flonum", "float", 0.01076, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 40,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 0.8, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 0.12, 5, "obj-37", "flonum", "float", 0.068 ]
						}
, 						{
							"number" : 41,
							"data" : [ 5, "obj-17", "flonum", "float", 1.08, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 5.3, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.286, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 0.12, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 42,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 5.3, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.286, 5, "obj-32", "flonum", "float", 26.5, 5, "obj-29", "flonum", "float", 0.041, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328 ]
						}
, 						{
							"number" : 43,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 5.3, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.286, 5, "obj-32", "flonum", "float", 782.0, 5, "obj-29", "flonum", "float", 0.015281, 5, "obj-37", "flonum", "float", 0.01806, 5, "obj-56", "live.gain~", "float", -3.806328 ]
						}
, 						{
							"number" : 44,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 300.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 14.0, 5, "obj-76", "flonum", "float", 23.100000000000001, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.22, 5, "obj-7", "flonum", "float", 0.67, 5, "obj-14", "flonum", "float", 0.01729, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 42.099997999999999, 5, "obj-37", "flonum", "float", 0.040029 ]
						}
, 						{
							"number" : 45,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 5.3, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.286, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 119.599997999999999, 5, "obj-37", "flonum", "float", 0.013 ]
						}
, 						{
							"number" : 46,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 200.0, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.286, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 119.599997999999999, 5, "obj-37", "flonum", "float", 0.013 ]
						}
, 						{
							"number" : 47,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 101.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 200.0, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.286, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 119.599997999999999, 5, "obj-37", "flonum", "float", 0.013 ]
						}
, 						{
							"number" : 48,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 5, "obj-30", "flonum", "float", 90.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 92 ]
						}
, 						{
							"number" : 49,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 106.0, 5, "obj-66", "flonum", "float", 120.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 42.0, 5, "obj-76", "flonum", "float", 0.8, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.28, 5, "obj-7", "flonum", "float", 0.221, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 1.26, 5, "obj-29", "flonum", "float", 105.0, 5, "obj-37", "flonum", "float", 0.357 ]
						}
, 						{
							"number" : 50,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 106.0, 5, "obj-66", "flonum", "float", 120.0, 5, "obj-67", "flonum", "float", 930.0, 5, "obj-71", "flonum", "float", 42.0, 5, "obj-76", "flonum", "float", 0.8, 5, "obj-83", "flonum", "float", 480.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.28, 5, "obj-7", "flonum", "float", 0.337, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 23.0, 5, "obj-29", "flonum", "float", 3.0, 5, "obj-37", "flonum", "float", 0.342 ]
						}
, 						{
							"number" : 51,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 106.0, 5, "obj-66", "flonum", "float", 120.0, 5, "obj-67", "flonum", "float", 930.0, 5, "obj-71", "flonum", "float", 42.0, 5, "obj-76", "flonum", "float", 0.8, 5, "obj-83", "flonum", "float", 480.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.28, 5, "obj-7", "flonum", "float", 0.337, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 23.0, 5, "obj-29", "flonum", "float", 466.0, 5, "obj-37", "flonum", "float", 0.342 ]
						}
, 						{
							"number" : 52,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 106.0, 5, "obj-66", "flonum", "float", 120.0, 5, "obj-67", "flonum", "float", 930.0, 5, "obj-71", "flonum", "float", 42.0, 5, "obj-76", "flonum", "float", 889.0, 5, "obj-83", "flonum", "float", 480.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.28, 5, "obj-7", "flonum", "float", 0.337, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 23.0, 5, "obj-29", "flonum", "float", 466.0, 5, "obj-37", "flonum", "float", 0.342 ]
						}
, 						{
							"number" : 53,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 106.0, 5, "obj-66", "flonum", "float", 472.0, 5, "obj-67", "flonum", "float", 930.0, 5, "obj-71", "flonum", "float", 42.0, 5, "obj-76", "flonum", "float", 889.0, 5, "obj-83", "flonum", "float", 480.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.28, 5, "obj-7", "flonum", "float", 0.337, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 225.0, 5, "obj-29", "flonum", "float", 0.37, 5, "obj-37", "flonum", "float", 0.0123 ]
						}
, 						{
							"number" : 55,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 45.900002000000001, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 0.12, 5, "obj-37", "flonum", "float", 0.068 ]
						}
, 						{
							"number" : 56,
							"data" : [ 5, "obj-17", "flonum", "float", 1.08, 5, "obj-30", "flonum", "float", 107.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 0.12, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 57,
							"data" : [ 5, "obj-17", "flonum", "float", 1.08, 5, "obj-30", "flonum", "float", 67.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 8.68, 5, "obj-29", "flonum", "float", 90.400002000000001, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 79 ]
						}
, 						{
							"number" : 58,
							"data" : [ 5, "obj-17", "flonum", "float", 0.407, 5, "obj-30", "flonum", "float", 168.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 182.0, 5, "obj-29", "flonum", "float", 90.400002000000001, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 79 ]
						}
, 						{
							"number" : 59,
							"data" : [ 5, "obj-17", "flonum", "float", 0.48, 5, "obj-30", "flonum", "float", 38.419998, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 8.68, 5, "obj-29", "flonum", "float", 90.400002000000001, 5, "obj-37", "flonum", "float", 0.068, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 79 ]
						}
, 						{
							"number" : 60,
							"data" : [ 5, "obj-87", "toggle", "int", 1, 5, "obj-72", "number", "int", 33, 5, "obj-56", "live.gain~", "float", -3.806328058242798, 5, "obj-37", "flonum", "float", 0.200000002980232, 5, "obj-29", "flonum", "float", 0.25, 5, "obj-32", "flonum", "float", 0.25, 5, "obj-14", "flonum", "float", 128.5, 5, "obj-7", "flonum", "float", 23.0, 5, "obj-6", "flonum", "float", 100.0, 5, "obj-81", "flonum", "float", 1000.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-76", "flonum", "float", 10.0, 5, "obj-71", "flonum", "float", 22.200000762939453, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-30", "flonum", "float", 0.280000001192093, 5, "obj-17", "flonum", "float", 55.0 ]
						}
, 						{
							"number" : 61,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 3.18, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315 ]
						}
, 						{
							"number" : 65,
							"data" : [ 5, "obj-17", "flonum", "float", 1.25, 5, "obj-30", "flonum", "float", 416.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 605.0, 5, "obj-76", "flonum", "float", 557.0, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 458.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 4.4, 5, "obj-29", "flonum", "float", 1.5, 5, "obj-37", "flonum", "float", 0.299, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 66,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 5, "obj-30", "flonum", "float", 1606.0, 5, "obj-66", "flonum", "float", 120.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 42.0, 5, "obj-76", "flonum", "float", 0.8, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 52.0, 5, "obj-6", "flonum", "float", 0.28, 5, "obj-7", "flonum", "float", 0.221, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 1.26, 5, "obj-29", "flonum", "float", 105.0, 5, "obj-37", "flonum", "float", 0.357, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 2126 ]
						}
, 						{
							"number" : 67,
							"data" : [ 5, "obj-17", "flonum", "float", 1.019, 5, "obj-30", "flonum", "float", 127.0, 5, "obj-66", "flonum", "float", 6.34, 5, "obj-67", "flonum", "float", 214.0, 5, "obj-71", "flonum", "float", 500.0, 5, "obj-76", "flonum", "float", 25.0, 5, "obj-83", "flonum", "float", 416.0, 5, "obj-81", "flonum", "float", 50.0, 5, "obj-6", "flonum", "float", 0.055, 5, "obj-7", "flonum", "float", 0.3, 5, "obj-14", "flonum", "float", 5.7, 5, "obj-32", "flonum", "float", 317.0, 5, "obj-29", "flonum", "float", 3.71751, 5, "obj-37", "flonum", "float", 0.023, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 71,
							"data" : [ 5, "obj-17", "flonum", "float", 1.11, 5, "obj-30", "flonum", "float", 107.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 423.0, 5, "obj-29", "flonum", "float", 0.12, 5, "obj-37", "flonum", "float", 0.3, 5, "obj-56", "live.gain~", "float", 0.0, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 76,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 3.18, 5, "obj-7", "flonum", "float", 2.53, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 31.600000000000001, 5, "obj-37", "flonum", "float", 0.315 ]
						}
, 						{
							"number" : 77,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 3.0, 5, "obj-6", "flonum", "float", 3.18, 5, "obj-7", "flonum", "float", 2.53, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 31.600000000000001, 5, "obj-37", "flonum", "float", 1.85 ]
						}
, 						{
							"number" : 78,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 0.92, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315 ]
						}
, 						{
							"number" : 79,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 947.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315 ]
						}
, 						{
							"number" : 80,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 6, "<invalid>", "gain~", "list", 123, 10.0, 6, "<invalid>", "gain~", "list", 119, 10.0, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 34.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 5.759, 5, "obj-37", "flonum", "float", 0.315 ]
						}
, 						{
							"number" : 81,
							"data" : [ 5, "obj-17", "flonum", "float", 0.81, 5, "obj-30", "flonum", "float", 56.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 34.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 548.0, 5, "obj-37", "flonum", "float", 0.11, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 82,
							"data" : [ 5, "obj-17", "flonum", "float", 0.58, 5, "obj-30", "flonum", "float", 824.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 34.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 548.0, 5, "obj-37", "flonum", "float", 0.11, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5271 ]
						}
, 						{
							"number" : 83,
							"data" : [ 5, "obj-17", "flonum", "float", 224.0, 5, "obj-30", "flonum", "float", 208.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 2.2, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 34.0, 5, "obj-6", "flonum", "float", 0.008, 5, "obj-7", "flonum", "float", 0.265, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 0.4, 5, "obj-29", "flonum", "float", 548.0, 5, "obj-37", "flonum", "float", 0.11, 5, "obj-56", "live.gain~", "float", -3.806328, 5, "obj-72", "number", "int", 5392 ]
						}
, 						{
							"number" : 86,
							"data" : [ 5, "obj-17", "flonum", "float", 1.08, 5, "obj-30", "flonum", "float", 107.0, 5, "obj-66", "flonum", "float", 429.0, 5, "obj-67", "flonum", "float", 912.0, 5, "obj-71", "flonum", "float", 9.699999999999999, 5, "obj-76", "flonum", "float", 7.05, 5, "obj-83", "flonum", "float", 1097.0, 5, "obj-81", "flonum", "float", 48.0, 5, "obj-6", "flonum", "float", 0.286, 5, "obj-7", "flonum", "float", 2.52, 5, "obj-14", "flonum", "float", 0.02, 5, "obj-32", "flonum", "float", 423.0, 5, "obj-29", "flonum", "float", 407.0, 5, "obj-37", "flonum", "float", 0.3, 5, "obj-56", "live.gain~", "float", 0.0, 5, "obj-72", "number", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 210.5, 186.0, 32.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.5, 155.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 210.5, 223.0, 32.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 254.5, 186.0, 54.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 127.0, 53.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 210.5, 117.0, 45.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-37",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.5, 19.0, 45.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 57.0, 54.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"id" : "obj-56",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 113.75, 755.04998779296875, 136.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 347.5, 324.0, 137.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "Main Volume",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "Main Volume",
							"parameter_mmax" : 6.0
						}

					}
,
					"varname" : "Volume"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 319.5, 40.299995422363281, 65.0, 22.0 ],
					"text" : "metro 250"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 319.5, 64.0, 68.0, 22.0 ],
					"text" : "random 90"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.694117647058824, 0.262745098039216, 0.262745098039216, 1.0 ],
					"checkedcolor" : [ 0.905882352941176, 0.815686274509804, 0.803921568627451, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 319.5, 11.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 400.5, 128.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-72",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 365.5, 11.0, 44.15008544921875, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 114.5, 249.0, 41.0, 22.0 ],
					"text" : "gate~"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"id" : "obj-87",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 114.5, 193.5, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.0, 128.0, 20.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 124.75, 510.0, 99.0, 510.0, 99.0, 303.0, 124.0, 303.0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 1 ],
					"source" : [ "obj-128", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 5 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 1 ],
					"source" : [ "obj-134", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 3 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 4 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 1 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"order" : 0,
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 1 ],
					"order" : 4,
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"order" : 1,
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"order" : 2,
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 3,
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"order" : 2,
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"order" : 0,
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"order" : 1,
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 0,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-16", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 212.25, 444.0, 137.5, 444.0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 1 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 124.0, 331.0, 124.0, 331.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 172.0, 415.0, 124.0, 415.0 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 124.0, 424.0, 124.0, 424.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 196.0, 435.0, 190.75, 435.0 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 148.0, 435.0, 190.75, 435.0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 220.0, 349.0, 124.0, 349.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 1 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 1 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"order" : 1,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 1,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"order" : 0,
					"source" : [ "obj-97", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 2,
					"source" : [ "obj-97", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"order" : 1,
					"source" : [ "obj-97", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"order" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"order" : 1,
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-56" : [ "Main Volume", "Main Volume", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjMagenta-1",
				"default" : 				{
					"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"fontsize" : [ 12.059008 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"bgcolor" : [ 0.996078431372549, 0.882352941176471, 0.882352941176471, 0.2 ]
	}

}
