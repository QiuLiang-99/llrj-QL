require = function loadModule(moduleDefinitions, hasBeenLoadedModulesExportValues, needLoadModuleIDList) {// 定义一个模块加载器
    function getModulesExportInMEM(needLoadModuleID) {// 加载模块的函数
        if (hasBeenLoadedModulesExportValues[needLoadModuleID]) {// 如果模块已经被加载，直接返回
            return hasBeenLoadedModulesExportValues[needLoadModuleID].exports;// 返回模块的导出对象
        }
        var moduleDefinition = moduleDefinitions[needLoadModuleID]
        if (!moduleDefinition) { // 如果模块未定义，抛出错误
            var error = new Error("Cannot find module '" + needLoadModuleID + "'");
            throw error.code = "MODULE_NOT_FOUND", error;
        }

        // Step 1: 创建一个新的模块对象，其中包含一个空的exports属性
        var aObjecttoReceiveExports = {
            exports: {}
        };

        // Step 2: 将这个新模块对象存储到loadedModules数组的指定位置
        hasBeenLoadedModulesExportValues[needLoadModuleID] = aObjecttoReceiveExports;

        // 调用模块的定义函数
        var moduleMainFunction = moduleDefinition[0];
        //就是模块里叫“e”的那个函数，用于加载模块
        moduleMainFunction(getModulesExportInMEM, aObjecttoReceiveExports, aObjecttoReceiveExports.exports);
        //如果moduleMainFunction中有给aObjecttoReceiveExports.exports赋值，则这个对象有效
        return hasBeenLoadedModulesExportValues[needLoadModuleID].exports;// 返回模块的导出对象
    }
    // 加载入口模块
    for (var index = 0; index < needLoadModuleIDList.length; index++) {
        var needLoadModuleID = needLoadModuleIDList[index];
        getModulesExportInMEM(needLoadModuleID)
    };
    return getModulesExportInMEM;
};
var moduleDefinitions = {
    NewScript: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "157ea2hkc9J8KsDAUfgUmue", "NewScript");
        cc.Class({
            extends: cc.Component,
            properties: {},
            start: function () { }
        });
        cc._RF.pop();
    }, {}],
    scr_BGM: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "8d8c2z+e3xAIqUkxCqE4NZW", "scr_BGM");
        cc.Class({
            extends: cc.Component,
            properties: {
                BGM1: {
                    url: cc.AudioClip,
                    default: null
                },
                BGM2: {
                    url: cc.AudioClip,
                    default: null
                },
                BGM3: {
                    url: cc.AudioClip,
                    default: null
                },
                BGM4: {
                    url: cc.AudioClip,
                    default: null
                }
            },
            onLoad: function () { }
        });
        cc._RF.pop();
    }, {}],
    scr_QQpay: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "fc884/pvDpG6bLBf547DI5C", "scr_QQpay");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("support3");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_achieve: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "141caSLnsJIHJZ46hPGujwi", "scr_achieve");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.color = new cc.Color(115, 115, 115);
                a.getComponent(cc.Label).overflow = 3;
                a.setContentSize(630, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 50;
                a.getComponent(cc.Label).fontSize = 32;
            },
            day: function () {
                var t = new Date(), n = parseInt(t.getTime() / 36e5);
                return parseInt(n - e("scr_data2").gameData[2]);
            },
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_data2"), a = e("scr_public"), i = t.publicVar2[2] + t.publicVar2[3] + t.publicVar2[4], c = t.itemNum2[17] + t.itemNum2[18] + t.itemNum2[20] + t.itemNum2[21] + t.itemNum2[22] + t.itemNum2[23] + t.itemNum2[24] + t.itemNum2[25], o = this.day(), r = t.choice[5] + t.publicVar[7], s = {
                    0: "【第一次】第一次击败纳兹琳",
                    1: "【dalao】声望达到99（" + t.achieve + "/99，目前版本声望系统暂未开放）",
                    2: "【非酋矿老板】被劫匪抢劫66次！（" + t.publicVar2[0] + "/66，包括66次以上，下同）",
                    3: "【非酋勘察队】前进探索999次，且啥也没找到比例超过25%！你目前一共前进探索" + i + "次，其中有" + t.publicVar2[1] + "次啥也没找到，占比" + (100 * t.publicVar2[1] / i).toFixed(1) + "%",
                    4: "【非酋流浪汉】捡p值被打10次（" + t.randomEvent[0] + "/10），翻垃圾被抢10次（" + t.publicVar2[13] + "/10）",
                    5: "【一身骚气∠( ᐛ 」∠)＿】前进探索999次，且战斗占比超过24%！你目前一共前进探索" + i + "次，其中战斗" + t.publicVar2[2] + "次（占比" + (100 * t.publicVar2[2] / i).toFixed(1) + "%），捡道具" + t.publicVar2[3] + "次（占比" + (100 * t.publicVar2[3] / i).toFixed(1) + "%），事件" + t.publicVar2[4] + "次（占" + (100 * t.publicVar2[4] / i).toFixed(1) + "%）",
                    6: "【我胃不好，只能吃软饭［理直气壮］】打劫提灯小姐姐失败10次（" + t.publicVar2[5] + "/10）！",
                    7: "【扶我起来，我还能跑】逃跑失败999次（" + t.publicVar2[6] + "/999）",
                    8: "【一个约定】“10年后，如果你还在，咱们就结婚吧！”纯狐：“嗯...”碰到纯狐49次（" + t.publicVar2[12] + "/49）！",
                    9: "【地藏杀手】击杀地藏10只或以上（" + t.kills[3] + "/10）",
                    10: "【人间之里一霸】击败幽幽子",
                    11: "【残废】触发网瘾36次（" + t.publicVar2[8] + "/36）",
                    12: "【对不起，我要做个坏人】罪恶值60（" + t.publicVar[0] + "/60）",
                    13: "【抱走爱丽丝】爱丽丝好感2000（" + t.choice[5] + "/2000）",
                    14: "【饥渴少女（爱丽丝）】“老哥，我想要...”“没有！滚~”。连续30天不喂食爱丽丝！（" + t.publicVar2[10] + "/30）",
                    15: "【真.爱】触发回到认识爱丽丝前一天后，放弃认识爱丽丝，并到达月都",
                    16: "【决心】击败通缉犯",
                    17: "【你是个好人】拥有6个人的「恶人卡」（" + t.randomEvent[1] + "/6）",
                    18: "【圣调理人】击败宇佐见堇子20次（" + t.kills[2] + "/20），并且被击败10次（" + t.publicVar2[7] + "/10）",
                    19: "【雷电法王】电疗成功40次（" + t.orderTimes[3] + "/40）",
                    20: "【收集癖】拥有999个收集类道具（" + c + "/999）",
                    21: "【就算被伤透，我依然爱着你】找工作失败49次（" + t.publicVar2[9] + "/49）",
                    22: "【生而为人，我很抱歉】拥有6个人的「眼泪」（" + t.itemNum[12] + "/6，最难成就 ）",
                    23: "【神之使者】拥有25级暗影之剑和20级银白色荣耀",
                    24: "【人狠话不多】打出99颗以上神佑珠（" + t.publicVar3[14] + "/99）",
                    25: "【表白帕露】帕露西好感5000（" + t.publicVar[7] + "/5000），且爱丽丝好感等于0",
                    26: "【调戏女神】还没想到hiahiahia(ಡωಡ)",
                    27: "【蛰居族】爱丽丝好感+帕露西达好感达6999（" + r + "/6999）",
                    28: "【天下第二】通关挑战副本",
                    29: "【真爱粉】本游戏通关6次以上（" + n.gameData[1] + "/6）",
                    30: "【作者亲爹妈】本游戏在你手机中存活达300小时（" + o + "/300）"
                }, l = {
                    0: function () {
                        return t.randomEvent[3] > 0
                    },
                    1: function () {
                        var e = 100 * t.publicVar2[1] / i;
                        return t.achieve >= 99;
                    },
                    2: function () {
                        return t.publicVar2[0] >= 66;
                    },
                    3: function () {
                        return t.publicVar2[1] >= 999;
                    },
                    4: function () {
                        return t.randomEvent[0] >= 10 && t.publicVar2[13] >= 10;
                    },
                    5: function () {
                        var e = 100 * t.publicVar2[2] / i;
                        return i >= 999 && e >= 24;
                    },
                    6: function () {
                        return t.publicVar2[5] >= 10;
                    },
                    7: function () {
                        return t.publicVar2[6] >= 999;
                    },
                    8: function () {
                        return t.publicVar2[12] >= 49;
                    },
                    9: function () {
                        return t.kills[3] >= 10;
                    },
                    10: function () {
                        return 1 == t.publicVar[5];
                    },
                    11: function () {
                        return t.publicVar2[8] >= 36;
                    },
                    12: function () {
                        return t.publicVar[0] >= 60;
                    },
                    13: function () {
                        return t.choice[5] >= 2000;
                    },
                    14: function () {
                        if (t.publicVar2[10] >= 30 || 1 == t.publicVar2[11]) {
                            t.publicVar2[11] = 1;
                            a.save();
                            return !0;
                        }
                        return !1;
                    },
                    15: function () {
                        return 300 == t.distance && n.gameData[0] > 0 && 0 == t.choice[5];
                    },
                    16: function () {
                        return t.publicVar[3] > 0;
                    },
                    17: function () {
                        return t.randomEvent[1] >= 6;
                    },
                    18: function () {
                        return t.kills[2] >= 40 && t.publicVar2[7] >= 20;
                    },
                    19: function () {
                        return t.orderTimes[3] >= 40;
                    },
                    20: function () {
                        return c >= 999;
                    },
                    21: function () {
                        return t.publicVar2[9] >= 49;
                    },
                    22: function () {
                        return t.itemNum[12] >= 6;
                    },
                    23: function () {
                        return t.itemNum2[10] >= 25 && t.itemNum2[11] >= 20;
                    },
                    24: function () {
                        return t.publicVar3[14] >= 99;
                    },
                    25: function () {
                        return t.publicVar[7] >= 5000 && t.choice[5] <= 0;
                    },
                    26: function () {
                        return t.publicVar2[9] >= 49;
                    },
                    27: function () {
                        return r >= 5999;
                    },
                    28: function () {
                        return t.choice[6] >= 16;
                    },
                    29: function () {
                        return n.gameData[1] + 1 >= 6;
                    },
                    30: function () {
                        return o >= 300;
                    }
                }, u = cc.find("Canvas/Scroll/view/content");
                for (var p in s) {
                    this.creatText(u, "skill" + p, s[p]);
                    l[p]() && (u.getChildByName("skill" + p).color = new cc.Color(255, 255, 0));
                }
                var f = cc.find("Canvas/Button_backMainUI");
                f.on("touchstart", function () {
                    cc.director.loadScene("main");
                }, f);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_public: "scr_public"
    }],
    scr_backMainUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "3e3ebJJTbNAf4EOh0d4HMO1", "scr_backMainUI");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                e("scr_public").save();
                cc.director.loadScene("main");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_public: "scr_public"
    }],
    scr_backStartUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "d5fa6dHVPtCmIx1Z7ZMSeDh", "scr_backStartUI");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("start");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_backSupport: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "210d2Bb6a1Dho5//c333ltz", "scr_backSupport");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("support");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_continueButton: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "4ffa5hmUdNEyJa2jWF2c0nr", "scr_continueButton");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                JSON.parse(cc.sys.localStorage.getItem("userData")) && cc.director.loadScene("main");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_data2: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "77dc9QHo3RF5IGfGNhXskkd", "scr_data2");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var e = {
                    initMoney: 0,
                    dieChoice: [0, 0, 0, 0, 0],
                    gameData: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    gameData2: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                };
                JSON.parse(cc.sys.localStorage.getItem("data2")) && function (e) {
                    "undefined" == typeof e.gameData && (e.gameData = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                    "undefined" == typeof e.gameData2 && (e.gameData2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                }(e = JSON.parse(cc.sys.localStorage.getItem("data2")));
                t.exports = e;
            }
        });
        cc._RF.pop();
    }, {}],
    scr_dataCopy: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "44ab5HIdTVLaYk0L5S0uxkB", "scr_dataCopy");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var e = {};
                "undefined" == typeof JSON.parse(cc.sys.localStorage.getItem("dataCopy")) && (e = JSON.parse(cc.sys.localStorage.getItem("userData")));
                t.exports = e;
            }
        });
        cc._RF.pop();
    }, {}],
    scr_data: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "cc6a6czpoJOeJjLRi9RcHDb", "scr_data");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var e = {
                    distance: 1,
                    stayDay: [1, 1, 1, 1],
                    role: {
                        hp: 50,
                        maxHp: 50,
                        att: 10,
                        def: 0
                    },
                    money: 0,
                    day: 0,
                    energy: 50,
                    maxEnergy: 50,
                    hunger: 120,
                    maxHunger: 120,
                    health: 6,
                    achieve: 0,
                    shopPoint: 0,
                    enemyId: 0,
                    publicVar: [0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    publicVar2: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    publicVar3: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    orderTimes: [0, 0, 0, 0, 0, 0, 0, 0],
                    randomEvent: [0, 0, 0, 0, 0, 0, 0, 99, 588, 0, 0, 0, 0, 0],
                    choice: [2, 0, 0, 0, 0, 0, 0, 0, 0],
                    chioce2: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    kills: [0, 0, 0, 0],
                    itemNum: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    itemNum2: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    ifFollow: [0, 0],
                    plotId: 0,
                    talkTimes: [0, 0],
                    choiceAtt: 0,
                    button: [!0, !1, !1],
                    figthState: 0,
                    figthExp: [0, 0, 0],
                    workExp: 0,
                    winTimes: 0,
                    escapeExp: 0,
                    buffState: [0, 0],
                    ifNotify: !1,
                    skillLv: {
                        0: 0,
                        1: 0,
                        2: 0,
                        3: 0,
                        4: 0,
                        5: 0,
                        6: 0,
                        7: 0,
                        8: 0,
                        9: 0,
                        10: 0,
                        11: 0,
                        12: 0,
                        13: 0,
                        14: 0,
                        15: 0,
                        16: 0,
                        17: 0,
                        18: 0,
                        19: 0,
                        20: 0,
                        21: 0,
                        22: 0,
                        23: 0,
                        24: 0,
                        25: 0,
                        26: 0
                    },
                    specialEnemy: {
                        100001: {
                            lv: 1,
                            hp: 20,
                            maxHp: 20,
                            att: 1,
                            def: 0
                        },
                        100002: {
                            lv: 25,
                            hp: 875,
                            maxHp: 875,
                            att: 0,
                            def: 0
                        },
                        200001: {
                            lv: 8,
                            hp: 310,
                            maxHp: 310,
                            att: 20,
                            def: 0
                        },
                        300001: {
                            lv: 20,
                            hp: 510,
                            maxHp: 510,
                            att: 0,
                            def: 0
                        },
                        300002: {
                            lv: 45,
                            hp: 1550,
                            maxHp: 1550,
                            att: 0,
                            def: 0
                        },
                        300003: {
                            lv: 35,
                            hp: 3270,
                            maxHp: 3270,
                            att: 0,
                            def: 0
                        },
                        400001: {
                            lv: 100,
                            hp: 3345,
                            maxHp: 3345,
                            att: 0,
                            def: 234
                        },
                        400002: {
                            lv: 199,
                            hp: 19999,
                            maxHp: 19999,
                            att: 0,
                            def: 20
                        },
                        400003: {
                            lv: 60,
                            hp: 2050,
                            maxHp: 2050,
                            att: 310,
                            def: 121
                        },
                        900001: {
                            lv: 15,
                            hp: 575,
                            maxHp: 575,
                            att: 59,
                            def: 16
                        },
                        900002: {
                            lv: 20,
                            hp: 998,
                            maxHp: 998,
                            att: 50,
                            def: 36
                        },
                        900003: {
                            lv: 500,
                            hp: 16500,
                            maxHp: 16500,
                            att: 1500,
                            def: 1150
                        },
                        900004: {
                            lv: 1,
                            hp: 999999,
                            maxHp: 999999,
                            att: 999,
                            def: 0
                        },
                        900005: {
                            lv: 500,
                            hp: 599999,
                            maxHp: 599999,
                            att: 0,
                            def: 0
                        },
                        900006: {
                            lv: 200,
                            hp: 299999,
                            maxHp: 299999,
                            att: 0,
                            def: 0
                        },
                        900007: {
                            lv: 40,
                            hp: 3900,
                            maxHp: 3900,
                            att: 90,
                            def: 50
                        }
                    },
                    friendSkill1: [1, 0, 0, 0, 0],
                    friendSkill2: [1, 0, 0, 0, 0],
                    friendSkill: [1, 0, 0, 0, 0, 0, 0, 0, 0]
                };
                JSON.parse(cc.sys.localStorage.getItem("userData")) && function (e) {
                    "undefined" == typeof e.itemNum2[18] && (e.itemNum2[18] = 0);
                    "undefined" == typeof e.itemNum2[19] && (e.itemNum2[19] = 0);
                    "undefined" == typeof e.itemNum2[20] && (e.itemNum2[20] = 0);
                    "undefined" == typeof e.itemNum2[21] && (e.itemNum2[21] = 0);
                    "undefined" == typeof e.itemNum2[22] && (e.itemNum2[22] = 0);
                    "undefined" == typeof e.itemNum2[23] && (e.itemNum2[23] = 0);
                    "undefined" == typeof e.itemNum2[24] && (e.itemNum2[24] = 0);
                    "undefined" == typeof e.itemNum2[25] && (e.itemNum2[25] = 0);
                    "undefined" == typeof e.itemNum2[26] && (e.itemNum2[26] = 0);
                    "undefined" == typeof e.itemNum2[27] && (e.itemNum2[27] = 0);
                    "undefined" == typeof e.ifFollow && (e.ifFollow = [0, 0]);
                    "undefined" == typeof e.talkTimes && (e.talkTimes = [0, 0]);
                    "undefined" == typeof e.friendSkill1 && (e.friendSkill1 = [1, 0, 0, 0, 0]);
                    "undefined" == typeof e.friendSkill2 && (e.friendSkill2 = [1, 0, 0, 0, 0]);
                    "undefined" == typeof e.friendSkill && (e.friendSkill = [1, 0, 0, 0, 0, 0, 0, 0]);
                    "undefined" == typeof e.choice[6] && (e.choice[6] = 0);
                    "undefined" == typeof e.choice[7] && (e.choice[7] = 0);
                    "undefined" == typeof e.choice[8] && (e.choice[8] = 0);
                    "undefined" == typeof e.choice[8] && (e.choice[9] = 0);
                    "undefined" == typeof e.chioce2 && (e.chioce2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                    "undefined" == typeof e.plotId && (e.plotId = 0);
                    "undefined" == typeof e.escapeExp && (e.escapeExp = 0);
                    "undefined" == typeof e.randomEvent[11] && (e.randomEvent[11] = 0);
                    "undefined" == typeof e.randomEvent[12] && (e.randomEvent[12] = 0);
                    "undefined" == typeof e.randomEvent[13] && (e.randomEvent[13] = 0);
                    "undefined" == typeof e.publicVar && (e.publicVar = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                    "undefined" == typeof e.publicVar2 && (e.publicVar2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                    "undefined" == typeof e.publicVar3 && (e.publicVar3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                    "undefined" == typeof e.specialEnemy[300001] && (e.specialEnemy[300001] = {
                        lv: 35,
                        hp: 510,
                        maxHp: 510,
                        att: 0,
                        def: 0
                    });
                    "undefined" == typeof e.specialEnemy[300002] && (e.specialEnemy[300002] = {
                        lv: 45,
                        hp: 1550,
                        maxHp: 1550,
                        att: 0,
                        def: 0
                    });
                    "undefined" == typeof e.specialEnemy[300003] && (e.specialEnemy[300003] = {
                        lv: 35,
                        hp: 3270,
                        maxHp: 3270,
                        att: 0,
                        def: 0
                    });
                    "undefined" == typeof e.specialEnemy[400001] && (e.specialEnemy[400001] = {
                        lv: 100,
                        hp: 3345,
                        maxHp: 3345,
                        att: 0,
                        def: 234
                    });
                    "undefined" == typeof e.specialEnemy[400002] && (e.specialEnemy[400002] = {
                        lv: 199,
                        hp: 19999,
                        maxHp: 19999,
                        att: 0,
                        def: 20
                    });
                    "undefined" == typeof e.specialEnemy[400003] && (e.specialEnemy[400003] = {
                        lv: 60,
                        hp: 2050,
                        maxHp: 2050,
                        att: 310,
                        def: 121
                    });
                    "undefined" == typeof e.specialEnemy[900001] && (e.specialEnemy[900001] = {
                        lv: 15,
                        hp: 575,
                        maxHp: 575,
                        att: 59,
                        def: 16
                    });
                    "undefined" == typeof e.specialEnemy[900002] && (e.specialEnemy[900002] = {
                        lv: 20,
                        hp: 998,
                        maxHp: 998,
                        att: 50,
                        def: 36
                    });
                    "undefined" == typeof e.specialEnemy[900003] && (e.specialEnemy[900003] = {
                        lv: 500,
                        hp: 16500,
                        maxHp: 16500,
                        att: 1500,
                        def: 1150
                    });
                    "undefined" == typeof e.specialEnemy[900004] && (e.specialEnemy[900004] = {
                        lv: 1,
                        hp: 999999,
                        maxHp: 999999,
                        att: 999,
                        def: 0
                    });
                    "undefined" == typeof e.specialEnemy[900005] && (e.specialEnemy[900005] = {
                        lv: 500,
                        hp: 599999,
                        maxHp: 599999,
                        att: 0,
                        def: 0
                    });
                    "undefined" == typeof e.specialEnemy[900006] && (e.specialEnemy[900006] = {
                        lv: 200,
                        hp: 299999,
                        maxHp: 299999,
                        att: 0,
                        def: 0
                    });
                    "undefined" == typeof e.specialEnemy[900007] && (e.specialEnemy[900007] = {
                        lv: 40,
                        hp: 3900,
                        maxHp: 3900,
                        att: 90,
                        def: 50
                    });
                }(e = JSON.parse(cc.sys.localStorage.getItem("userData")));
                t.exports = e;
            }
        });
        cc._RF.pop();
    }, {}],
    scr_diaryDetermine: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "12297Yy5bdDErxPgTf9kaM9", "scr_diaryDetermine");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("rest");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_diary: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "a2b8155a0tO3ILQFxW/6pRv", "scr_diary");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(3));
                a.color = new cc.Color(255, 0, 255);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 60;
                a.getComponent(cc.Label).fontSize = 40;
            },
            playBGM: function (e) {
                if ("undefined" != typeof e && "" != e) {
                    cc.audioEngine.stopAll();
                    var t = cc.game._persistRootNodes;
                    for (var n in t) var a = t[n].getComponent("scr_BGM")[e];
                    cc.audioEngine.play(a, !1, 1);
                }
            },
            ifEnd: function () {
                e("scr_data").day > 80 && cc.director.loadScene("end");
            },
            onLoad: function () {
                var t = cc.find("Canvas/skip"), n = e("scr_public");
                t.on("touchstart", function () {
                    cc.director.loadScene("rest");
                }, this);
                n.ifGameOver();
                t.runAction(cc.fadeTo(3, 150));
                var a = e("scr_data"), i = {
                    1005: ["16年前，1988年一个炎热的下午，", "我出生在人间之里。", "发生了一场异变。", "是博丽的先代巫女告诉我的。", "BGM1", []],
                    1009: ["所有人都疯狂了", "可能还有极少数保持清醒的人，", "如果那些人能帮我就好了；", "虽然我知道这次行动非常危险，", "但是有一点奇怪的…", "所有人打败我都不会下死手", "算了，到了人间之里再去想吧...", "BGM3", []],
                    1010: ["我是作者，希望你能喜欢我的改版并推荐给其他人", "", []],
                    1011: ["外面太危险了，不过为什么，我和其他人都没事呢", "人间之里不知道变得怎么样了，", "如果我像灵梦一样强大就好了", "BGM3", []],
                    2002: ["那是！！！", "我在街上看到了我的「好兄弟」杰克！", "我屮", "（提示，杰克是本游戏最屑的怪，并且会陪伴你很长很长一段时间）", "BGM2", []],
                    2007: ["我来到昨天面试的小区，", "屋里早已没了朱鹭子的影子，被坑了...不过没关系，解决异变要紧", "", [a.choice[1], 2]],
                    2021: ["未成年，没技能，不善言谈...", "所以我要成为英雄，", "不然连死了都没有人知道", "BGM3", []],
                    2022: ["今天街道上聚集了一群人，", "我凑过去一看，", "——我的好兄弟——正被旁人拉着，他满脸通红，对着一个年轻人大声叫骂，", "他为什么会变得如此暴躁？难道（异变会影响到人类）。", "我不敢多想，赶紧离开了。", "我决定，明天就离开人间之里，待在这里可能会被影响，还是赶紧去月都吧。", "BGM1", []],
                    3001: ["山里异常安静，", "晚上湿度很大，篝火没法驱散。", "我喜欢这种安静，", "——这里才是我的世界，但是，不能被这景象给诱惑了。", "BGM2", []],
                    3002: ["在人间之里遇到了慧音老师，", "她没有被异变影响，她在想办法把被异变影响的人给恢复过来，", "而我，被她拜托查出异变的元凶。", "或者，", "又是紫？...", "", []],
                    3003: ["不过现在想这些也没有用，", "毕竟现在我连县城都还没到。", "敌人越来越强了，现在....有点想放弃了。", "", []],
                    3004: ["由于生活习惯极差，", "造就了我的生物钟，", "每天早上0点睡，5~6点醒。", "但是，现在看起来暂时是好事。", "", []],
                    3018: ["不知道邻村怎么样了", "算了，解决主犯之后应该会恢复吧。", "然而，", "我真的，能打得过吗，", "月都应该是主犯的所在", "“不然为什么越接近月都敌人越强！......”", "", []],
                    3027: ["月光透过树叶，映入艹房，", "斑驳的树影，在夏虫声中轻轻摇曳。", "我，", "真的可以脱开一切关系，而独自存活吗？", "", []],
                    3028: ["世界上有这么一类人，", "即使明知某种关系不健康，", "却依然难以舍弃。", "这是亲情、爱情、无奈、还是无知呢？", "", []],
                    4001: ["迷宫般的大都会，让我有些彷徨。", "我把绯探羽睡袋安置在月都外围附近的一个桥洞里，", "桥洞已经下住着位射命丸文、一对美咲和一个芙兰朵露", "", []],
                    4002: ["美咲和芙兰朵露认识。", "红美铃上午出去，咲夜下午和晚上出去，留下的一个在家看着芙兰朵露。", "芙兰朵露要么睡觉，要么整天发呆...", "", []],
                    4003: ["一天，我忍不住好奇去问咲夜。", "咲夜说“芙兰朵露的能力太危险了”", "“出去要是沾染是异变就完了”，", "“为了大家，只能暂时牺牲芙兰朵露的自由了！”，", "“那你有什么关于异变的线索吗”，咲夜摇头...", "", []],
                    4004: ["射命丸文，情报多，但是不容易接近。", "但是，只要有p值和电池，就可以吸引射命丸文。", "呵呵，和某巫女，像极了", "", []],
                    4005: ["露西每天都是早出晚归，", "睡觉时，稍有响动，她就会立即就会坐起来，像是害怕什么似的。", "", []],
                    4006: ["射命丸文对我和露西很感兴趣，但是应该只是职业病，想采访调查我们。", "她聊天的内容无非是，“你要制造异变吗，如果要记得让我第一个采访你”，“但是每次回答玩问题之后，刚想问她情报，射命丸文就闪走了”，........。", "", []],
                    4007: ["“下定决心后”", "“哎，你干什么！请不要这样抱着住我，这样我会很困扰的”，射命丸文认真的说道。", "“我想让你听我说完话再走”", "“好吧...先放开我，「幻想风靡」，”“可恶，又让她逃了”", "", []],
                    4008: ["“明明是能正常交流的人，却拒绝与我交流”", "“射命丸文真就是自我主义者吗”，泽诺开始制定计划", "“但是，我有点想放弃了......”，大家今天的新闻出来了！，", "“震惊，一名男子竟然对记者图谋不轨，如果不是相机拍下这一切，恐怕就没人知道了”你顿时就没了放弃的念头.......", "", []],
                    4009: ["再次找到文文，但是文文像什么也没有发生一样采访我被登上新闻的感觉", "（为了计划，只能先配合采访了）", "采访结束了，我尝试邀请文文到我家”", "文文想都没想就同意了...", "", []],
                    4010: ["你就不担心我不是什么正常人吗", "“什么？”“随便和几乎是陌生人的人回家”“难道有什么事....哎，害，抱着住我是没有的.......???这是”“放心好了，只是用绳子把你翅膀绑起来了而已”“真阴险啊”“记得谁说过阴险是艺术来着的”“......”", "", []],
                    4011: ["“我真是服了你了，在别人家还能过得这么坦然”", "“正好可以当休假嘛~”", "“你这也是......你该不会是不知道有关异变的事吧”“我射命丸文怎么可能不知道，但是很抱歉先生，激将法对我没用”", []],
                    4012: ["一把推倒文文“快说，有关异变点情报，不然我就.......”", "“算了吧，你来之前我就调查过你了，正义感很强，不会做坏事”", "“这是开可是你逼我的啊”", []],
                    4013: ["“石头剪刀布...这把不算，三局两胜”", "“好了好了，别比了，都51局26胜了，你一局都没赢过”", "“.........”", []],
                    4014: ["嗯？嗯？？嗯？？？发生什么事了，我怎么被绑床上了，", "抱歉啊，泽诺先生，休息日结束了，我要回去工作了，异变不是人引起的，是一个老熟人引起的", "那你倒是给我松绑啊，等我工作完", "", []],
                    4015: ["果不其然，今天的报纸上推出了《震惊，某男子竟将新闻记者记者困在自己家中长达10天》", "如果放在平常，我已经身败名裂只能换个星球生活了，但是现在是异变期间，没几个人会关注，加上射命丸文本来就是做虚假宣传的", "别人只会以外射命丸文是一个连自己绯闻都炒的狼灭”", "不过为了以防万一，我要把所有关于我的报纸都回收...", "", []],
                    4016: ["就在我收集了大半部分报纸的时候，我看到了一个绿色头发撑着伞的贵妇模样的人", "我记得我在射命丸文的报纸上看到过，这是被射命丸文命名为「花田悍妇」的强大妖怪", "不过看上去并没有受异变的影响", "文文那边的线索已经有了，不知道这等强大的存在会不会有什么更加厉害的线索，于是我上前搭话（危）", "", []],
                    4017: ["我大步上前，挡在了那位悍妇面前，刚要开口，看到对方正用看垃圾一样的眼神看我，并释放出威压，顿时我整个人愣在原地", "“滚开，肮脏的爬虫”", "身体不由自主得让出一条路", "我感觉到，对方都没用正眼看我一下.....回过神来，人已经不见了", "", []],
                    4018: ["“........”还是找一些我能沟通的吧，没想到射命丸文的新闻竟然对了一次", "“博丽神社↗”我看到一块牌子，心想：博丽神社什么时候在月都也开了一家分社，搞不好是假的", "但是可能是异变把博丽神社移到月都了？", "艹，在哪里是博丽神社啊，看我拆了它", "等等，不要动手嘛，有话好好说””你是，小铃仙？？", "", []],
                    4019: ["对对对，是我是我，有话好好说", "你们居然敢伪造博丽神社，被博丽灵梦发现了恐怕是会被拆得尸骨无存", "“不会的不会的，我们已经得到授权了””那博丽灵梦敲了你们多少“", "上次博丽灵梦从我们师匠这抢了两整个残机就跑去退治异变了，然后没还，就拿这个做抵押了", "听说早苗她们对这个报酬很帕露，我们就收下了，正好可以赚点p点更新家具", "", []],
                    4020: ["“但是你是怎么看出来的呢，明明我们都对外面宣传：没有污秽的地面神社了”", "“......你看看，博丽神社有这些吗，崭新的家具，最新的东方虹龙洞，这些博丽神社有吗，问问你有吗”", "铃仙底下了头“我们只是想让神社看起来像神社而已””，我竟无言以对", "差点忘了正事，你有关于这次异变的线索吗", "这个我知道一点，异变是由一个周围都是怨念的家伙引起的", "", []],
                    4021: ["射命丸文来找我，问我现在的调查状况", "“不清楚，就是不知道花田妖怪也没有什么信息”，我说。", "“啊，那个啊 我调查过了，那一天，你说的花田妖怪，也就是风见幽香就只是被月夜见邀请去商讨地月停战协议，不过似乎不是很顺利”", "“那你有什么异变的情报吗”", "“我现在打听到似乎是紫引起的（可信度：50%），你觉得呢”，射命丸文眼神似乎有些疑惑。", "", []],
                    4022: ["“我觉得不太可能，毕竟一开始是她为我提供的资源，可能是河童开发出了能影响别人心智的大范围仪器？，听说他们好几年前就开始研究这种可以震慑别人的武器了（可信度：30%）（从现在开始我并不会告诉你什么，你只能自己推测）", "“但是，听说那个河童精神干扰计划报废了...所以并不太可能”", "", []],
                    4023: ["此时正值九月中旬，桥边红色的梧桐落叶上、开始泛起点点露珠，桥下也开始显得阴冷起来。", "疯狂的人们，对异变无关心的射命丸文，迷茫的少年，心事重重的吉他女孩，未知的主谋。", "每一个异变的解决都不简单，我的磨难又算得了什么？现在能做的，只有加油（干劲+10%）", "", []],
                    4024: ["露西似乎也想帮助我们一起调查，但是因为一些原因无法帮助我们", "“也许不只可以在这里调查”射命丸文如此说到，我可以带你去人里找人帮忙”，我们来到了香霖堂，遇到了乡长，但是他什么也不知道，一脸中二的挥舞从魔理沙那骗来的草薙剑，还说这要成为比妖梦更强的剑客", "", []],
                    4025: ["之前又遇到了爱丽丝，在异变发生的时候，爱丽丝的家莫名其妙被移到了月都，当然，不只是爱丽丝", "所有被转移到月都的人都吃了永琳特制的暂时压制污秽的药", "不过过不了多久就会被发现，所以要快点解决异变，按照爱丽丝留下的地址，我来到了爱丽丝家", "（开门）爱丽丝家感觉大变样，看上去像里三层楼外三层的，就像是等着我来挑战一样....", "", []],
                    4026: ["射命丸文要走了，不过射命丸文不想走。", "大天狗有一件急事要找射命丸文，听说是饭纲丸龙太久不见射命丸文闹着不工作", "不一会儿，就来了一道间隙，射命丸文被罪袋绑架了，这一切发生的太快，我猛然惊醒，就像做完一场梦，之后大概只有我一个人调查了，算了，先去找爱丽丝吧，灵梦似乎可以反弹一下攻击，帕秋莉想要看看我也没有p值", "", []],
                    4027: ["而魔理沙....看来真的得靠自己的实力了，不过打赢魔理沙后应该就可以带走小爱了吧（听说还有神崎）（80%）", "（先想办法多弄点攻击再说吧）", "（如果打不过可以试试喝⑨弄一个暴躁再去打）（当然还是要看运气）", "（反正我测试的时候魔理沙还是有点弱）", "", []],
                    4028: ["找到小爱了，小爱似乎等我很久了“怎么这么晚才来，哼”", "“唔，抱歉抱歉，我没想到魔理沙是动真格的”", "“好啦，看在你送我回来的份上，我就原谅你了”爱丽丝递给我一本书", "“这是？”“小铃的妖魔书，之前魔理沙借来没还，也许对你有点用处”“就是说还要我还回去？”“嗯呐”“......”", "", []],
                    4029: ["啊啊啊啊啊啊，我要疯了！！！", "一边做游戏还要一边打arc啊啊啊啊啊啊啊啊", "我要疯了！！！！！啊啊啊啊啊啊啊啊", "我不做人了！！！！！！！！！！啊啊啊啊啊啊啊啊！！！！（20210703）（20：35）", "", []],
                }[function () {
                    var t = e("scr_public").regionId(), n = a.stayDay, i = 0;
                    1e3 == t && (i = 1e3 + n[0]);
                    2e3 == t && (i = 2e3 + n[1]);
                    3e3 == t && (i = 3e3 + n[2]);
                    4e3 == t && (i = 4e3 + n[3]);
                    a.day > 143 && (i = a.day);
                    return i;
                }()];
                if ("undefined" == typeof i) cc.director.loadScene("rest"); else {
                    var c = i.pop();
                    i.pop();
                    if (0 == c.length || c[0] >= c[1]) {
                        var o = i.length, r = this, s = 1, l = cc.find("Canvas/Layout"), u = cc.find("Canvas/Determine");
                        window.setTimeout(function () {
                            r.creatText(l, "plot0", i[0]);
                        }, 500);
                        this.schedule(function () {
                            this.creatText(l, "plot" + s, i[s]);
                            s++;
                        }, 3, o - 2);
                        this.scheduleOnce(function () {
                            u.active = !0;
                            u.runAction(cc.fadeIn(2));
                        }, 3 * o);
                    } else cc.director.loadScene("rest");
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_eatButton: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "c5f14lLVmRA6r8LzGX0k1Ik", "scr_eatButton");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("eat");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_eatUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "d3b81KfDgxIVoCTL1xk+Q03", "scr_eatUI");
        cc.Class({
            extends: cc.Component,
            properties: {
                itemUI: {
                    default: null,
                    type: cc.Prefab
                }
            },
            itemContent: function () {
                var t = this;
                this.data = e("scr_data");
                var n = 3 * this.data.orderTimes[1] - this.data.orderTimes[4] + 5;
                1 == this.data.publicVar[1] && (n = 5 + 1 * this.data.orderTimes[1] - this.data.orderTimes[4]);
                var a = {
                    0: {
                        itemName: " 土块 ",
                        needDes: "※拥有：" + this.data.itemNum[0],
                        des: "※效果：饥饿+20，15%几率恢复1点健康值",
                        ifEnough: function (t) {
                            e("scr_data").itemNum[0] > 0 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/button/name").color = new cc.color(153, 204, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = n.itemNum[0], o = i.maxHunger();
                            if (n.hunger < o) if (c >= 1) {
                                var r = "饥饿+20", s = 100 * Math.random();
                                n.itemNum[0] -= 1;
                                n.hunger += 20;
                                n.orderTimes[5] += 1;
                                if (s < 15) {
                                    n.health += 1;
                                    r += "，健康值+1";
                                }
                                i.save();
                                a.playText("Canvas/notify", r + "！", 100);
                                t.delayCreatItemUI1();
                            } else a.playText("Canvas/notify", "道具不足！", 100); else a.playText("Canvas/notify", "已经吃不下了！", 100);
                        }
                    },
                    1: {
                        itemName: " 高级土 ",
                        needDes: "※拥有：" + this.data.itemNum2[0],
                        des: "※效果：饥饿+80",
                        ifEnough: function (t) {
                            e("scr_data").itemNum2[0] > 0 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/button/name").color = new cc.color(255, 153, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = n.itemNum2[0], o = i.maxHunger();
                            if (n.hunger < o) if (c >= 1) {
                                n.itemNum2[0] -= 1;
                                n.hunger += 80;
                                n.orderTimes[2] += 1;
                                i.save();
                                a.playText("Canvas/notify", "饥饿+80！", 60);
                                t.delayCreatItemUI1();
                            } else a.playText("Canvas/notify", "道具不足！", 100); else a.playText("Canvas/notify", "已经吃不下了！", 100);
                        }
                    },
                    2: {
                        itemName: " 急支糖浆 ",
                        needDes: "※拥有：" + this.data.itemNum2[1],
                        des: "※效果：恢复" + (15 + this.data.orderTimes[0]) + "残机值，且每次使用恢复量永久提高1点",
                        ifEnough: function (t) {
                            e("scr_data").itemNum2[1] > 0 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/button/name").color = new cc.color(0, 204, 255));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 15 + n.orderTimes[0], o = n.itemNum2[1], r = n.role.hp, s = i.role.maxHp();
                            if (r < s) if (o >= 1) {
                                n.itemNum2[1] -= 1;
                                n.role.hp += c;
                                n.role.hp > s && (n.role.hp = s);
                                n.orderTimes[0] += 1;
                                i.save();
                                a.playText("Canvas/notify", "Hp+" + c, 60);
                                t.delayCreatItemUI1();
                            } else a.playText("Canvas/notify", "道具不足！", 100); else a.playText("Canvas/notify", "残机已达最大值！", 100);
                        }
                    },
                    3: {
                        itemName: " 电池 ",
                        needDes: "※拥有：" + this.data.itemNum2[7] + "（你当前网瘾为" + n + "%）",
                        des: "※效果：减少1点健康。恢复全部的精力、饥饿和残机！解除【网瘾】BUFF！(慎用)",
                        ifEnough: function (t) {
                            e("scr_data").itemNum2[7] > 0 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/button/name").color = new cc.color(255, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = (n.orderTimes[1],
                                n.itemNum2[7]);
                            n.orderTimes[1];
                            if (c >= 1) {
                                n.health -= 1;
                                n.itemNum2[7] -= 1;
                                n.energy = i.maxEnergy();
                                n.role.hp = i.role.maxHp();
                                n.hunger = i.maxHunger();
                                n.orderTimes[1] += 1;
                                n.skillLv[4] = 0;
                                n.itemNum[7] += 1;
                                i.save();
                                a.playText("Canvas/notify", "健康-1，精力/残机/饥饿恢全恢复！获得电池小碎片*1", 100);
                                t.delayCreatItemUI1();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    5: {
                        itemName: "贤明·正直LV" + this.data.itemNum2[1000],
                        needDes: "※特殊转换「咸鱼道具」",
                        des: "※每级降低50攻击增加100防御“泽诺的贤明正直权杖的一项功能”",
                        button: function () {
                            n.playText("Canvas/notify", "", 100);
                        }
                    },
                    6: {
                        itemName: "理性·慎重LV" + this.data.itemNum2[1001],
                        needDes: "※特殊转换「咸鱼道具」",
                        des: "※每级转换100攻击和100防御为1000血量，“泽诺的贤明理想·慎重权杖的一项功能，通过流失理性来得到增加血量”",
                        button: function () {
                            n.playText("Canvas/notify", "", 100);
                        }
                    },
                    7: {
                        itemName: " 勇气·坚毅 ",
                        needDes: "※需【神佑珠】拥有：" + this.data.itemNum2[14] + "",
                        des: "※攻击力＋30",
                        ifEnough: function (e) {
                            t.data.itemNum2[14] >= 1 && (cc.find("Canvas/Page/view/content/page_2/" + e + "/button/name").color = new cc.color(227, 23, 13));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum2[14] >= 1) {
                                n.itemNum2[14] -= 1;
                                n.role.att += 30;
                                i.save();
                                a.playText("Canvas/notify", "攻击力＋30", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    4: {
                        itemName: " 皮⑨ ",
                        needDes: "※拥有：" + this.data.itemNum2[12],
                        des: "※效果：恢复31精力，并获得一个【p点】。10%几率，开罐有奖！30%几率获得【暴躁】状态（伤害增加30%，战后一定几率消失）",
                        ifEnough: function (t) {
                            e("scr_data").itemNum2[12] > 0 && (cc.find("Canvas/Page/view/content/page_2/" + t + "/button/name").color = new cc.color(129, 60, 33));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum2[12] >= 1) {
                                var c = 100 * Math.random(), o = 100 * Math.random(), r = "精力+31，获得【p点】*1";
                                n.itemNum2[12] -= 1;
                                n.energy += 31;
                                n.itemNum[2] += 1;
                                if (c >= 90 && c < 97) {
                                    n.itemNum2[12] += 1;
                                    r += "，恭喜再来一瓶！";
                                }
                                if (c >= 97) {
                                    n.money += 10;
                                    r += "，恭喜获得1元大奖！";
                                }
                                if (o < 30) {
                                    n.buffState[0] = 1;
                                    r += "，获得【暴躁】！";
                                }
                                i.save();
                                a.playText("Canvas/notify", r, 100);
                                t.delayCreatItemUI2();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    }
                };
                return a;
            },
            creatPrefab: function (e, t) {
                var n = cc.instantiate(this.itemUI), a = this.itemContent()[e], i = a.button, c = "item" + e;
                n.name = c;
                n.getChildByName("button").getChildByName("name").getComponent("cc.Label").string = a.itemName;
                n.getChildByName("need").getComponent("cc.Label").string = a.needDes;
                n.getChildByName("des").getComponent("cc.Label").string = a.des;
                n.getChildByName("button").getChildByName("name").getComponent("cc.Button").scheduleOnce(function () {
                    n.getChildByName("button").getChildByName("name").on("touchstart", i, this);
                }, .4);
                cc.find("Canvas/Page/view/content").getChildByName(t).addChild(n);
                "undefined" != typeof a.ifEnough && a.ifEnough(c);
            },
            creatItemUI1: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_1").removeAllChildren();
                for (var e = 0; e <= 3; e++) this.creatPrefab(e, "page_1");
            },
            creatItemUI2: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_2").removeAllChildren();
                for (var e = 4; e <= 7; e++) this.creatPrefab(e, "page_2");
            },
            creatItemUI3: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_3").removeAllChildren();
                for (var e = 8; e <= 11; e++) this.creatPrefab(e, "page_3");
            },
            initText: function () {
                var t = e("scr_data"), n = e("scr_public");
                cc.find("Canvas/hunger").getComponent("cc.Label").string = "饥饿：" + t.hunger + "/" + n.maxHunger() + "  精力：" + t.energy + "/" + n.maxEnergy() + "  残机：" + t.role.hp + "/" + n.role.maxHp();
            },
            delayCreatItemUI1: function () {
                this.scheduleOnce(this.creatItemUI1, .01);
            },
            delayCreatItemUI2: function () {
                this.scheduleOnce(this.creatItemUI2, .01);
            },
            delayCreatItemUI3: function () {
                this.scheduleOnce(this.creatItemUI3, .01);
            },
            onLoad: function () {
                this.creatItemUI1();
                this.creatItemUI2();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_effect: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "25c8dKmEHlHoYjQ6qvBKaef", "scr_effect");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var e = this, n = {
                    playText: function (e, t, n) {
                        var a = 0;
                        cc.game.startPlay && window.clearTimeout(cc.game.startPlay);
                        (function i() {
                            if (null != cc.find(e)) if (a <= t.length) {
                                var c = t.slice(0, a++);
                                cc.find(e).getComponent("cc.Label").string = c;
                                n = 6;
                                cc.game.startPlay = window.setTimeout(i, n);
                            } else cc.game.startPlay && window.clearTimeout(cc.game.startPlay);
                        })();
                    },
                    textZoon: function (e) {
                        var t = cc.sequence(cc.scaleTo(.2, 1.3), cc.scaleTo(.2, 1));
                        cc.find(e).runAction(t);
                    },
                    blink2: function (e) {
                        var t = cc.sequence(cc.tintBy(.1, 0, -200, -200), cc.tintBy(.1, 0, 200, 200));
                        cc.find(e).runAction(t);
                    },
                    blink: function (t) {
                        var n = 0;
                        e.schedule(function () {
                            var e = n % 2;
                            cc.find(t).color = new cc.Color(255, 255 - 200 * e, 255 - 200 * e);
                            n++;
                        }, .06, 4);
                    },
                    textZoon2: function (e) {
                        cc.find(e).setScale(0, 0);
                        var t = cc.sequence(cc.scaleTo(.2, 1.3), cc.scaleTo(.1, 1));
                        cc.find(e).runAction(t);
                    },
                    attackEfect1: function () {
                        var e = cc.find("Canvas/Text").children, t = cc.find("Canvas/Fight").children;
                        for (var n in e) {
                            var a = 500 * Math.random() - 300, i = 1e3 * Math.random() - 500;
                            e[n].x = a;
                            e[n].y = i;
                        }
                        for (var c in t) {
                            var o = 500 * Math.random() - 300, r = 1e3 * Math.random() - 500;
                            t[c].x = o;
                            t[c].y = r;
                        }
                    }
                };
                t.exports = n;
            }
        });
        cc._RF.pop();
    }, {}],
    scr_end: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "0fdab+YcARFVIOBpUAMxsNQ", "scr_end");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(3));
                a.color = new cc.Color(255, 255, 0);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 0;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 50;
                a.getComponent(cc.Label).fontSize = 36;
            },
            onLoad: function () {
                var t = ["正式开始全职制作游戏已有大半年，我并不担心自己的生存问题，但是对于能否长期做下去却感到有些焦虑。", "国产独立游戏的发展其实上是取决于玩家（或者说市场），而不是开发商或者平台（有市场才会有平台，有平台才会有开发商...）。虽然可能短期内不会有太大问题，但是能否长期、甚至终身坚持，我不是很确定，因为有太多难以控制的因素掺杂。不过，至少目前我会坚持下去——我的目标是打造文字游戏精品品牌。", "如果你真的喜欢独立游戏，恳求您推荐给周围的人————我真的需要你的帮助。", "我是晓风。（2017.10.1）"], n = (t.length,
                    this), a = e("scr_data2"), i = e("scr_data"), c = 0, o = cc.find("Canvas/Show"), r = cc.find("Canvas/choice"), s = r.getChildByName("determine1"), l = r.getChildByName("determine2"), u = e("scr_public");
                (function () {
                    var e = i.choice[5] + i.publicVar[7];
                    if (0 == a.gameData[3]) {
                        a.gameData[1] += 1;
                        a.gameData[3] = 1;
                    }
                    e >= 799 && (a.gameData[5] = 1);
                    u.save2();
                })();
                e("scr_data2").gameData[4] = 0;
                e("scr_public").save2();
                function p() {
                    n.creatText(o, "plot" + c, t[c]);
                    c++;
                }
                (function () {
                    window.setInterval(function () {
                        var t = {
                            2000: function () {
                                p();
                            },
                            5000: function () {
                                p();
                            },
                            8000: function () {
                                p();
                            },
                            11000: function () {
                                p();
                            },
                            15000: function () {
                                (function () {
                                    r.active = !0;
                                    r.runAction(cc.fadeIn(2));
                                    s.on("touchstart", f, this);
                                    l.on("touchstart", d, this);
                                })();
                            }
                        };
                        "undefined" != typeof t[e += 1e3] && t[e]();
                    }, 1e3);
                    var e = 0;
                })();
                function f() {
                    u.save2();
                    cc.director.loadScene("start");
                }
                function d() {
                    u.save2();
                    JSON.parse(cc.sys.localStorage.getItem("userData")) && cc.sys.localStorage.removeItem("userData");
                    cc.director.loadScene("start");
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_public: "scr_public"
    }],
    scr_enemy: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "9ca7eoc05dELIgnx18JSNGI", "scr_enemy");
        function a(e, t, n) {
            t in e ? Object.defineProperty(e, t, {
                value: n,
                enumerable: !0,
                configurable: !0,
                writable: !0
            }) : e[t] = n;
            return e;
        }
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var n, i = e("scr_public"), c = e("scr_data"), o = {
                    maxHp: i.role.maxHp(),
                    att: i.role.att(),
                    def: i.role.def()
                }, r = {
                    0: {
                        name: "魔理沙",
                        lv: 99,
                        hp: 400,
                        maxHp: 400,
                        att: 50,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 10,
                        enemyEscapeRate: 0,
                        lostHealth: 30,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 1, 2, 1], [20, 2, 1, 1], [5, 3, 1, 1], [100, 99, 1, 3]],
                        des: "遭到怪物袭击！",
                        skill: function () {
                            c.money -= 1;
                            c.role.hp -= 1;
                            return "【你被偷走0.1元,hp-1】！";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: function () {
                            e("scr_data").money -= 1;
                            return "被抢0.1元！";
                        }
                    },
                    1: {
                        name: "露米娅",
                        lv: 9,
                        hp: 100,
                        maxHp: 100,
                        att: 0,
                        def: 5,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[60, 0, 1, 1], [40, 1, 1, 2], [20, 35, 1, 2]],
                        des: "我要你的血！",
                        skill: function () {
                            var t = Math.max(5 - o.def, 0);
                            e("scr_data").role.hp -= t * 2;
                            this.hp += t * 2;
                            return "【你被吸取" + t * 2 + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    2: {
                        name: "神炎（作者）",
                        lv: 3,
                        hp: 1000,
                        maxHp: 1000,
                        att: 0,
                        def: 5,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 40,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 3, 2, 1]],
                        des: "这游戏贼简单！",
                        skill: function () {
                            var t = e("scr_data");
                            this.publicVar += 1;
                            t.itemNum[0] += 2;
                            return "【" + this.name + "神炎施舍给你了一些道具，你受到0点伤害】你获得【土块*2】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3: {
                        name: "因幡帝",
                        lv: 17,
                        hp: 300,
                        maxHp: 300,
                        att: 39,
                        def: 1,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[55, 3, 1, 1], [55, 1, 1, 2], [1, 51, 1, 2]],
                        des: "狩猎开始了！",
                        skill: void 0,
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    4: {
                        name: "铃仙",
                        lv: 8,
                        hp: 800,
                        maxHp: 800,
                        att: 25,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 60,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[50, 3, 1, 1], [50, 1, 1, 2], [20, 27, 1, 2], [1, 51, 1, 2]],
                        des: "阴险不是卑鄙而是艺术！",
                        skill: function () {
                            var t = Math.max(30 - o.def, 0);
                            this.publicVar += 1;
                            var n = t * this.publicVar;
                            e("scr_data").role.hp -= n;
                            return "【幻惑：每回合损失" + n + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    21: {
                        name: "小碎骨",
                        lv: 8,
                        hp: 600,
                        maxHp: 900,
                        att: 50,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 0, 1, 1], [50, 1, 1, 2]],
                        des: "vi vvi o o o",
                        skill: function () {
                            var t = Math.max(32 - o.def, 0);
                            e("scr_data").role.hp -= t;
                            return "【" + this.name + "使用「粉碎」，你损失" + t + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 2;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    22: {
                        name: "毛玉",
                        lv: 33,
                        hp: 700,
                        maxHp: 1300,
                        att: 70,
                        def: 30,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[70, 99, 2, 3], [70, 1, 1, 2]],
                        des: "“总有一天我会比你强！”",
                        skill: void 0,
                        defSkill: function () {
                            if (100 * Math.random() < 25) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                return "【" + this.name + "使用「擦弹」！】";
                            }
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    23: {
                        name: "圣白莲",
                        lv: 56,
                        hp: 800,
                        maxHp: 800,
                        att: 80,
                        def: 15,
                        publicVar: 0,
                        escapeRate: 60,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 0, 1, 2], [50, 1, 1, 2], [10, 23, 1, 2]],
                        des: "“兄弟，这是命莲寺的地盘~”",
                        skill: void 0,
                        defSkill: function () {
                            var t = e("scr_public"), n = t.role.att() - t.role.def();
                            if (100 * Math.random() < 25) {
                                e("scr_data").role.hp -= n;
                                return "【" + this.name + "使用「摩托车」，你损失" + n + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    24: {
                        name: "八坂神奈子",
                        lv: 20,
                        hp: 900,
                        maxHp: 900,
                        att: 0,
                        def: 30,
                        publicVar: 0,
                        escapeRate: 80,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[70, 0, 3, 3], [70, 1, 1, 2], [15, 17, 1, 2]],
                        des: "“守矢是最强的”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * this.hp - o.def, 0));
                            t.role.hp -= n;
                            return "【" + this.name + "使用「信仰」，你受到" + n + "点伤害】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    25: {
                        name: "zun",
                        lv: 65,
                        hp: 3000,
                        maxHp: 6000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[70, 99, 1, 3], [70, 1, 1, 2], [5, 21, 1, 2]],
                        des: "“别跑！还不快回家喝酒去！”",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            t = e("scr_data");
                            this.publicVar += 1;
                            if (this.publicVar <= 3) {
                                if (n < 75) return "【" + this.name + "zun操起酒瓶，向你打来！但是被你躲开啦~】";
                                t.role.hp -= 999;
                                return "【你被酒瓶击中！损失999点残机！】";
                            }
                            this.hp -= 9999;
                            return "";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            return "【" + this.name + "气急败坏！一瓶打在自己脑门上，晕了过去\n_8(:з」∠)_】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data");
                            e("scr_public");
                            t.role.hp = o.maxHp;
                            return "【你被带到zun家，zun给你无酒精皮⑨。然后，被放了出来...残机全恢复！】";
                        }
                    },
                    26: {
                        name: "依神女苑",
                        lv: 17,
                        hp: 700,
                        maxHp: 1200,
                        att: 0,
                        def: 40,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 40,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 8, 3]],
                        des: "“请领取您的工资”",
                        skill: function () {
                            e("scr_data").money += 1;
                            return "【" + this.name + "女苑给了你一些p点，p值加0.1】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    27: {
                        name: "博丽灵梦",
                        lv: 45,
                        hp: 1000,
                        maxHp: 1600,
                        att: 100,
                        def: 20,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 3,
                        getAtt: 1,
                        drop: [[100, 11, 2, 1]],
                        des: "“这里不许睡觉！听到没！”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(4.9 * Math.random());
                            if (0 == n) {
                                var a = 2 * this.att;
                                t.role.hp -= a;
                                return "【城管使用「真皮皮鞋」，踢中了你的屁股，你损失" + a + "点残机！】";
                            }
                            if (1 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 30;
                                return "【城管使用「38元皮鞋」，踢中了你的腹部，你降低30点防御！】";
                            }
                            if (2 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 30;
                                return "【城管使用「铁鞋」，踢中了你的胳膊，你降低30点攻击！】";
                            }
                            if (3 == n) {
                                this.publicVar += 2;
                                a = this.att * this.publicVar;
                                t.role.hp -= a;
                                return "【城管使用「碎骨鞋」，踢中了你的脸部，你的脸上开始流血，损失" + a + "点残机！】";
                            }
                            if (4 == n) {
                                a = 5 * this.att;
                                t.role.hp -= a;
                                return "【城管使用「破鞋」，踢中了你的蛋蛋，你受到" + a + "点伤害！】";
                            }
                        },
                        defSkill: function () {
                            var e = parseInt(.3 * (this.maxHp - this.hp)), t = 100 * Math.random(), n = "";
                            this.hp += e;
                            if (t < 40) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                n = "【城管使用「八卦炉」！】";
                            }
                            return "【城管使用「急救」，恢复" + e + "点残机】" + n;
                        },
                        winEvent: void 0,
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.itemNum[7] > 0 && (t.itemNum[7] -= 1);
                            return "【你被抢走1个..电池小碎片..】";
                        }
                    },
                    28: {
                        name: "圣德太子",
                        lv: 25,
                        hp: 1000,
                        maxHp: 2335,
                        att: 90,
                        def: 30,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[60, 4, 2, 1], [60, 1, 2, 1], [60, 1, 2, 2]],
                        des: "“要不要加入我们神灵庙，等等，你身上有圣白莲的气息”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(1.2 * (120 - o.def)), a = parseInt(.15 * this.hp);
                            this.hp -= a;
                            t.role.hp -= n;
                            return "【" + this.name + "使用「圣德之光」，你损失" + n + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    29: {
                        name: "杰克",
                        lv: 30,
                        hp: 800,
                        maxHp: 800,
                        att: 0,
                        def: 200,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[80, 99, 5, 3], [70, 48, 1, 2]],
                        des: "“好兄弟，我这里又搞到一批好东西，便宜卖你怎么样”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                if (c.money >= 15) {
                                    c.money -= 15;
                                    c.itemNum[1] += 10;
                                    this.enemyEscapeRate += 30;
                                    return "【杰克拿走了你1.5元，得到绯想碎片*10】";
                                }
                                c.itemNum2[21] -= 1;
                                c.itemNum2[21] < 0 && (c.itemNum2[21] = 0);
                                this.enemyEscapeRate += 100;
                                return "【“杰克使用「打劫」”。你失去「提灯小姐姐の胖次」*1】";
                            }
                            if (c) {
                                this.escapeRate -= 30;
                                this.enemyEscapeRate += 5;
                                return "【杰克使用「强力胶」，你逃跑率-30%！】";
                            }
                        },
                        defSkill: function () {
                            c.itemNum[0] += 1;
                            var e = parseInt(.1 * o.att);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= e;
                            return "【杰克丢给你一个土块，你获得「土块」*1，你攻击降低" + e + "！】";
                        },
                        winEvent: function () {
                            return "【“好兄弟，下次我还会再来的”】";
                        },
                        lostEvent: void 0
                    },
                    31: {
                        name: "大鲶",
                        lv: 16,
                        hp: 1700,
                        maxHp: 1700,
                        att: 90,
                        def: 30,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 0, 1, 1], [100, 1, 1, 2]],
                        des: "遭到怪物袭击！",
                        skill: function () {
                            var t = 100 * Math.random(), n = e("scr_data");
                            if (t < 15) {
                                this.enemyEscapeRate += 20;
                                if (n.itemNum[0] >= 1) {
                                    n.itemNum[0] -= 1;
                                    this.publicVar += 1;
                                }
                                return "【你被吃掉「土块」*1】！";
                            }
                            return "";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").itemNum[0] += this.publicVar;
                            return "【你抢回被吃的土块（(•̀⌄•́)）】";
                        },
                        lostEvent: void 0
                    },
                    32: {
                        name: "小野冢小町",
                        lv: 24,
                        hp: 3000,
                        maxHp: 6000,
                        att: 70,
                        def: 80,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 3, 1, 1], [100, 1, 1, 2]],
                        des: "我来收割灵魂了",
                        skill: function () {
                            var t = 100 * Math.random(), n = e("scr_data");
                            if (t < 20) {
                                var a = Math.max(3 * (120 - o.def), 0);
                                n.role.hp -= a;
                                return "【小野冢小町使用「冲撞」！你被小町撞飞啦！你损失" + a + "点残机！】";
                            }
                            this.hp -= 120;
                            return "【小野冢小町使用「冲撞」！撞到树上啦！小町损失120点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    33: {
                        name: "缺急支糖浆治病的魔理沙",
                        lv: 32,
                        hp: 2000,
                        maxHp: 2000,
                        att: 200,
                        def: 200,
                        publicVar: 0,
                        escapeRate: 60,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 2, 2]],
                        des: "“十分抱歉，要借一点急支糖浆(´,,•∀•,,`)”",
                        skill: function () {
                            var t = 100 * Math.random(), n = e("scr_data");
                            if (t < 30) {
                                if (n.itemNum[1] > 0) {
                                    this.publicVar += 1;
                                    n.itemNum[1] -= 1;
                                    this.enemyEscapeRate += 20;
                                    return "【你的急支糖浆被偷啦！" + this.name + "准备要溜！】";
                                }
                                return "";
                            }
                            return "";
                        },
                        defSkill: function () {
                            if (30 < 100 * Math.random()) {
                                var e = parseInt(.1 * this.maxHp);
                                this.hp += e;
                                this.def += 20;
                                return "【" + this.name + "使用「猥琐2」，防御+20，残机+" + e + "】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            e("scr_data").itemNum2[1] += this.publicVar;
                            return "【你抢回全部急支糖浆】";
                        },
                        lostEvent: void 0
                    },
                    34: {
                        name: "z猩人",
                        lv: 45,
                        hp: 2300,
                        maxHp: 2335,
                        att: 240,
                        def: 70,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 4, 2, 1], [50, 1, 2, 1], [25, 1, 2, 2], [20, 26, 1, 2]],
                        des: "“在杀戮中，我终将绽放”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(1.5 * (300 - o.def)), a = parseInt(.15 * this.hp);
                            this.hp -= a;
                            t.role.hp -= n;
                            return "【" + this.name + "使用「拼命2」，你损失" + n + "点残机，" + this.name + "损失" + a + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    35: {
                        name: "魂魄妖忌",
                        lv: 60,
                        hp: 3300,
                        maxHp: 3300,
                        att: 180,
                        def: 100,
                        publicVar: 0,
                        escapeRate: 80,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 3, 2, 1], [100, 1, 2, 2]],
                        des: "发现一只妖忌老爷子（「舍身神剑」：自身当前血量越高，伤害越高）",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * this.hp - o.def, 0));
                            t.role.hp -= n;
                            return "【妖忌使用「舍身神剑」，你受到" + n + "点伤害】";
                        },
                        defSkill: function () {
                            this.def += 30;
                            return "【妖忌使用「剑柱护体」，增加30点防御】";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    36: {
                        name: "琪露诺",
                        lv: 999,
                        hp: 99999,
                        maxHp: 99999,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 1,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“呜呜呜~（琪露诺因为智商测试而哭）”",
                        skill: function () {
                            this.publicVar += 1;
                            if (5 == this.publicVar) {
                                this.hp -= 999999;
                                return "【琪露诺自杀了！】";
                            }
                            return "【琪露诺正在哭~】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = this.maxHp - this.hp - 999999, n = Math.max(Math.min(Math.round(t / 500 + 1), 4), 1);
                            e("scr_data").itemNum[0] += n;
                            return "【琪露诺自杀了！你对琪露诺造成" + t + "点伤害，获得琪露诺遗物【土块】*" + n + "】";
                        },
                        lostEvent: void 0
                    },
                    37: {
                        name: "杰克",
                        lv: 60,
                        hp: 3000,
                        maxHp: 3000,
                        att: 0,
                        def: 400,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[80, 99, 5, 3], [70, 48, 1, 2]],
                        des: "“好兄弟，我这里又搞到一批好东西，便宜卖你怎么样”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                if (c.money >= 20) {
                                    c.money -= 20;
                                    c.itemNum[9] += 1;
                                    this.enemyEscapeRate += 30;
                                    return "【杰克拿走了你2元，得到神械残骸*1】";
                                }
                                c.itemNum2[21] -= 1;
                                c.itemNum2[21] < 0 && (c.itemNum2[21] = 0);
                                this.enemyEscapeRate += 100;
                                return "【“杰克使用「打劫」”。你失去「提灯小姐姐の胖次」*1】";
                            }
                            if (c) {
                                this.escapeRate -= 30;
                                this.enemyEscapeRate += 5;
                                return "【杰克使用「强力胶」，你逃跑率-30%！】";
                            }
                        },
                        defSkill: function () {
                            c.itemNum[0] += 1;
                            var e = parseInt(.1 * o.att);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= e;
                            return "【杰克丢给你一个土块，你获得「土块」*1，你攻击降低" + e + "！】";
                        },
                        winEvent: function () {
                            return "【“好兄弟，下次我还会再来的”】";
                        },
                        lostEvent: void 0
                    },
                    41: {
                        name: "草根妖怪",
                        lv: 28,
                        hp: 3600,
                        maxHp: 3999,
                        att: 0,
                        def: 120,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[40, 0, 3, 1], [1, 12, 1, 1]],
                        des: "“我们草根妖怪团结起来一点可以战胜一切”",
                        skill: function () {
                            this.publicVar += 1;
                            var e = Math.pow(this.publicVar, 2), t = 20 * e, n = Math.pow(this.publicVar + 1, 2) - e;
                            c.role.hp -= t;
                            this.hp += 50 * n;
                            return "【" + e + "个草根妖怪向你袭！你损失" + t + "点残机！（" + n + "个新妖怪加入战斗！）】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    42: {
                        name: "铃仙2号",
                        lv: 40,
                        hp: 5000,
                        maxHp: 5000,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: 60,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[80, 0, 1, 1], [2, 47, 1, 2], [1, 51, 1, 2]],
                        des: "“你是谁，为什么会在月都”",
                        skill: function () {
                            var e = 100 * Math.random(), t = 4 * Math.random() + 2;
                            if (e < 70) {
                                this.publicVar += 1;
                                if (this.publicVar < t) {
                                    if (100 * Math.random() < 50) {
                                        c.money += 1;
                                        return "【铃仙2号给了你1毛p值，想让你离开】";
                                    }
                                    var n = 599 - o.def;
                                    c.role.hp -= n;
                                    return "【“离开这里！”。铃仙2号咬了你一口，你损失" + n + "点残机！】";
                                }
                                n = 599 - o.def;
                                c.role.hp -= n;
                                return "【“快离开这！”。铃仙2号咬了你一口，你损失" + n + "点残机！】";
                            }
                            this.hp -= 200;
                            return "【“你身上有污秽”。铃仙2号残机-200！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    43: {
                        name: "十六夜咲夜",
                        lv: 50,
                        hp: 2077,
                        maxHp: 2500,
                        att: 900,
                        def: 300,
                        publicVar: 0,
                        escapeRate: 60,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[60, 99, 2, 3], [40, 1, 1, 2], [20, 45, 1, 2]],
                        des: "“吼？没有逃跑，反而逐渐向我靠近了吗？”",
                        skill: function () {
                            var e = 100 * Math.random();
                            if (e < 20) {
                                c.money > 0 && (c.money -= 1);
                                return "【咲夜使用银怀表《砸挖撸多》。你损失1毛p值！】";
                            }
                            if (e < 80) {
                                var t = 399 - o.def;
                                c.role.hp -= t;
                                return "【咲夜向你甩出一把「银质飞刀」。你损失" + t + "点残机！】";
                            }
                            c.role.hp += 99;
                            return "【咲夜向你飞出一个《大小姐的胖次》。你恢复99点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    44: {
                        name: "比那名居天子",
                        lv: 70,
                        hp: 9000,
                        maxHp: 9000,
                        att: 0,
                        def: 1200,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[25, 99, 2, 3], [20, 27, 1, 2], [10, 39, 1, 2]],
                        des: "“我又来闹事了~桀桀桀桀桀~！”",
                        skill: function () {
                            c.role.hp -= 400;
                            return "【天子使用「绯想剑」你损失400点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(382 - .3 * o.att);
                            this.hp += e;
                            return "【天子使用「要石治疗！」，恢复" + e + "点残机！】";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    45: {
                        name: "橙喵~",
                        lv: 30,
                        hp: 3000,
                        maxHp: 5200,
                        att: 500,
                        def: 99,
                        publicVar: 0,
                        escapeRate: 60,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 2, 3], [2, 49, 1, 2]],
                        des: "“~~~~~~”",
                        skill: function () {
                            if (c.money >= 1) {
                                c.money -= 1;
                                return "【橙在你身上蹭了蹭，你被摸走1毛p值！】！";
                            }
                            var e = Math.max(600 - o.def, 0);
                            c.role.hp -= e;
                            this.enemyEscapeRate += 100;
                            return "【“竟然没有p值了喵~！”你损失" + e + "点残机！】";
                        },
                        defSkill: function () {
                            this.escapeRate -= 10;
                            return "【橙喵使用「抱抱！」你逃跑几率-10%！】！";
                        },
                        winEvent: function () {
                            return "【“哼~”】！";
                        },
                        lostEvent: void 0
                    },
                    46: {
                        name: "杰克",
                        lv: 60,
                        hp: 6000,
                        maxHp: 6000,
                        att: 0,
                        def: 1200,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[80, 99, 5, 3], [70, 48, 1, 2]],
                        des: "“好兄弟，我这里又又又搞到一批好东西，便宜卖你怎么样”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                if (c.money >= 40) {
                                    c.money -= 40;
                                    c.itemNum[8] += 1;
                                    this.enemyEscapeRate += 30;
                                    return "【杰克拿走了你4元，得到黑曜石*1】";
                                }
                                c.itemNum2[21] -= 1;
                                c.itemNum2[21] < 0 && (c.itemNum2[21] = 0);
                                this.enemyEscapeRate += 100;
                                return "【“杰克使用「打劫」”。你失去「提灯小姐姐の胖次」*1】";
                            }
                            if (c) {
                                this.escapeRate -= 30;
                                this.enemyEscapeRate += 5;
                                return "【杰克使用「强力胶」，你逃跑率-30%！】";
                            }
                        },
                        defSkill: function () {
                            c.itemNum[0] += 1;
                            var e = parseInt(.1 * o.att);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= e;
                            return "【杰克丢给你一个土块，你获得「土块」*1，你攻击降低" + e + "！】";
                        },
                        winEvent: function () {
                            return "【“好兄弟，下次我还会再来的”】";
                        },
                        lostEvent: void 0
                    },
                    1001: {
                        name: "永江衣玖",
                        lv: 70,
                        hp: 15000,
                        maxHp: 15000,
                        att: 0,
                        def: 600,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[80, 3, 1, 1], [2, 64, 1, 2]],
                        des: "滋溜~滋溜~",
                        skill: function () {
                            var t = Math.max(220 - o.def, 0) + 30;
                            this.publicVar += 1;
                            var n = t * this.publicVar;
                            e("scr_data").role.hp -= n;
                            return "【雷电：每回合损失" + n + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    1002: {
                        name: "清兰",
                        lv: 90,
                        hp: 12000,
                        maxHp: 12000,
                        att: 800,
                        def: 300,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 2, 3], [2, 44, 1, 2], [1, 51, 1, 2]],
                        des: "“喔~~呵~呵~呵~”",
                        skill: function () {
                            var e = 100 * Math.random();
                            if (e < 30) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.5 * o.att);
                                return "【清兰使用「挠痒痒」，你笑得像个二愣子，攻击下降一半！】";
                            }
                            if (e < 70) {
                                if (c.money > 0) {
                                    c.money -= 1;
                                    return "【清兰使用「光速贴近」，你损失0.1元！】";
                                }
                                this.enemyEscapeRate += 100;
                                return "【清兰使用「光溜~(光速溜走)」！】";
                            }
                            this.def += 60;
                            return "【清兰使用「喵盾~」，防御+60！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    1003: {
                        name: "住吉三神",
                        lv: 120,
                        hp: 13000,
                        maxHp: 13000,
                        att: 0,
                        def: 400,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 0, 1, 2], [100, 1, 1, 2], [5, 26, 1, 2], [2, 42, 1, 2]],
                        des: "“小伙，来热热身子？”",
                        skill: function () {
                            var e = Math.max(parseInt(650 + 50 * this.publicVar - .5 * o.def), 0);
                            c.role.hp -= e;
                            return "【三神使用「穿心.气合」，你损失" + e + "点残机，大叔攻击提高！】";
                        },
                        defSkill: function () {
                            var t = e("scr_public").role.att();
                            if (100 * Math.random() < 30) {
                                c.role.hp -= t;
                                return "【中筒之男使用「反震.碎骨」，你损失" + t + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    2001: {
                        name: "123（哆来咪）",
                        lv: 105,
                        hp: 50000,
                        maxHp: 50000,
                        att: 2000,
                        def: 800,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 8,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[30, 0, 1, 1], [30, 0, 1, 1], [30, 0, 1, 1], [30, 0, 1, 1], [3, 21, 1, 2], [20, 32, 1, 2], [1, 51, 1, 2]],
                        des: "“(づ◡ど)”",
                        skill: function () {
                            var e = parseInt(.2 * c.role.hp + 50);
                            c.role.hp -= e;
                            return "【123使用「食梦」，你损失" + e + "点残机(当前残机的20%)！】";
                        },
                        defSkill: function () {
                            c.role.hp -= 233;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 99;
                            return "【123使用「造梦」，你降低99点攻击，233点残机！】";
                        },
                        winEvent: function () {
                            return "“呜呜呜~我只是想找个人玩玩嘛（*＾ワ＾*）”";
                        },
                        lostEvent: function () {
                            return "“泽诺，记得再过来玩哈~\(≧▽≦)/~”";
                        }
                    },
                    2002: {
                        name: "早苗",
                        lv: 125,
                        hp: 10000,
                        maxHp: 10000,
                        att: 0,
                        def: 3000,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[80, 99, 5, 3]],
                        des: "“你好，我是守矢神社的巫女，要买神奈子大人或是诹访子大人的手办吗！”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                if (c.money >= 4) {
                                    c.money -= 4;
                                    c.itemNum[4] += 1;
                                    this.enemyEscapeRate += 30;
                                    return "【早苗使用「嘴强王者」，你消费了0.4元，获得赠品「探女の羽毛」*1！】";
                                }
                                c.itemNum[4] -= 3;
                                c.itemNum[4] < 0 && (c.itemNum[4] = 0);
                                this.enemyEscapeRate += 100;
                                return "【“早苗使用「打劫」”。你失去「土块」*3】";
                            }
                            if (c) {
                                this.escapeRate -= 30;
                                this.enemyEscapeRate += 5;
                                return "【早苗使用「抱大腿」，你逃跑率-30%！】";
                            }
                        },
                        defSkill: function () {
                            c.itemNum[0] += 1;
                            var e = parseInt(.1 * o.att);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= e;
                            return "【早苗丢给你一个土块，你获得「土块」*1，你攻击降低" + e + "！】";
                        },
                        winEvent: function () {
                            return "【“不买就算了(´,,•∀•,,`)~你的p值我不还啦~有本事你报警去呀~”】";
                        },
                        lostEvent: void 0
                    },
                    2003: {
                        name: "四季映姬",
                        lv: 155,
                        hp: 60000,
                        maxHp: 80000,
                        att: 2000,
                        def: 800,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[30, 7, 1, 1], [30, 1, 1, 2], [30, 1, 1, 2], [5, 17, 1, 2], [60, 31, 1, 2]],
                        des: "“充满罪恶的人类啊，让我来减轻你的罪行吧”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 != 0) {
                                var e = parseInt(o.def), t = parseInt(.2 * this.def * this.publicVar);
                                c.role.hp -= e + t;
                                return "【四季使用「说教」，你损失" + e + "，附加" + t + "点流血！】";
                            }
                            var n = parseInt(this.def * this.publicVar);
                            c.role.hp -= n;
                            return "【四季使用「断罪」，你损失" + n + "点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(.5 * this.def);
                            c.role.hp -= e;
                            this.def += 99;
                            return "【四季使用「罪袋」，防御增加99，你受到" + e + "反弹伤害！】";
                        },
                        winEvent: function () {
                            return "“人类，你的罪行又增加了”";
                        },
                        lostEvent: function () {
                            return "“你的罪行减轻了，人类”";
                        }
                    },
                    2666: {
                        name: "稀神探女",
                        lv: 155,
                        hp: 1400000,
                        maxHp: 1400000,
                        att: 12000,
                        def: 30000,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[30, 7, 1, 1], [30, 1, 1, 2], [30, 1, 1, 2], [5, 17, 1, 2], [5, 65, 1, 2], [60, 31, 1, 2]],
                        des: "“真当我不会生气是吧！/暴怒的祸乱之人--------稀神探女袭来！”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 != 0) {
                                var e = parseInt(o.def), t = parseInt(.2 * this.def * this.publicVar);
                                c.role.hp -= e + t;
                                return "【探女使用祝符「不伤之躯」，你损失" + e + "，附加" + t + "点流血！】";
                            }
                            var n = parseInt(this.def * this.publicVar);
                            c.role.hp -= n;
                            return "【探女使用言符「口舌之乱」，你损失" + n + "点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(.5 * this.def);
                            c.role.hp -= e;
                            this.def += 9999;
                            return "【探女使用羽毛祝福，防御增加9999，你受到" + e + "反弹伤害！】";
                        },
                        winEvent: function () {
                            e("scr_data").itemNum[4] += 15
                            return "“阿巴阿巴.......别打了别打了.....探女拔了几根羽毛给你，得到「探女的羽毛」*15”";
                        },
                        lostEvent: function () {
                            c.money -= parseInt(.7 * c.money);
                            return "“哼，看你还欺不欺负我”说完这句话，探女走到你身边，拿走了你70%的钱";
                        }
                    },
                    2004: {
                        name: "灾灵梦",
                        lv: 195,
                        hp: 70000,
                        maxHp: 70000,
                        att: 2500,
                        def: 1200,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 0, 1, 2], [10, 14, 1, 2], [30, 33, 1, 2]],
                        des: "“新来的，保护费没交？”",
                        skill: function () {
                            if (480 == this.def) {
                                var e = parseInt(this.publicVar * o.att * .2 + this.att - o.def), t = parseInt(.08 * o.def);
                                c.role.hp -= e;
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= t;
                                return "【灾灵梦使用「梦想封印」！你受到" + e + "点伤害，防御-" + t + "！】";
                            }
                            return "";
                        },
                        defSkillfunction: function () {
                            if (100 * Math.random() < 25) {
                                this.publicVar += 1;
                                if (480 == this.def) {
                                    this.def += 480;
                                    this.att -= 480;
                                    return "【灾灵梦启动「节操护体」，防御+480，攻击-480，气势+1！】";
                                }
                                this.def += 480;
                                this.att -= 680;
                                return "【灾灵梦启动「梦想天生」，防御-480，攻击+480，气势+1！】";
                            }
                            if (this.def > 480) {
                                var e = parseInt(this.publicVar * o.def * .4 + .2 * this.def), t = parseInt(.08 * o.att);
                                c.role.hp -= e;
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= t;
                                return "【灾灵梦使用「御币」！你受到" + e + "点伤害，攻击-" + t + "！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            c.money += 15;
                            return "“你把灵梦的发卡抢了去卖”【获得1.5元】";
                        },
                        lostEvent: function () {
                            c.money -= parseInt(.1 * c.money);
                            return "“你永远都学不乖？”【你损失10%p值！】";
                        }
                    },
                    2005: {
                        name: "绵月依姬",
                        lv: 85,
                        hp: 16000,
                        maxHp: 16000,
                        att: 0,
                        def: 500,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 99, 2, 3], [6, 27, 1, 2], [6, 26, 1, 2], [2, 50, 1, 2], [1, 51, 1, 2]],
                        des: "“我的实力一定会超过月夜见大人的！”「特注：随天数成长型对手」",
                        skill: function () {
                            var e = c.day;
                            if (e < 120) {
                                var t = cc.find("Event/scr_fight").getComponent("scr_fight").correct[1], n = parseInt(4 * e + .05 * o.maxHp - o.def - t);
                                c.role.hp -= n;
                                return "【绵月依姬使用「晴空霹雳.一段！」，你受到" + n + "点伤害】";
                            }
                            if (e < 150) {
                                var a = 2 * (c.day - 90);
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= a;
                                t = cc.find("Event/scr_fight").getComponent("scr_fight").correct[1], n = parseInt(4 * e + .05 * o.maxHp - o.def - t);
                                c.role.hp -= n;
                                return "【绵月依姬使用「晴空霹雳.二段！」，你受到" + n + "点伤害，防御减少" + a + "！】";
                            }
                            a = parseInt(.1 * o.maxHp);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= a;
                            var i = parseInt(.1 * o.maxHp);
                            t = cc.find("Event/scr_fight").getComponent("scr_fight").correct[1], n = parseInt(4 * e + .05 * o.maxHp - o.def - t);
                            c.role.hp -= n;
                            this.hp += a;
                            return "【绵月依姬使用「晴空霹雳.三段！」，你受到" + n + "点伤害，防御减少" + a + "，少女恢复" + i + "点残机！】";
                        },
                        defSkill: function () {
                            var e = 100 * Math.random(), t = c.day - 90;
                            if (t < 40) {
                                if (e < t) {
                                    cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                    return "【绵月依姬使用「幻影旋风.一段！」】";
                                }
                                return "";
                            }
                            if (t < 65) {
                                if (e < t) {
                                    var n = parseInt(.3 * o.def);
                                    this.def += n;
                                    cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                    return "【绵月依姬使用「幻影旋风.二段！」，少女增加" + n + "点防御！】";
                                }
                                return "";
                            }
                            if (e < t) {
                                n = parseInt(.3 * o.def);
                                var a = parseInt(.7 * o.att);
                                this.def += n;
                                c.role.hp -= a;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                return "【绵月依姬使用「幻影旋风.三段！」，少女增加" + n + "点防御！你受到" + a + "点反弹伤害！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            return "“我一定会更强的！”";
                        },
                        lostEvent: void 0
                    },
                    2006: {
                        name: "星幽剑士·矜羯罗",
                        lv: 880,
                        hp: 4486767,
                        maxHp: 4646464,
                        att: 100000,
                        def: 50000,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 14, 2, 2], [100, 22, 2, 2]],
                        des: "“来迎接你的终结吧”",
                        skill: function () {
                            if (100 * Math.random() < 50) {
                                var e = parseInt(.80 * c.role.hp);
                                c.role.hp -= e;
                                return "【" + this.name + "使用「星幽斩」！你损失" + e + "点残机！】";
                            }
                            e = parseInt(.80 * (o.maxHp - c.role.hp));
                            c.role.hp -= e;
                            return "【" + this.name + "使用断刃击」！你损失" + e + "点残机)！】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < 30 + 15 * this.publicVar) {
                                this.publicVar += 1;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "触发技能「看破」，无视了你这次攻击】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            return "“不错，我认可你了”";
                        },
                        lostEvent: void 0
                    },
                    870: {
                        name: "咸鱼",
                        lv: 150,
                        hp: 8,
                        maxHp: 8,
                        att: 6000,
                        def: 6,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 99, 2, 3], [50, 27, 1, 2], [5, 38, 1, 2]],
                        des: "“我是第1届兼第5届挑战的获胜者，我来挑战你了/”",
                        skill: function () {
                            c.role.hp -= 3000;
                            return "【咸鱼使用「天丛云剑」你损失3000点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(3 - .3 * o.att);
                            this.hp += e;
                            return "【咸鱼使用「便携式圣水」，恢复" + e + "点残机！】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "咸鱼大佬见打不过，逃跑了！";
                        },
                        lostEvent: void 0
                    },
                    871: {
                        name: "咸鱼",
                        lv: 150,
                        hp: 8,
                        maxHp: 8,
                        att: 6000,
                        def: 6,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 99, 2, 3], [50, 27, 1, 2], [5, 38, 1, 2]],
                        des: "“你你你.......你不要过来啊！！！”",
                        skill: function () {
                            c.role.hp -= 3000;
                            return "【咸鱼使用「天丛云剑」你损失3000点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(3 - .3 * o.att);
                            this.hp += e;
                            return "【咸鱼使用「便携式圣水」，恢复" + e + "点残机！】";
                        },
                        winEvent: function () {
                            e("scr_data").role.att += 60;
                            e("scr_data").role.def += 60;
                            e("scr_data").maxEnergy -= 25;
                            e("scr_data").hunger += 500;
                            e("scr_data").choice[6] += 1;
                            e("scr_data").maxhunger += 50;
                            e("scr_data").choice[5] += 300;
                            return "你把咸鱼大佬烤了吃，在鱼肚子里发现一颗珍珠，你把珍珠送给了小爱，，饥饿值增加500，饥饿上限增加50，，小爱好感度增加300！得到！「咸鱼剑」！";
                        },
                        lostEvent: void 0
                    },
                    2007: {
                        name: "月夜见",
                        lv: 100000,
                        hp: 8000000,
                        maxHp: 8000000,
                        att: 40000,
                        def: 80000,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 3,
                        getAtt: 1,
                        drop: [[20, 11, 2, 1], [10, 51, 1, 2]],
                        des: "“以你的实力不足以我拔刀「月夜见只使用刀鞘与你对战」”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(4.9 * Math.random());
                            if (0 == n) {
                                var a = 2 * this.att;
                                t.role.hp -= a;
                                return "【月夜见使用「神刀」，你损失" + a + "点残机！】";
                            }
                            if (1 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 5000;
                                return "【月夜见使用「神切」，你降低5000点防御！】";
                            }
                            if (2 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 9990;
                                return "【月夜见使用「神杀」，你降低9990点攻击！】";
                            }
                            if (3 == n) {
                                this.publicVar += 2;
                                a = this.att * this.publicVar;
                                t.role.hp -= a;
                                return "【月夜见使用「神刃」损失" + a + "点残机！】";
                            }
                            if (4 == n) {
                                a = 5 * this.att;
                                t.role.hp -= a;
                                return "【月夜见使用「神斩」，你受到" + a + "点伤害！】";
                            }
                        },
                        defSkill: function () {
                            var e = parseInt(.3 * (this.maxHp - this.hp)), t = 100 * Math.random(), n = "";
                            this.hp += e;
                            if (t < 40) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                n = "【月夜见使用「刀鞘」！】";
                            }
                            return "【月夜见矗剑屹立，恢复" + e + "点残机】" + n;
                        },
                        winEvent: void 0,
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.itemNum[7] > 0 && (t.itemNum[7] -= 1);
                            return "【你被抢走1个..电池小碎片..】";
                        }
                    },
                    20007: {
                        name: "真·月夜见",
                        lv: 10000000,
                        hp: 800000,
                        maxHp: 1000000,
                        att: 120000,
                        def: 100000,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 3,
                        getAtt: 1,
                        drop: [[100, 11, 20, 1], [20, 51, 1, 2]],
                        des: "“月夜见拔出了刀”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(4.9 * Math.random());
                            if (0 == n) {
                                var a = 2 * this.att;
                                t.role.hp -= a;
                                return "【月夜见使用「神刀」，你损失" + a + "点残机！】";
                            }
                            if (1 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 5000;
                                return "【月夜见使用「神切」，你降低5000点防御！】";
                            }
                            if (2 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 9990;
                                return "【月夜见使用「神杀」，你降低9990点攻击！】";
                            }
                            if (3 == n) {
                                this.publicVar += 2;
                                a = this.att * this.publicVar;
                                t.role.hp -= a;
                                return "【月夜见使用「神刃」损失" + a + "点残机！】";
                            }
                            if (4 == n) {
                                a = 5 * this.att;
                                t.role.hp -= a;
                                return "【月夜见使用「神斩」，你受到" + a + "点伤害！】";
                            }
                        },
                        defSkill: function () {
                            var e = parseInt(.3 * (this.maxHp - this.hp)), t = 100 * Math.random(), n = "";
                            this.hp += e;
                            if (t < 40) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                n = "【月夜见使用「刀鞘」！】";
                            }
                            return "【月夜见矗剑屹立，恢复" + e + "点残机】" + n;
                        },
                        winEvent: function () {
                            c.itemNum2[56] += 1;
                            c.choice[6] += 1;
                            return "“你拿回你的骑士剑”【获得骑士剑】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.itemNum[7] > 0 && (t.itemNum[7] -= 1);
                            return "【你被抢走1个..电池小碎片..】";
                        }
                    },
                    20009: {
                        name: "嫦娥",
                        lv: 1000000000000,
                        hp: 8000000000,
                        maxHp: 10000000000,
                        att: 1700000,
                        def: 5000000,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 3,
                        getAtt: 1,
                        drop: [[100, 11, 20, 1], [20, 51, 1, 2]],
                        des: "“嫦娥，我终于找到你了（被纯狐拉过去帮忙了）”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(4.9 * Math.random());
                            if (0 == n) {
                                var a = 8 * this.att;
                                t.role.hp -= a;
                                return "【嫦娥使用「神话」，你损失" + a + "点残机！】";
                            }
                            if (1 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 5000000;
                                return "【嫦娥使用「神罚」，你降低5000000点防御！】";
                            }
                            if (2 == n) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 9990000;
                                return "【嫦娥使用「神罚」，你降低9990000点攻击！】";
                            }
                            if (3 == n) {
                                this.publicVar += 5;
                                a = this.att * this.publicVar;
                                t.role.hp -= a;
                                return "【嫦娥使用「神话」损失" + a + "点残机！】";
                            }
                            if (4 == n) {
                                a = 5 * this.att;
                                t.role.hp -= a;
                                return "【嫦娥使用「神话」，你受到" + a + "点伤害！】";
                            }
                        },
                        defSkill: function () {
                            var e = parseInt(.8 * (this.maxHp - this.hp)), t = 100 * Math.random(), n = "";
                            this.hp += e;
                            if (t < 90) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                n = "【嫦娥使用「神话」！】";
                            }
                            return "【嫦娥使用「神话」，恢复" + e + "点残机】" + n;
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            e("scr_data").itemNum2[59] += 4;
                            return "“纯狐大仇得报，传授你剑技”【获得剑技「纯狐」*4】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.itemNum[7] > 0 && (t.itemNum[7] -= 1);
                            return "【....................】";
                        }
                    },
                    20008: {
                        name: "神",
                        lv: 1,
                        hp: 90000000000,
                        maxHp: 90000000000,
                        att: 1000000,
                        def: 200000,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 20,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“你不应该来的”",
                        skill: function () {
                            c.role.hp -= 300000;
                            return "【神凝视着你，你损失300000点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(2000000 - .3 * o.att);
                            this.hp += e;
                            return "【神使用「圣水」，恢复" + e + "点残机！】";
                        },
                        winEvent: function () {
                            c.itemNum2[54] += 5;
                            c.itemNum2[62] += 1;
                            c.choice[6] += 1;
                            return "“骑士剑斩杀了神，汲取了神之血”获得【神之血*5】！！！你把神的残骸给修格斯来锻造，得到「赤晶级勇者身份牌」！！！";
                        },
                        lostEvent: void 0
                    },
                    3001: {
                        name: "蕾米莉亚",
                        lv: 120,
                        hp: 120000,
                        maxHp: 120000,
                        att: 800,
                        def: 140,
                        publicVar: 0,
                        escapeRate: 20,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "“乌~拉！”",
                        skill: function () {
                            var t = Math.max(parseInt(.5 * this.att), 0);
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3002: {
                        name: "山女",
                        lv: 150,
                        hp: 150000,
                        maxHp: 150000,
                        att: 500,
                        def: 225,
                        publicVar: 0,
                        escapeRate: 10,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "",
                        skill: function () {
                            if (100 * Math.random() < 30) {
                                this.escapeRate -= 10;
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.25 * o.att);
                                return "【" + this.name + "使用「束缚」，你攻击降低25%，逃跑率降低10%！】";
                            }
                            return "【" + this.name + "使用「束缚」，但是被你躲开啦！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3003: {
                        name: "真.魂魄妖忌",
                        lv: 190,
                        hp: 199999,
                        maxHp: 199999,
                        att: 809,
                        def: 221,
                        publicVar: 0,
                        escapeRate: 0,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "",
                        skill: function () {
                            var t = parseInt(.2 * this.att), n = parseInt(.1 * o.def);
                            this.publicVar += 1;
                            var a = t * this.publicVar;
                            e("scr_data").role.hp -= a;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= n;
                            return "【伤痕：每回合损失" + a + "点残机，" + n + "点防御！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3004: {
                        name: "八云蓝",
                        lv: 240,
                        hp: 248695,
                        maxHp: 248965,
                        att: 1200,
                        def: 270,
                        publicVar: 0,
                        escapeRate: -10,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "",
                        skill: function () {
                            if (100 * Math.random() < 30) {
                                var e = parseInt(.2 * c.role.hp);
                                c.role.hp -= e;
                                return "【蓝使用「转圈」你损失" + e + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < 30) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "躲避你的攻击！】";
                            }
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3005: {
                        name: "变异的阿吽",
                        lv: 300,
                        hp: 3e5,
                        maxHp: 3e5,
                        att: 900,
                        def: 1200,
                        publicVar: 0,
                        escapeRate: -20,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            this.publicVar += 1;
                            if (n < 10 * this.publicVar + 20) {
                                var a = 2 * (this.att - o.def);
                                t.role.hp -= a;
                                return "【" + this.name + "使用「疯狂暴击」，你损失" + a + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            this.att += parseInt(.1 * this.att);
                            this.def -= parseInt(.1 * this.def);
                            return "【阿吽狂躁，攻击提高10%，防御降低10%！】";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3006: {
                        name: "狂化妖精",
                        lv: 375,
                        hp: 800000,
                        maxHp: 800000,
                        att: 1150,
                        def: 800,
                        publicVar: 0,
                        escapeRate: -30,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "",
                        skill: function () {
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.08 * o.def);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.08 * o.def);
                            return "【妖精使用「狂乱」，你降低8%攻击，8%防御！】";
                        },
                        defSkill: function () {
                            var e = parseInt(.06 * this.maxHp);
                            this.hp += e;
                            return "【妖精使用自愈，恢复" + e + "点残机！】";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3007: {
                        name: "二岩猯藏",
                        lv: 475,
                        hp: 45e4,
                        maxHp: 45e4,
                        att: 1400,
                        def: 599,
                        publicVar: 0,
                        escapeRate: -40,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "“啊~呜~呜~”",
                        skill: function () {
                            if (100 * Math.random() < 50) {
                                var e = this.att;
                                c.role.hp += e;
                                return "【二岩猯藏对你使用「治疗」，你恢复" + e + "点残机】";
                            }
                            this.publicVar += 3;
                            var t = 3 * this.att - o.def;
                            c.role.hp -= t;
                            return "【二岩猯藏对你使用「撕咬」，你损失" + t + "点残机，并附加3层毒素伤害！】";
                        },
                        defSkill: function () {
                            if (this.publicVar > 0) {
                                var t = e("scr_data"), n = parseInt(.1 * this.att);
                                this.publicVar += 1;
                                var a = n * this.publicVar;
                                t.role.hp -= a;
                                return "【毒素：每回合损失" + a + "点残机】";
                            }
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3008: {
                        name: "看守的神炎士兵",
                        lv: 600,
                        hp: 10e4,
                        maxHp: 10e4,
                        att: 1800,
                        def: 699,
                        publicVar: 0,
                        escapeRate: -50,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "“这里不准进入！”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 4 == 0) {
                                var e = 5 * this.att;
                                c.role.hp -= e;
                                return "【" + this.name + "向你发射了一颗子弹！击中！你损失" + e + "点残机！】";
                            }
                            return "【“警告！赶紧离开~不然就开x了~”】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < 30) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "使用「防爆盾」！】";
                            }
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3009: {
                        name: "军官",
                        lv: 800,
                        hp: 75e4,
                        maxHp: 75e4,
                        att: 2499,
                        def: 999,
                        publicVar: 0,
                        escapeRate: -60,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "“你怕是没见过会用刀的人！”",
                        skill: function () {
                            if (4 == this.publicVar) {
                                var e = this.att * (1 + this.publicVar);
                                c.role.hp -= e;
                                return "【" + this.name + "使用「终结.斩杀！」，你受到" + e + "点残机！】";
                            }
                            this.publicVar += 1;
                            var t = this.att, n = parseInt(.1 * this.att * this.publicVar);
                            c.role.hp -= t + n;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.05 * o.def);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.05 * o.att);
                            return "【" + this.name + "使用「剔骨小刀！」你受到" + t + "点伤害，附加" + n + "流血，攻防降低5%！】";
                        },
                        defSkill: function () {
                            this.att += parseInt(.05 * this.att);
                            return "【" + this.name + "使用「集中」，" + this.name + "攻击强化！】";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    3010: {
                        name: "希卡利",
                        lv: 1e3,
                        hp: 999999,
                        maxHp: 999999,
                        att: 2999,
                        def: 1199,
                        publicVar: 0,
                        escapeRate: -70,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 16, 1, 2], [100, 16, 1, 2]],
                        des: "“入侵者，既然你来到这里，就不太可能出去了~”",
                        skill: function () {
                            this.publicVar += 1;
                            var e = parseInt(this.att * (1 + this.publicVar / 10));
                            c.role.hp -= e;
                            this.hp += e;
                            return "【" + this.name + "喷出「靶向喷雾」你受到" + e + "点伤害。" + this.name + "恢复" + e + "点残机，并收集1点能量！】";
                        },
                        defSkill: function () {
                            if (this.publicVar % 4 == 0) {
                                this.def = 899;
                                return "【" + this.name + "「无敌屏障」被击破！】";
                            }
                            if (this.publicVar % 2 == 0) {
                                this.def = 99999;
                                return "【" + this.name + "启动「无敌屏障」！】";
                            }
                            var e = parseInt(o.att * (.2 + this.publicVar / 10));
                            c.role.hp -= e;
                            return "【" + this.name + "开启「反射屏障」你受到" + e + "点伤害！】";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    100: {
                        name: "魔理沙",
                        lv: 1,
                        hp: 60,
                        maxHp: 60,
                        att: 50,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "把p值交出来<(｀^′)>",
                        skill: function () {
                            var t = e("scr_data");
                            if (t.money > 0) {
                                t.money -= 1;
                                this.publicVar += 1;
                                return "【你被偷走0.1元(笑)】";
                            }
                            return "【“哼！不跟你玩了！”】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data"), n = Math.min(10, this.publicVar + 3);
                            t.money += n;
                            return "【你从魔理沙身上抢到" + (n / 10).toFixed(1) + "元】";
                        },
                        lostEvent: void 0
                    },
                    101: {
                        name: "魂魄妖梦",
                        lv: 12,
                        hp: 700,
                        maxHp: 1000,
                        att: 50,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 2,
                        getAtt: 2,
                        drop: [[100, 1, 2, 2], [100, 7, 1, 2], [100, 12, 1, 2], [100, 20, 1, 2], [1, 30, 1, 2]],
                        des: "“给幽幽子大人送食物去~！”",
                        skill: function () {
                            this.att += 7;
                            return "【妖梦使用半灵强化武器，攻击强化！】";
                        },
                        defSkill: function () {
                            var t = e("scr_public"), n = t.role.att() - t.role.def();
                            if (100 * Math.random() < 35) {
                                e("scr_data").role.hp -= n;
                                return "【妖梦使用「楼关剑」，你损失" + n + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            e("scr_data").choice[0] = 0;
                            return "【“你应该可以打败幽幽子sama！”】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.itemNum2[0] -= t.itemNum2[0];
                            t.itemNum2[7] -= t.itemNum2[7];
                            return "【你损失全部的高级土和电池！】【“抱歉....我也是奉命行事.....”】";
                        }
                    },
                    102: {
                        name: "朱鹭子",
                        lv: 10,
                        hp: 700,
                        maxHp: 1600,
                        att: 80,
                        def: 40,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 1, 4, 2], [50, 25, 1, 2]],
                        des: "“小兄弟，过来一下”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                this.hp += 99;
                                this.att += 5;
                                return "【" + this.name + "使用「治疗」，恢复99点残机，攻击提高5点！】";
                            }
                            return "";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").choice[0] = 1;
                            return "【" + this.name + "逃走了！】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = t.money;
                            t.money -= n;
                            return "【你损失全部的p值！】";
                        }
                    },
                    103: {
                        name: "幽幽子",
                        lv: 23,
                        hp: 1200,
                        maxHp: 1200,
                        att: 120,
                        def: 70,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[100, 11, 1, 2]],
                        des: "“全给我吧！”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * (this.maxHp - this.hp) - o.def + 20, 0)), a = parseInt(.3 * n);
                            this.hp += a;
                            t.role.hp -= n;
                            return "【幽幽子使用「嗜血狂魔」，你受到" + n + "点伤害,幽幽子恢复" + a + "点残机】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < 15) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                return "【幽幽子使用「擦弹」！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.choice[0] = 1;
                            t.publicVar[5] = 1;
                            return "【" + this.name + "被人救走了！】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.energy = 0;
                            t.choice[0] = 2;
                            return "【你受重伤！损失全部的精力】";
                        }
                    },
                    104: {
                        name: "神炎的仆人",
                        lv: 15,
                        hp: 1200,
                        maxHp: 1200,
                        att: 99,
                        def: 99,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 11, 1, 1]],
                        des: "“我叫你滚啦！——”",
                        skill: function () {
                            var t = Math.max(40 - o.def, 0);
                            this.hp -= 50;
                            e("scr_data").role.hp -= t;
                            return "【仆人使用「拼命」，对你造成" + t + "点伤害，仆人损失50点残机】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.choice[3] = 2;
                            return "【你已拥有神炎的私房p值*" + t.itemNum[11] + "】";
                        },
                        lostEvent: void 0
                    },
                    105: {
                        name: "神炎派的追杀者",
                        lv: 35,
                        hp: 2200,
                        maxHp: 2200,
                        att: 600,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 11, 2, 1]],
                        des: "“我不跟你多BB哈~杀手得有个B样！”",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            this.publicVar += 1;
                            if (this.publicVar <= 20) {
                                if (n < 85) return "【追杀者拿起铁锹，向你发射了一颗子弹！但是未命中】";
                                var a = 699 - o.def;
                                t.role.hp -= a;
                                return "【追杀者拿起铁锹，向你发射了一颗子弹！击中！你损失" + a + "点残机！】";
                            }
                            return "【追杀者拿起铁锹，但是发现没子弹啦！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            return "【你已拥有神炎的私房p值*" + e("scr_data").itemNum[11] + "】";
                        },
                        lostEvent: function () {
                            e("scr_data").itemNum[11] = 0;
                            return "，你失去所有【神炎的私房p值】";
                        }
                    },
                    106: {
                        name: "偷东西被通缉的魔理沙",
                        lv: 40,
                        hp: 5000,
                        maxHp: 5000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 2,
                        getAtt: 1,
                        drop: [[100, 99, 6, 3], [50, 23, 1, 2]],
                        des: "“请别挡路QAQ！”",
                        skill: function () {
                            var t = Math.max(100 - o.def, 0);
                            this.publicVar += 1;
                            var n = t * this.publicVar;
                            e("scr_data").role.hp -= n;
                            return "【魔理沙使用「卖萌」，你被可爱到了，每回合损失" + n + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            return "“大爷饶命啊！m(_ _)m”";
                        },
                        lostEvent: function () {
                            return "“叫NM多管闲事！”";
                        }
                    },
                    107: {
                        name: "流浪的灵梦",
                        lv: 50,
                        hp: 3000,
                        maxHp: 3000,
                        att: 400,
                        def: 50,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 25, 1, 2], [100, 24, 1, 2], [50, 27, 1, 2], [30, 33, 1, 2]],
                        des: "“打劫”",
                        skill: void 0,
                        defSkill: function () {
                            var t = e("scr_public"), n = t.role.att() - t.role.def();
                            if (100 * Math.random() < 40) {
                                e("scr_data").role.hp -= n;
                                return "【灵梦使用「接.化.发」，你损失" + n + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            return "“我一定会回来的”";
                        },
                        lostEvent: function () {
                            return "“哈哈哈哈”";
                        }
                    },
                    108: {
                        name: "牛头人",
                        lv: 60,
                        hp: 3500,
                        maxHp: 3500,
                        att: 400,
                        def: 200,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 999,
                        achieve: 5,
                        getAtt: 5,
                        drop: [[50, 11, 4, 1], [50, 8, 2, 2], [50, 27, 4, 2], [50, 17, 2, 2]],
                        des: "“cnm！别坏老子好事！”",
                        skill: function () {
                            var t = e("scr_data"), n = e("scr_data2");
                            this.publicVar += 1;
                            var a = 30 * this.publicVar, i = Math.max(parseInt(180 + 10 * this.publicVar - o.def - 40 * n.gameData[0]), 0);
                            t.role.hp -= i + a;
                            var c = parseInt(.05 * this.hp);
                            this.hp -= c;
                            return "【" + this.name + "使用「拼命3」，你损失" + i + "点残机，每回合损失" + a + "点残机（流血），杀人犯损失" + c + "点残机】";
                        },
                        defSkill: function () {
                            var t = e("scr_data"), n = this.def;
                            this.def += 20;
                            t.role.hp -= n;
                            return "【牛头人使用「霸气护体2」，增加20点防御，你受到" + n + "点伤害】";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.distance += 1;
                            t.publicVar[3] = 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = e("scr_data2");
                            t.ifFollow[0] = 0;
                            t.plotId = Math.min(2 + n.gameData[0], 4);
                            e("scr_public").save();
                            cc.director.loadScene("plot");
                            return "";
                        }
                    },
                    109: {
                        name: "秋穰子",
                        lv: 70,
                        hp: 3500,
                        maxHp: 3500,
                        att: 0,
                        def: 141,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [],
                        des: "“你是个sb？”",
                        skill: function () {
                            var e = parseInt(.15 * (this.maxHp - this.hp)), t = 317 + o.def;
                            c.role.hp -= t;
                            return "【dalao使用「穿透」，你损失" + t + "点残机，秋静叶使用「崇拜」，dalao恢复" + e + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.publicVar2[15] += 1;
                            if (0 == c.publicVar2[27]) {
                                c.publicVar2[27] = 1;
                                return "你从大佬身上找到一本书，获得《哲♂学的奥秘》书籍（请去看书界面使用）！";
                            }
                            return "";
                        },
                        lostEvent: function () {
                            c.money = 0;
                            return "你损失全部的p值！！！";
                        }
                    },
                    110: {
                        name: "城市治安管理408分队",
                        lv: 199,
                        hp: 6222,
                        maxHp: 6222,
                        att: 405,
                        def: 200,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[60, 7, 1, 2], [60, 7, 1, 2], [60, 7, 1, 2]],
                        des: "“不许睡觉，听到没！”",
                        skill: void 0,
                        defSkill: void 0,
                        winEvent: function () {
                            if (0 == c.publicVar[8]) {
                                c.ifFollow[1] = 0;
                                c.publicVar[7] -= 700;
                                c.friendSkill[1] = 0;
                                c.friendSkill[3] = 0;
                                c.friendSkill[4] = 0;
                                c.friendSkill[5] = 0;
                                c.friendSkill[6] = 0;
                                c.friendSkill[8] = 0;
                                i.init();
                            }
                            return "“可以，你们两个给我等好喽！”";
                        },
                        lostEvent: function () {
                            if (0 == c.publicVar[8]) {
                                c.ifFollow[1] = 0;
                                c.publicVar[7] -= 700;
                                c.friendSkill[1] = 0;
                                c.friendSkill[3] = 0;
                                c.friendSkill[4] = 0;
                                c.friendSkill[5] = 0;
                                c.friendSkill[6] = 0;
                                c.friendSkill[8] = 0;
                            }
                            c.money -= parseInt(.5 * c.money);
                            i.init();
                            return "你损失一半的p值！";
                        }
                    },
                    111: {
                        name: "秋穰子（精英）",
                        lv: 70,
                        hp: 4000,
                        maxHp: 4000,
                        att: 0,
                        def: 351,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [],
                        des: "“你是个sb？”",
                        skill: function () {
                            var e = 317 + o.def;
                            c.role.hp -= e;
                            return "【秋穰子使用「穿透」，你损失" + e + "点残机！】";
                        },
                        defSkill: function () {
                            var e = parseInt(.15 * (o.maxHp - c.role.hp) + 50);
                            c.role.hp += e;
                            return "【秋静叶对你使用「协助」，你恢复" + e + "点残机！】";
                        },
                        winEvent: function () {
                            c.publicVar2[15] += 1;
                            if (0 == c.publicVar2[27]) {
                                c.publicVar2[27] = 1;
                                return "你从秋穰子身上找到一本书，获得《哲♂学的奥秘》书籍（请去看书界面使用）！";
                            }
                            return "";
                        },
                        lostEvent: function () {
                            return "“我打自己的妹妹，要你管？”";
                        }
                    },
                    112: {
                        name: "伊吹萃香（小BOSS）",
                        lv: 199,
                        hp: 34000,
                        maxHp: 34000,
                        att: 400,
                        def: 600,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [],
                        des: "“你和她啥关系？”",
                        skill: function () {
                            var e = parseInt(699 - .5 * o.def - cc.find("Event/scr_fight").getComponent("scr_fight").correct[1]);
                            if (4 == this.publicVar) {
                                var t = 3 * e;
                                c.role.hp -= t;
                                return "【" + this.name + "使用「终结.剔骨」，你受到" + t + "点残机！】";
                            }
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.05 * o.def);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.05 * o.att);
                            this.publicVar += 1;
                            var n = parseInt(49 * this.publicVar);
                            c.role.hp -= e + n;
                            return "【" + this.name + "使用「放血」你受到" + e + "点伤害，附加" + n + "流血，攻防降低5%！】";
                        },
                        defSkill: function () {
                            var t = e("scr_public"), n = parseInt(.6 * (t.role.att() - t.role.def()));
                            if (100 * Math.random() < 35) {
                                e("scr_data").role.hp -= n;
                                return "【伊吹萃香使用「反震」，你损失" + n + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            if (0 == c.publicVar2[25]) {
                                c.publicVar2[25] = 1;
                                return "你从大佬身上找到一本书，获得《儿童手工DIY》书籍（请去看书界面使用）！";
                            }
                            return "";
                        },
                        lostEvent: function () {
                            return "“你到底是谁？”";
                        }
                    },
                    113: {
                        name: "伊吹萃香（BOSS）",
                        lv: 199,
                        hp: 34000,
                        maxHp: 34000,
                        att: 400,
                        def: 600,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [],
                        des: "“你和她啥关系？”",
                        skill: function () {
                            var e = parseInt(499 - .3 * o.def - .5 * cc.find("Event/scr_fight").getComponent("scr_fight").correct[1]);
                            if (4 == this.publicVar) {
                                var t = 3 * e;
                                c.role.hp -= t;
                                return "【" + this.name + "使用「终结.剔骨」，你受到" + t + "点残机！】";
                            }
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.05 * o.def);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.05 * o.att);
                            this.publicVar += 1;
                            var n = parseInt(39 * this.publicVar);
                            c.role.hp -= e + n;
                            return "【" + this.name + "使用「放血」你受到" + e + "点伤害，附加" + n + "流血，攻防降低5%！】";
                        },
                        defSkill: function () {
                            var t = e("scr_public"), n = t.role.att() - t.role.def();
                            if (100 * Math.random() < 35) {
                                e("scr_data").role.hp -= n;
                                return "【伊吹萃香使用「反震」，你损失" + n + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            if (0 == c.publicVar2[25]) {
                                c.publicVar2[25] = 1;
                                return "你从大佬身上找到一本书，获得《儿童手工DIY》书籍（请去看书界面使用）！";
                            }
                            return "";
                        },
                        lostEvent: void 0
                    },
                    201: {
                        name: "罪袋（精英）",
                        lv: 15,
                        hp: 2000,
                        maxHp: 2000,
                        att: 300,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 3, 2, 1], [100, 23, 1, 2]],
                        des: "呼哧~呼哧~",
                        skill: function () {
                            var t = Math.max(60 - o.def, 0);
                            this.publicVar += 1;
                            var n = t * this.publicVar;
                            e("scr_data").role.hp -= n;
                            return "【哲♂学：每回合损失" + n + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    202: {
                        name: "琪斯美（精英）",
                        lv: 25,
                        hp: 2800,
                        maxHp: 2800,
                        att: 500,
                        def: 100,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 1, 2, 2], [100, 17, 1, 2]],
                        des: "",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * this.hp - o.def, 0));
                            t.role.hp -= n;
                            return "【" + this.name + "使用「撞击」，你受到" + n + "点伤害】";
                        },
                        defSkillfunction: function () {
                            var t = e("scr_public"), n = t.role.att() - t.role.def();
                            if (100 * Math.random() < 30) {
                                e("scr_data").role.hp -= n;
                                return "【" + this.name + "使用「反震」，你损失" + n + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            e("scr_data").choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    203: {
                        name: "小恶魔（精英）",
                        lv: 45,
                        hp: 3000,
                        maxHp: 3000,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 17, 1, 2], [100, 99, 6, 3], [100, 17, 1, 2]],
                        des: "“打赢你就可以向帕秋莉sama证明我并不是没有的了”",
                        skill: function () {
                            var t = e("scr_data");
                            if (100 * Math.random() < 70) return "【小恶魔使用「恶魔角！」，但是戳歪了！】";
                            var n = 699 - o.def;
                            t.role.hp -= n;
                            return "【小恶魔使用「恶魔角！」，戳中！你损失" + n + "点残机】";
                        },
                        defSkill: function () {
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 40;
                            return "【小恶魔使用「卖萌」，太可爱啦！你降低40点攻击】";
                        },
                        winEvent: function () {
                            e("scr_data").choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    204: {
                        name: "丰聪耳神子（中二病）",
                        lv: 60,
                        hp: 3500,
                        maxHp: 3500,
                        att: 400,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 27, 1, 2], [100, 99, 8, 3]],
                        des: "“不许在家里养猫(ノ=Д=)ノ┻━┻”",
                        skill: function () {
                            if (100 * Math.random() < 50) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 20;
                                return "【神子使用「弱点打击」，你降低20点防御】";
                            }
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 40;
                            return "【神子使用「圣德之光」，你降低40点攻击】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < Math.min(20 + 5 * this.publicVar, 40)) {
                                var t = parseInt(.5 * o.att);
                                e("scr_data").role.hp -= t;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "使用「擦弹」「反弹」，你减少" + t + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.choice[6] += 1;
                            if (0 == t.skillLv[18]) {
                                t.skillLv[18] = 1;
                                return "【激活特性「攻击强化2」】";
                            }
                            return "";
                        },
                        lostEvent: void 0
                    },
                    205: {
                        name: "八云蓝（小boss）",
                        lv: 80,
                        hp: 4000,
                        maxHp: 4000,
                        att: 0,
                        def: 80,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 21, 1, 2], [100, 26, 2, 2]],
                        des: "“m(_ _)m主银饶命啊！我是你的女仆(*･ω-q)  ”",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            if (n < 30) {
                                t.role.hp += 233;
                                return "【蓝给在给你捏脚，你恢复233点残机！】";
                            }
                            if (n >= 30 && n < 70) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 99;
                                return "【蓝袭击了你的胸部，你降低130点防御】";
                            }
                            if (n >= 70) {
                                var a = parseInt(3 * (660 - o.def));
                                t.role.hp -= a;
                                return "【蓝使用「大铁锤」——绝后一击！你损失" + a + "点残机！】";
                            }
                        },
                        defSkillfunction: function () {
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 40;
                            return "【蓝使用「萌你一脸」，你降低40点攻击！】";
                        },
                        winEvent: function () {
                            e("scr_data").choice[6] += 1;
                            return "“竟然输了”";
                        },
                        lostEvent: void 0
                    },
                    206: {
                        name: "今泉影狼",
                        lv: 120,
                        hp: 12e3,
                        maxHp: 12e3,
                        att: 400,
                        def: 230,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 9, 3, 1], [100, 23, 2, 2]],
                        des: "“喵？”「晓风提示：从此怪开始，后续怪血量激增，但是攻防下调~」",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            this.publicVar += 1;
                            if (n < Math.min(20 + 4 * this.publicVar, 50)) {
                                var a = parseInt(1.5 * this.att - o.def);
                                t.role.hp -= a;
                                return "【" + this.name + "使用「暴击」，你损失" + a + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < Math.min(20 + 4 * this.publicVar, 50)) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "躲避了你的攻击！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    207: {
                        name: "红美铃",
                        lv: 155,
                        hp: 15155,
                        maxHp: 15155,
                        att: 470,
                        def: 180,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 26, 2, 2], [100, 20, 2, 2]],
                        des: "“已经好多年没人来过这里啦~”",
                        skill: function () {
                            this.publicVa += 1;
                            var e = this.att, t = parseInt(.1 * this.att * this.publicVar);
                            c.role.hp -= e + t;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.05 * o.def);
                            return "【" + this.name + "使用「背水阵」你受到" + e + "点伤害，附加" + t + "流血，防御降低5%！】";
                        },
                        defSkill: function () {
                            this.att += parseInt(.05 * this.att);
                            return "【" + this.name + "使用「集中」，" + this.name + "攻击强化！】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    209: {
                        name: "饭纲丸龙",
                        lv: 245,
                        hp: 24120,
                        maxHp: 24120,
                        att: 0,
                        def: 280,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 14, 2, 2], [100, 22, 2, 2]],
                        des: "“其实我最擅长的不是x~”",
                        skill: function () {
                            if (100 * Math.random() < 50) {
                                var e = parseInt(.25 * c.role.hp);
                                c.role.hp -= e;
                                return "【" + this.name + "使用「P18C手x」！你损失" + e + "点残机(当前残机的25%)！】";
                            }
                            e = parseInt(.25 * (o.maxHp - c.role.hp));
                            c.role.hp -= e;
                            return "【" + this.name + "使用「AKM突击x」！你损失" + e + "点残机(已损失残机的25%)！】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < 30 + 10 * this.publicVar) {
                                this.publicVar += 1;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "闪避了你的攻击！并且下次闪避概率提升！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.choice[6] += 1;
                            t.randomEvent[3] += 1;
                            if (0 == t.skillLv[22]) {
                                t.skillLv[22] = 1;
                                return "【激活特性「攻击强化3」】";
                            }
                            return "";
                        },
                        lostEvent: void 0
                    },
                    210: {
                        name: "藤原妹红",
                        lv: 300,
                        hp: 11999,
                        maxHp: 991999,
                        att: 0,
                        def: 350,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 13, 1, 2], [100, 25, 2, 2], [1, 51, 1, 2]],
                        des: "惹不起~惹不起~",
                        skill: function () {
                            this.def += parseInt(.1 * this.def);
                            return "【" + this.name + "就这么静静的看着你~】";
                        },
                        defSkill: function () {
                            if (this.publicVar < 8) {
                                var e = parseInt(this.def);
                                c.role.hp -= e;
                                return "【" + this.name + "「蛋身一震」！你受到" + e + "点反弹伤害！】";
                            }
                            c.role.hp -= 9999999;
                            return "【自爆！！！！】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            return "【天啦噜！自爆蛋爆炸啦啊啊啊啊！你被炸飞啦~】";
                        }
                    },
                    211: {
                        name: "河城荷取",
                        lv: 380,
                        hp: 41570,
                        maxHp: 41570,
                        att: 1203,
                        def: 550,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 27, 4, 2], [100, 21, 2, 2]],
                        des: "“(ಡωಡ)hiahiahia”\n「碾压」技能效果：对于防御低于自身的目标造成2倍伤害",
                        skill: function () {
                            if (o.def < this.def) {
                                var e = 2 * (this.att - o.def);
                                c.role.hp -= e;
                                return "【河城荷取使用「碾压」对你造成" + e + "点伤害】";
                            }
                            this.def += parseInt(.3 * this.def);
                            return "【河城荷取使用「护甲强化」防御增加30%】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < Math.min(20 + 5 * this.publicVar, 100)) {
                                var e = parseInt(o.att);
                                c.role.hp -= e;
                                return "【河城荷取使用「机甲护体」，你受到" + e + "点弹刀伤害！（你攻击的100%）】";
                            }
                            this.publicVar += 1;
                            return "【河城荷取「机甲护体」触发几率提高！】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    213: {
                        name: "摩多罗隐岐奈",
                        lv: 600,
                        hp: 68815,
                        maxHp: 68815,
                        att: 1804,
                        def: 700,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 26, 4, 2], [100, 20, 4, 2]],
                        des: "“要来成为我新的弟子吗？”",
                        skill: function () {
                            if (this.publicVar % 3 == 0) return "【" + this.name + "使用「轮椅践踏！」，你被一脚剁飞啦！】";
                            if (this.publicVar % 3 == 1) {
                                var e = 4 * this.att;
                                c.role.hp -= e;
                                return "【" + this.name + "使用「轮椅大炮！」！你损失" + e + "点残机！】";
                            }
                            if (this.publicVar % 3 == 2) {
                                this.att += parseInt(.4 * this.att);
                                this.hp += parseInt(.3 * this.maxHp);
                                return "【" + this.name + "坐地点了一根烟，吐了一个烟圈，残机恢复30%，攻击提高40%！】";
                            }
                            this.publicVar += 1;
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    214: {
                        name: "阿尔托莉雅",
                        lv: 750,
                        hp: 72e3,
                        maxHp: 72e3,
                        att: 2299,
                        def: 999,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 10, 1, 2], [100, 11, 1, 2]],
                        des: "“嗷嗷嗷~吃早饭咯~”\n「不屈的意志！」技能效果:如果对方残机百分比高于自身，则造成3倍无视防御的伤害！并恢复自身10%残机",
                        skill: function () {
                            if (c.role.hp / o.maxHp / (this.hp / this.maxHp) > 1) {
                                var e = 3 * this.att;
                                c.role.hp -= e;
                                this.hp += parseInt(.1 * this.maxHp);
                                this.publicVar -= 3;
                                return "【吾王使用「不屈的意志！」，造成" + e + "点伤害！自身恢复10%残机！吾王怒气减3】";
                            }
                            if (100 * Math.random() < Math.min(30 + 5 * this.publicVar, 100)) {
                                e = parseInt(1.2 * this.att);
                                c.role.hp -= e;
                                this.publicVar -= 1;
                                return "【吾王使用「誓约胜利之剑！暴击！」，造成" + e + "点伤害！吾王怒气减1】";
                            }
                            e = this.att - o.def;
                            c.role.hp -= e;
                            this.hp += parseInt(.1 * this.maxHp);
                            this.publicVar += 1;
                            return "【吾王使用「誓约胜利之剑！」，造成" + e + "点伤害，并获得2点怒气（下次暴击率提高！）】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < Math.min(30 + 5 * this.publicVar, 60)) {
                                this.att += parseInt(.05 * this.att);
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                return "【" + this.name + "使用「风王结界」，免疫伤害，攻击增加5%，！】";
                            }
                            this.publicVar += 2;
                            return "【吾王获得2点怒气（下次结界触发几率提高！）】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    215: {
                        name: "晓风",
                        lv: 999,
                        hp: 9999999,
                        maxHp: 9999999,
                        att: 0,
                        def: 1999,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 999,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 15, 3, 2]],
                        des: "",
                        skill: void 0,
                        defSkill: function () {
                            var e = ["「对于国产游戏，」”", "「我始终坚信，」", "「什么样的环境孕育出什么样的作品。」", "「那些嘲讽国产游戏的人，」", "「本质上是在嘲讽自己————你低估了自己的力量。」”", "「国产游戏的未来，」", "「在你的手中，」", "「而不是开发商或者平台...」", "「一起共勉吧。晓风 2017.10.16」"], t = "";
                            "undefined" != typeof e[this.publicVar] && (t = e[this.publicVar]);
                            this.publicVar += 1;
                            this.def -= 200;
                            return t;
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "“再会吧~朋友...”";
                        },
                        lostEvent: void 0
                    },
                    114514: {
                        name: "诺娃",
                        lv: 999,
                        hp: 20000,
                        maxHp: 20000,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 999,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 15, 3, 2]],
                        des: "“被放逐者，就凭你也想和我斗？”科学家倒了下去，就在杀手调整枪的方向即将射出那不可挽回的一发子弹的时候，一位少年通过一位妖怪少女（老太婆）给的隙间出现在其身后并默默拔出了那把沾满无数生灵鲜血的破旧长剑",
                        skill: void 0,
                        defSkill: function () {
                            var e = ["「「吉姆用尽最后的力气扑挡在科学家面前，准备坦然迎接死亡之时，一把利剑从背后穿透了诺娃的胸腔，使原本那一发无可挽回的子弹打偏了」」", "「「诺娃转过身来，以一种不可置信的眼神，看着眼前这位陌生的少年，然而眼前的少年早已抽出伴随多时的银剑，以一种略带嘲讽的意味将利剑故意避开他的要害，刺入腹中」」", "「「诺娃痛苦地跪倒在地，泽诺右手从剑鞘中拔出银剑·改，左手则用力拔出刺入诺娃腹部的银剑」」", "「「泽诺无视边传来的痛苦的惨叫声，双手持剑在空中耍了一个剑花」」", "「「下一秒两剑便精确无比地架在了追杀者的脖颈上」」”", "「「咔」」", "", "", ""], t = "";
                            "undefined" != typeof e[this.publicVar] && (t = e[this.publicVar]);
                            this.publicVar += 1;
                            this.def -= 200;
                            return t;
                        },
                        winEvent: function () {
                            return "“雷诺，现在你打算怎么办？.”";
                        },
                        lostEvent: void 0
                    },
                    216: {
                        name: "过道",
                        lv: 20,
                        hp: 10,
                        maxHp: 10,
                        att: 0,
                        def: 30,
                        publicVar: 0,
                        escapeRate: 80,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“少年，不要再执迷不悟了，之后，真的想挑战神明吗？”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * this.hp - o.def, 0));
                            t.role.hp -= n;
                            return "【" + this.name + "使用？，你受到" + n + "点伤害】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    217: {
                        name: "大门",
                        lv: 20,
                        hp: 10,
                        maxHp: 10,
                        att: 0,
                        def: 30,
                        publicVar: 0,
                        escapeRate: 80,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“好吧，在这扇门后面，有你的老熟人在等你（注：3场战斗后会有一场即死战斗）”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * this.hp - o.def, 0));
                            t.role.hp -= n;
                            return "【" + this.name + "使用？，你受到" + n + "点伤害】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    218: {
                        name: "贤者",
                        lv: 25,
                        hp: 300000,
                        maxHp: 30000,
                        att: 5000,
                        def: 11000,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 15,
                        achieve: 0,
                        getAtt: 10,
                        drop: [],
                        des: "“人类王国的最强勇者------贤者袭来！！！”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(800000 * (2000 - o.def)), a = parseInt(.01 * this.hp);
                            this.hp -= a;
                            t.role.hp -= n;
                            return "【" + this.name + "使用「神之眼」，你损失" + n + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "“再会吧~朋友...”";
                        },
                        lostEvent: void 0
                    },
                    219: {
                        name: "贤者魔王",
                        lv: 25,
                        hp: 900000,
                        maxHp: 900000,
                        att: 10000,
                        def: 22000,
                        publicVar: 0,
                        escapeRate: 70,
                        enemyEscapeRate: 0,
                        lostHealth: 30,
                        achieve: 60,
                        getAtt: 100,
                        drop: [[100, 1, 1, 1]],
                        des: "“新世纪的救世主啊，让我看看你的灵魂成分能否担待得起这个使命/在你不可思议的目光注视下贤者，拿出一瓶浑浊的黑色液体一饮而尽，只见一道黄白黑三色相间的光闪过，贤者化身为贤者魔王”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(1.5 * (6000 - o.def)), a = parseInt(.15 * this.hp);
                            this.hp -= a;
                            t.role.hp -= n;
                            return "【" + this.name + "使用「神之眼」，你损失" + n + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").itemNum2[66] += 1;
                            c.choice[6] += 1;
                            return "得到「贤者之心」我能感受到你的灵魂成分比活了几千年的我还要厚重，你究竟是从何开始开始默默守候这个看不到希望的世界？";
                        },
                        lostEvent: void 0
                    },
                    401: {
                        name: "城管1队",
                        lv: 100,
                        hp: 16e3,
                        maxHp: 16e3,
                        att: 199,
                        def: 120,
                        publicVar: 0,
                        escapeRate: -9567,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 50, 3]],
                        des: "",
                        skill: function () {
                            var e = parseInt(this.att - .3 * o.def + this.publicVar);
                            c.role.hp -= e;
                            return "【" + this.name + "使用「连拖带拽」！你损失" + e + "点残机！】";
                        },
                        defSkill: function () {
                            this.publicVar += 20;
                            return "【" + this.name + "使用「抱大腿」！你降低20点防御】";
                        },
                        winEvent: function () {
                            c.orderTimes[4] += 4;
                            i.save();
                            return "【奖励：网瘾永久降低4%】“不想走是吧？可以的！”";
                        },
                        lostEvent: function () {
                            c.publicVar3[2] = 1;
                            c.ifFollow[0] = 0;
                            c.ifFollow[1] = 0;
                            c.publicVar[13] = 1;
                            i.init();
                            return c.ifFollow[0] > 0 ? "【你被强行赶出城...你与爱丽丝失去了联系。】" : "【你被强行赶出城...】";
                        }
                    },
                    402: {
                        name: "城管2队",
                        lv: 140,
                        hp: 23333,
                        maxHp: 23333,
                        att: 280,
                        def: 160,
                        publicVar: 0,
                        escapeRate: -9567,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 80, 3]],
                        des: "",
                        skill: function () {
                            var e = 100 * Math.random(), t = parseInt(this.att - .3 * o.def);
                            if (e < 30 + 5 * this.publicVar) {
                                t *= 2;
                                c.role.hp -= t;
                                return "【" + this.name + "使用「致命一击」，你损失" + t + "点残机！】";
                            }
                            this.publicVar += 5;
                            c.role.hp -= t;
                            return "【" + this.name + "使用「电棍」，你损失" + t + "点残机！】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < 30) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【" + this.name + "使用「防爆盾」！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            c.money += 100;
                            i.save();
                            return "【奖励：10元p值】“小伙子，虽然你确实有两下子，但是你是不可能干过政府的~”";
                        },
                        lostEvent: function () {
                            c.publicVar3[2] = 1;
                            c.ifFollow[0] = 0;
                            c.ifFollow[1] = 0;
                            c.publicVar[13] = 1;
                            i.init();
                            return c.ifFollow[0] > 0 ? "【你被强行赶出城...你与爱丽丝失去了联系。】" : "【你被强行赶出城...】";
                        }
                    },
                    403: {
                        name: "犬走椛",
                        lv: 200,
                        hp: 100000,
                        maxHp: 100000,
                        att: 400,
                        def: 240,
                        publicVar: 0,
                        escapeRate: -9567,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 120, 3]],
                        des: "",
                        skill: function () {
                            var e = parseInt(this.att - .3 * o.def);
                            c.role.hp -= e;
                            this.hp += e;
                            return "【" + this.name + "使用「强行验血」，你损失" + e + "点残机，3队恢复" + e + "点残机！】";
                        },
                        defSkill: function () {
                            this.att += 10;
                            return "【" + this.name + "攻击+10！】";
                        },
                        winEvent: function () {
                            c.itemNum2[12] += 10;
                            i.save();
                            return "【奖励：皮⑨*10】“报告，你惹了一个惹不起的人！”";
                        },
                        lostEvent: function () {
                            c.publicVar3[2] = 1;
                            c.ifFollow[0] = 0;
                            c.ifFollow[1] = 0;
                            c.publicVar[13] = 1;
                            i.init();
                            return c.ifFollow[0] > 0 ? "【你被强行赶出城...你与爱丽丝失去了联系。】" : "【你被强行赶出城...】";
                        }
                    },
                    404: {
                        name: "易者",
                        lv: 280,
                        hp: 130000,
                        maxHp: 130000,
                        att: 1000,
                        def: 2000,
                        publicVar: 0,
                        escapeRate: -9567,
                        enemyEscapeRate: 0,
                        lostHealth: 4,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 170, 3]],
                        des: "哈哈哈哈，哈哈哈哈哈，哈哈哈哈哈哈",
                        skill: function () {
                            var e = parseInt(this.att - .3 * o.def), t = Math.min(20 + 2 * this.publicVar, 60);
                            if (100 * Math.random() < t) {
                                e *= 5;
                                c.role.hp -= e;
                                return "【" + this.name + "使用「幻想粉碎」！击中！你损失" + e + "点残机！】";
                            }
                            return "【" + this.name + "使用「魔化术」，但是未命中！】";
                        },
                        defSkill: function () {
                            this.publicVar += 1;
                            this.att += 15;
                            return "【" + this.name + "使用集中，攻击+15，且下次x击命中率提高！】";
                        },
                        winEvent: function () {
                            c.itemNum2[14] += 20;
                            i.save();
                            return "【奖励：神佑珠*20】“老大要来了！”";
                        },
                        lostEvent: function () {
                            c.publicVar3[2] = 1;
                            c.ifFollow[0] = 0;
                            c.ifFollow[1] = 0;
                            c.publicVar[13] = 1;
                            i.init();
                            return c.ifFollow[0] > 0 ? "【你被强行赶出城...你与爱丽丝失去了联系。】" : "【你被强行赶出城...】";
                        }
                    },
                    405: {
                        name: "先代巫女",
                        lv: 380,
                        hp: 200000,
                        maxHp: 200000,
                        att: 3000,
                        def: 1300,
                        publicVar: 0,
                        escapeRate: -9567,
                        enemyEscapeRate: 0,
                        lostHealth: 4,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 230, 3]],
                        des: "“小伙，看我，怎么样”",
                        skill: function () {
                            var e = this.att + o.def, t = parseInt(.015 * (this.maxHp - this.hp));
                            c.role.hp -= e;
                            this.hp += t;
                            return "【巫女使用「神.御币」，对你造成" + e + "点伤害，自身恢复" + t + "点残机】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < Math.min(3 * this.publicVar + 20, 60)) {
                                var t = parseInt(.3 * o.att);
                                e("scr_data").role.hp -= t;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                return "【" + this.name + "使用「擦弹」「反弹」，你减少" + t + "点残机！】";
                            }
                            return "【巫女下次擦弹概率增加！】";
                        },
                        winEvent: function () {
                            c.itemNum2[15] += 5;
                            c.itemNum2[7] += 3;
                            c.itemNum2[12] += 5;
                            c.orderTimes[4];
                            i.save();
                            return "【奖励：网瘾降低15%，电池*3，圣德披肩*5，皮⑨*5！】“但愿你能赢过他...”";
                        },
                        lostEvent: function () {
                            c.publicVar3[2] = 1;
                            c.ifFollow[0] = 0;
                            c.ifFollow[1] = 0;
                            c.publicVar[13] = 1;
                            i.init();
                            return c.ifFollow[0] > 0 ? "【你被强行赶出城...你与爱丽丝失去了联系。】" : "【你被强行赶出城...】";
                        }
                    },
                    406: {
                        name: "未定名字（BOSS）",
                        lv: 999,
                        hp: 2999999,
                        maxHp: 2999999,
                        att: 0,
                        def: 6000,
                        publicVar: 0,
                        escapeRate: -9567,
                        enemyEscapeRate: -9999,
                        lostHealth: 5,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 12, 1, 1]],
                        des: "“没想到竟然有人可以发现是我引起的异变，我就是恨啊，恨你们所有人！”\n「特点：？？？」",
                        skill: function () {
                            var e = 1e4 + this.enemyEscapeRate;
                            this.publicVar += 1;
                            if (this.publicVar % 7 == 0) {
                                var t = Math.max(parseInt(.04 * this.def * e + 999 - o.def), 1);
                                c.role.hp -= t;
                                this.hp += t;
                                this.enemyEscapeRate += 1;
                                return "【未定使用「大石头」你受到" + t + "点伤害！未定蓄力+1，恢复" + t + "点残机！（回复量与未定充能量/主角防御有关）】";
                            }
                            if (this.publicVar % 4 == 0) {
                                this.enemyEscapeRate += 4;
                                return "【未定使用「分身」，充能+4！】";
                            }
                            var n = Math.max(parseInt(.01 * this.def * e + 499 - .5 * o.def), 0);
                            c.role.hp -= n;
                            return "【未定「灼烧」你受到" + n + "点灼烧伤害（伤害与未定充能量/主角防御有关）！】";
                        },
                        defSkill: function () {
                            this.publicVar < 1 && (this.publicVar += 1);
                            var t = 1e4 + this.enemyEscapeRate;
                            if (this.publicVar % 11 == 0) {
                                var n = parseInt(.06 * (this.maxHp - this.hp));
                                this.hp += n;
                                return "【未定启动紧急恢复！恢复已损失残机的6%（" + n + "点）】";
                            }
                            if (this.publicVar % 5 == 0) {
                                var a = parseInt(.2 * o.att + .2 * this.def);
                                e("scr_data").role.hp -= a;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 99999;
                                return "【未定使用「荆棘钢甲」！你受到" + a + "点伤害！】";
                            }
                            if (this.publicVar % 3 == 0) {
                                var i = parseInt(.06 * this.def);
                                this.def += i;
                                return "【未定启动「防御系统」！防御增加6%（" + i + "点）】";
                            }
                            if (100 * Math.random() < Math.min(30 + 2 * t, 60)) {
                                this.enemyEscapeRate += 1;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                return "【未定使用「电离屏障」，免疫伤害，充能+1！（触发几率与充能有关）】";
                            }
                            var c = 2 * t + 20;
                            this.def += c;
                            return "【未定启动「警戒系统」，防御+" + c + "（增加量与未定当前充能量有关）！】";
                        },
                        winEvent: function () {
                            return "【你已战胜最终BOSS，游戏即将结束，可以看看还有啥没做完的~】";
                        },
                        lostEvent: function () {
                            c.publicVar3[2] = 1;
                            c.ifFollow[0] = 0;
                            c.ifFollow[1] = 0;
                            c.publicVar[13] = 1;
                            i.init();
                            return c.ifFollow[0] > 0 ? "【你被驱逐出城。你与爱丽丝失去了联系。】" : "【你被未定打成重伤，再没有能力重新来过...你被赶出城区...】";
                        }
                    },
                    501: {
                        name: "爱丽丝家的大狼狗",
                        lv: 80,
                        hp: 10000,
                        maxHp: 10000,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "emmmmmm",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar <= 5) {
                                c.role.hp += 99;
                                return "【狗狗使用「添~滋溜~滋溜~」，你恢复99点残机！】";
                            }
                            this.enemyEscapeRate += 100;
                            return "【狗狗有些伤心，准备要离开了！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.chioce2[7] += 1;
                            c.itemNum2[0] += 3;
                            return "【狗狗点了点头，开心的离开了。狗狗的祝福：获得「高级土」*3！】";
                        },
                        lostEvent: void 0
                    },
                    502: {
                        name: "爱丽丝后援1群",
                        lv: 100,
                        hp: 11000,
                        maxHp: 13345,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“打败我们才可以得到爱丽丝~”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar <= 4) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] += 30;
                                return "【后援队使用「加油！」，你增加30点攻击！】";
                            }
                            this.enemyEscapeRate += 100;
                            return "【后援队有些失望，准备要离开了！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.chioce2[7] += 1;
                            t.itemNum2[22] += 1;
                            return "【“好吧，你确实配得上爱丽丝，加油吧~”。粉丝的祝福：获得「骑士盾·残」*1！】";
                        },
                        lostEvent: void 0
                    },
                    503: {
                        name: "爱丽丝的管家",
                        lv: 130,
                        hp: 13000,
                        maxHp: 13000,
                        att: 0,
                        def: 300,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“不好意思，这里没大米哈~”",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar <= 3) {
                                c.money += 1;
                                return "【管家给了你1毛p值~】";
                            }
                            c.role.hp -= 99999;
                            return "【“还不走？”】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.money -= this.publicVar;
                            t.chioce2[7] += 1;
                            t.money += 20;
                            return "【“现在年轻人脸皮都这么厚嘛！”。你把p值还给了管家。管家的祝福：获得2元！】";
                        },
                        lostEvent: function () {
                            c.money -= 3;
                            return "【“做人不要太贪！滚出去！”。你被轰出院子，失去3毛p值！】";
                        }
                    },
                    504: {
                        name: "博丽灵梦",
                        lv: 170,
                        hp: 23000,
                        maxHp: 25650,
                        att: 0,
                        def: 500,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[30, 33, 1, 2]],
                        des: "“想抢走爱丽丝？先从我身上踏过去！”",
                        skill: function () {
                            var e = 100 * Math.random(), t = 999;
                            if (e < 40) {
                                this.hp -= t;
                                return "【" + this.name + "使用「梦想封印」，反弹，" + this.name + "受到" + t + "点伤害！】";
                            }
                            if (e < 60) {
                                this.hp += 2 * t;
                                return "【" + this.name + "感觉有点饿，吃了一口土，恢复" + 2 * t + "点残机！】";
                            }
                            t = parseInt(t - o.def);
                            c.role.hp -= t;
                            return "【" + this.name + "使用「梦想封印」，你受到" + t + "点伤害！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var e = Math.min(parseInt(.05 * c.choice[5] + 5), 55);
                            c.role.def += e;
                            c.chioce2[7] += 1;
                            return "【“你走吧，我想静静~”。博丽灵梦的祝福：防御永久增加" + e + "（与爱丽丝好感有关）！】";
                        },
                        lostEvent: void 0
                    },
                    505: {
                        name: "帕琪",
                        lv: 220,
                        hp: 28000,
                        maxHp: 28000,
                        att: 0,
                        def: 510,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“做啥工作？工资多少？有没有买房？”",
                        skill: void 0,
                        defSkill: function () {
                            var e = parseInt(.3 * c.money);
                            this.att += 1;
                            if (this.att <= 3) {
                                this.publicVar += e;
                                c.money -= e;
                                return "【你给了帕琪" + (e / 10).toFixed(1) + "元！】";
                            }
                            if (this.publicVar < 20) {
                                c.role.hp -= 1009;
                                return "【“哈哈哈哈哈”】";
                            }
                            this.hp -= 1009;
                            return "【“哈哈哈哈哈”】";
                        },
                        winEvent: function () {
                            var e = Math.min(parseInt(.5 * c.choice[5] + 50), 550);
                            c.role.maxHp += e;
                            c.chioce2[7] += 1;
                            return "【“好像还有点p值嗷~”。帕琪的祝福：残机永久增加" + e + "（与爱丽丝好感有关）！】";
                        },
                        lostEvent: function () {
                            return "【“穷成这样~我敢把爱丽丝交给你？”。你被赶出屋来！】";
                        }
                    },
                    506: {
                        name: "真·魔理沙",
                        lv: 300,
                        hp: 40000,
                        maxHp: 48000,
                        att: 1200,
                        def: 500,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“你要是能打败我，我就让你带走爱丽丝”",
                        skill: function () {
                            if (4 == this.publicVar) {
                                var e = this.att * (1 + this.publicVar);
                                return "【" + this.name + "使用「极限火花」，你受到" + e + "点残机！】";
                            }
                            this.publicVar += 1;
                            var t = parseInt(.5 * this.att);
                            c.role.hp -= t;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.1 * o.def);
                            return "【" + this.name + "使用「永恒星河」你受到" + t + "点伤害，防御降低10%！】";
                        },
                        defSkill: function () {
                            this.att += parseInt(.05 * this.att);
                            return "【" + this.name + "使用「博丽灵梦的节操」，" + this.name + "攻击强化！】";
                        },
                        winEvent: function () {
                            var e = Math.min(parseInt(.1 * c.choice[5] + 10), 110);
                            c.role.att += e;
                            c.chioce2[7] += 1;
                            return "【魔理沙的祝福：攻击永久增加" + e + "（与爱丽丝好感有关）！】";
                        },
                        lostEvent: void 0
                    },
                    600: {
                        name: "大露米娅",
                        lv: 10,
                        hp: 380,
                        maxHp: 380,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 1, 1], [100, 4, 1, 1], [20, 35, 1, 2]],
                        des: "嗡嗡-嗡！",
                        skill: function () {
                            var t = Math.max(20 - o.def, 0);
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.publicVar[10] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    601: {
                        name: "巨大露米娅",
                        lv: 20,
                        hp: 710,
                        maxHp: 710,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 2, 1], [100, 4, 2, 1], [20, 35, 1, 2]],
                        des: "%$#%$#%#^&^",
                        skill: function () {
                            var t = Math.max(60 - o.def, 0);
                            this.att += 10;
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！" + this.name + "攻击+10】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.publicVar[10] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    602: {
                        name: "蚊露米娅",
                        lv: 35,
                        hp: 1200,
                        maxHp: 1200,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 3, 1], [100, 4, 3, 1], [20, 35, 1, 2]],
                        des: "嗡--------！",
                        skill: function () {
                            var t = Math.max(120 + 20 * this.publicVar - o.def, 0);
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！" + this.name + "吸血能力强化！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.publicVar[10] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    603: {
                        name: "阿龙",
                        lv: 50,
                        hp: 1665,
                        maxHp: 1665,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 25,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 1, 4, 1], [100, 4, 4, 1]],
                        des: "",
                        skill: function () {
                            var t = Math.max(200 - o.def, 0);
                            this.def += 30;
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！" + this.name + "防御+30】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            c.publicVar[10] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    700: {
                        name: "中露米娅",
                        lv: 10,
                        hp: 380,
                        maxHp: 380,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 1, 1], [100, 4, 1, 1], [20, 35, 1, 2]],
                        des: "嗡嗡-嗡！",
                        skill: function () {
                            var t = Math.max(20 - o.def, 0);
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            t.randomEvent[4] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    701: {
                        name: "大露米娅",
                        lv: 20,
                        hp: 710,
                        maxHp: 710,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 2, 1], [100, 4, 2, 1], [20, 35, 1, 2]],
                        des: "%$#%$#%#^&^",
                        skill: function () {
                            var t = Math.max(60 - o.def, 0);
                            this.att += 10;
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！" + this.name + "攻击+10】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            t.randomEvent[4] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    702: {
                        name: "巨大露米娅",
                        lv: 35,
                        hp: 1200,
                        maxHp: 1200,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 35,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 1, 3, 1], [100, 4, 3, 1], [20, 35, 1, 2]],
                        des: "嗡--------！",
                        skill: function () {
                            var t = Math.max(120 + 20 * this.publicVar - o.def, 0);
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！" + this.name + "吸血能力强化！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            t.randomEvent[4] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    703: {
                        name: "强大露米娅",
                        lv: 50,
                        hp: 1665,
                        maxHp: 1665,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 1, 4, 1], [100, 4, 4, 1], [20, 35, 1, 2]],
                        des: "",
                        skill: function () {
                            var t = Math.max(200 - o.def, 0);
                            this.def += 30;
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！" + this.name + "防御+30】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            t.randomEvent[4] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    704: {
                        name: "阿妈祝福过的露米娅",
                        lv: 70,
                        hp: 2465,
                        maxHp: 2465,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 25,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 1, 5, 1], [100, 4, 5, 1], [20, 35, 1, 2]],
                        des: "",
                        skill: function () {
                            var t = parseInt(Math.max((320 - o.def) * (2 - this.hp / this.maxHp), 0));
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            t.randomEvent[4] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    705: {
                        name: "疯子露米娅",
                        lv: 90,
                        hp: 3333,
                        maxHp: 3333,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 20,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 2,
                        getAtt: 1,
                        drop: [[100, 1, 10, 1], [100, 4, 10, 1], [100, 26, 1, 2], [20, 35, 1, 2]],
                        des: "血红的眼睛，如同宝石般纯净无暇！",
                        skill: function () {
                            var t = Math.max(520 - o.def, 0);
                            e("scr_data").role.hp -= t;
                            this.hp += t;
                            return "【你被吸取" + t + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            return "【你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    706: {
                        name: "可爱露米娅",
                        lv: 29,
                        hp: 599,
                        maxHp: 599,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[1, 12, 1, 1], [20, 35, 1, 2]],
                        des: "可爱！",
                        skill: function () {
                            e("scr_data").role.hp += 200;
                            this.hp -= 200;
                            e("scr_public").ifMaxHp();
                            return this.name + "把你可爱到了！你增加200点残机";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[0] += 1;
                            return "【" + this.name + "你已消灭" + t.kills[0] + "只露米娅】";
                        },
                        lostEvent: void 0
                    },
                    800: {
                        name: "纳兹琳)",
                        lv: 7,
                        hp: 800,
                        maxHp: 1600,
                        att: 70,
                        def: 10,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "..嘻嘻..(≥▽≤)y",
                        skill: function () {
                            var t = e("scr_data");
                            this.enemyEscapeRate += 20;
                            if (t.money > 0) {
                                t.money -= 1;
                                this.publicVar += 1;
                                return "【你被偷走0.1元，纳兹琳想要溜(￣﹏￣)】";
                            }
                            return "【“穷成这B样也敢出来？”】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data"), n = this.publicVar + 5;
                            t.money += n;
                            t.randomEvent[3] += 1;
                            return "【获得" + (n / 10).toFixed(1) + "元！】【“呜呜呜，我告诉一轮去”】";
                        },
                        lostEvent: void 0
                    },
                    801: {
                        name: "云居一轮",
                        lv: 16,
                        hp: 2000,
                        maxHp: 2000,
                        att: 100,
                        def: 40,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 4, 3]],
                        des: "( ' – ' )你就那个怪蜀黍？",
                        skill: function () {
                            var t = Math.max(20 - o.def + 15 * this.publicVar, 0), n = e("scr_data");
                            this.publicVar += 1;
                            n.role.hp -= t;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= 15;
                            return "【" + this.name + "使用「泰山压顶（130kg）」，你受到" + t + "点伤害！你感觉喘呼吸困难！防御降低15点！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").randomEvent[3] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    802: {
                        name: "寅丸星",
                        lv: 20,
                        hp: 3000,
                        maxHp: 3800,
                        att: 160,
                        def: 70,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 6, 3]],
                        des: "交出p值来",
                        skill: function () {
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 25;
                            var t = e("scr_data"), n = Math.max(30 - o.def, 5);
                            this.publicVar += 1;
                            var a = this.publicVar * n;
                            t.money -= this.publicVar;
                            t.role.hp -= a;
                            t.money < 0 && (t.money = 0);
                            return "【" + this.name + "寅丸星使用「宝塔」，你攻击减少25，残机减少" + a + "，p值减少" + (this.publicVar / 10).toFixed(1) + "元】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.money += Math.min(this.publicVar, 10);
                            t.randomEvent[3] += 1;
                            return "【你抢回被偷的p值！】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.15 * t.money, 0));
                            t.money -= n;
                            return "【你损失15%的p值！】";
                        }
                    },
                    803: (n = {
                        name: "莲妈",
                        lv: 35,
                        hp: 6000,
                        maxHp: 6000,
                        att: 380,
                        def: 120,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 8, 3]],
                        des: "快把p值交出来！",
                        skill: function () {
                            var e = parseInt(.03 * o.maxHp);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 30;
                            return "【" + this.name + "使用摩托车，你的攻击降低30点，残机减少" + e + "】";
                        },
                        defSkill: void 0,
                        winEvent: void 0
                    }, a(n, "winEvent", function () {
                        e("scr_data").randomEvent[3] += 1;
                        return "";
                    }), a(n, "lostEvent", function () {
                        var t = e("scr_data"), n = parseInt(Math.max(.1 * t.money, 0));
                        t.money -= n;
                        return "【你损失10%的p值！】";
                    }), n),
                    804: {
                        name: "空谷响子",
                        lv: 45,
                        hp: 8000,
                        maxHp: 8000,
                        att: 0,
                        def: 400,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 10, 3]],
                        des: "打劫(〃'▽'〃)！",
                        skill: function () {
                            this.publicVar += 1;
                            var t = 80 * this.publicVar;
                            e("scr_data").role.hp -= t;
                            return "【回声：每回合损失" + t + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").randomEvent[3] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.1 * t.money, 0));
                            t.money -= n;
                            return "【你损失10%的p值！】";
                        }
                    },
                    805: {
                        name: "星熊永仪",
                        lv: 60,
                        hp: 10000,
                        maxHp: 10000,
                        att: 700,
                        def: 200,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[100, 99, 12, 3]],
                        des: "快把p值交出来！",
                        skill: function () {
                            this.publicVar += 1;
                            var t = 100 * this.publicVar;
                            e("scr_data").role.hp -= t;
                            return "【流血：每回合损失" + t + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").randomEvent[3] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.15 * t.money, 0));
                            t.money -= n;
                            return "【你损失15%的p值！】";
                        }
                    },
                    806: {
                        name: "恋恋",
                        lv: 80,
                        hp: 15000,
                        maxHp: 15000,
                        att: 0,
                        def: 190,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 2,
                        getAtt: 3,
                        drop: [[100, 99, 15, 3], [100, 99, 15, 3], [100, 27, 1, 2]],
                        des: "嘿嘿(º﹃º )，咱们来玩cosplay吧~",
                        skill: function () {
                            var t = e("scr_data");
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                var n = 400 + 100 * this.publicVar - o.def, a = 20 * this.publicVar;
                                t.role.hp -= n;
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= a;
                                return "【恋恋使用「黑色高跟鞋」，你损失" + n + "点残机，并降低" + a + "点攻击】";
                            }
                            t.role.hp += 200;
                            return "【恋恋使用「皮鞭」，你恢复200点残机，降低100点防御】";
                        },
                        defSkill: function () {
                            this.hp += 200;
                            return "【恋恋有点小兴奋，恢复200点残机】";
                        },
                        winEvent: function () {
                            c.randomEvent[3] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.15 * t.money, 0));
                            t.money -= n;
                            return "【你损失15%的p值！】";
                        }
                    },
                    807: {
                        name: "艾丽（BOSS）",
                        lv: 120,
                        hp: 14000,
                        maxHp: 14000,
                        att: 800,
                        def: 300,
                        publicVar: 0,
                        escapeRate: 20,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[100, 11, 2, 1]],
                        des: "“她们竟然连一个小角色都解决不了.”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * (this.maxHp - this.hp) - o.def + .01 * this.hp, 0)), a = parseInt(.3 * n);
                            this.hp += a;
                            t.role.hp -= n;
                            return "【艾丽使用「旧作的力量」，你受到" + n + "点伤害,艾丽恢复" + a + "点残机】";
                        },
                        defSkill: function () {
                            var t = e("scr_data");
                            this.publicVar += 1;
                            var n = 200 * this.publicVar;
                            t.role.hp -= n;
                            return "【鬼镰：每回合损失" + n + "点残机】";
                        },
                        winEvent: function () {
                            c.randomEvent[3] += 1;
                            return "“也许，死是一种解脱吧...再见了...zun...”";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    808: {
                        name: "罗萨（BOSS）",
                        lv: 180,
                        hp: 10000,
                        maxHp: 10000,
                        att: 7500,
                        def: 250,
                        publicVar: 0,
                        escapeRate: 10,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[100, 11, 2, 1]],
                        des: "“我是不会死的，我一定要为她报仇！”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * (this.maxHp - this.hp) - o.def + .01 * this.hp, 0)), a = parseInt(.3 * n);
                            this.hp += a;
                            t.role.hp -= n;
                            return "【罗萨使用「嗜血狂魔」，你受到" + n + "点伤害,罗萨恢复" + a + "点残机】";
                        },
                        defSkill: function () {
                            var t = e("scr_data"), n = parseInt(.2 * this.att);
                            this.publicVar += 1;
                            var a = n * this.publicVar;
                            t.role.hp -= a;
                            return "【愤怒：每回合损失" + a + "点残机】";
                        },
                        winEvent: function () {
                            c.randomEvent[3] += 1;
                            return "“...不甘心...啊...”";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    809: {
                        name: "魅魔（BOSS）",
                        lv: 300,
                        hp: 30000,
                        maxHp: 30999,
                        att: 1800,
                        def: 700,
                        publicVar: 0,
                        escapeRate: 0,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[100, 11, 2, 1]],
                        des: "“终于轮到我出场了吗”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * (this.maxHp - this.hp) - o.def + .01 * this.hp, 0)), a = parseInt(.3 * n);
                            this.hp += a;
                            t.role.hp -= n;
                            return "【魅魔使用「普通攻击」，你受到" + n + "点伤害,魅魔恢复" + a + "点残机】";
                        },
                        defSkill: function () {
                            var t = e("scr_data"), n = parseInt(.2 * this.att);
                            this.publicVar += 1;
                            var a = n * this.publicVar;
                            t.role.hp -= a;
                            return "【威压：每回合损失" + a + "点残机】";
                        },
                        winEvent: function () {
                            c.randomEvent[3] += 1;
                            return "“魔理沙...我好想...好想...再见你一面”";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    881: {
                        name: "神崎（BOSS）",
                        lv: 500,
                        hp: 40000,
                        maxHp: 40000,
                        att: 1500,
                        def: 1250,
                        publicVar: 0,
                        escapeRate: -10,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[100, 11, 2, 1]],
                        des: "“你好，再见”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * (this.maxHp - this.hp) - o.def + .01 * this.hp, 0)), a = parseInt(.3 * n);
                            this.hp += a;
                            t.role.hp -= n;
                            return "【神崎使用「魔界大门」，你受到" + n + "点伤害,神崎恢复" + a + "点残机】";
                        },
                        defSkill: function () {
                            var t = e("scr_data"), n = parseInt(.2 * this.att);
                            this.publicVar += 1;
                            var a = n * this.publicVar;
                            t.role.hp -= a;
                            return "【恐惧：每回合损失" + a + "点残机】";
                        },
                        winEvent: function () {
                            c.randomEvent[3] += 1;
                            return "..e..e.e..e..a..a";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    882: {
                        name: "真.神崎（BOSS）",
                        lv: 999,
                        hp: 80000,
                        maxHp: 80000,
                        att: 2000,
                        def: 3000,
                        publicVar: 0,
                        escapeRate: -20,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[100, 11, 2, 1]],
                        des: "看来你是一个值得一战的对手",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * (this.maxHp - this.hp) - o.def + .01 * this.hp, 0)), a = parseInt(.3 * n);
                            this.hp += a;
                            t.role.hp -= n;
                            return "【真.神崎使用「魔化」，你受到" + n + "点伤害,毒男恢复" + a + "点残机】";
                        },
                        defSkill: function () {
                            var t = e("scr_data"), n = parseInt(.2 * this.att);
                            this.publicVar += 1;
                            var a = n * this.publicVar;
                            t.role.hp -= a;
                            return "【震慑：每回合损失" + a + "点残机】";
                        },
                        winEvent: function () {
                            return "爱丽丝你可以带走了，我认同你...";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    810: {
                        name: "帽子先生",
                        lv: 5,
                        hp: 700,
                        maxHp: 700,
                        att: 0,
                        def: 10,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 1, 3]],
                        des: "“~(ㄒoㄒ)”",
                        skill: function () {
                            var t = e("scr_data");
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= 10;
                            this.enemyEscapeRate += 15;
                            if (t.money >= 1) {
                                t.money -= 1;
                                this.publicVar += 1;
                                return "【" + this.name + "使用「求饶」，你的攻击下降10点，并给了对方0.1元】";
                            }
                            this.escapeRate += 100;
                            return "【帽子先生发现你根本没p值，打算要溜了！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.money += this.publicVar;
                            t.randomEvent[10] += 1;
                            return "【你拿回" + (this.publicVar / 10).toFixed(1) + "元】【“你们全是没同情心的坏人！”】";
                        },
                        lostEvent: void 0
                    },
                    811: {
                        name: "人型帽子",
                        lv: 12,
                        hp: 400,
                        maxHp: 400,
                        att: 0,
                        def: 9999,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 2, 3]],
                        des: "“喷子附体”",
                        skill: function () {
                            if (100 * Math.random() < 50) {
                                this.hp -= 99;
                                return "【" + this.name + "使用「嘴遁」，但是被你反弹，" + this.name + "受到99点伤害！】";
                            }
                            e("scr_data").role.hp -= 99;
                            return "【" + this.name + "使用「嘴遁」，你受到99点伤害！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").randomEvent[10] += 1;
                            return "【“.............”】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.1 * t.money, 0));
                            t.money -= n;
                            return "【你损失10%的p值！】";
                        }
                    },
                    812: {
                        name: "人形帽子(女)",
                        lv: 20,
                        hp: 2300,
                        maxHp: 2300,
                        att: 0,
                        def: 50,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 22, 1, 2]],
                        des: "“我的伪装术怎么样”",
                        skill: function () {
                            var t = 100 * Math.random(), n = 20 * this.publicVar;
                            this.publicVar += 1;
                            if (t < n) {
                                e("scr_data").role.hp -= 9999;
                                return "【你被吃瓜群众围殴，损失9999点残机！】";
                            }
                            return "【" + this.name + "在大声呼救！】";
                        },
                        defSkill: function () {
                            var t = 100 * Math.random(), n = e("scr_public"), a = e("scr_data");
                            if (t <= 40) {
                                var i = 50 - o.def;
                                a.role.hp -= i;
                                return "【你从" + this.name + "身上搜到发霉的男式内衣，你损失" + i + "点残机！】";
                            }
                            if (t > 40 && t <= 60) {
                                a.money += 1;
                                return "【你从" + this.name + "身上搜到0.1元！】";
                            }
                            if (t > 60) {
                                this.hp -= n.role.att();
                                return "【你碰到一个奇怪的东西...】";
                            }
                        },
                        winEvent: function () {
                            e("scr_data").randomEvent[10] += 1;
                            return "【“(ಥ_ಥ)有人耍流氓哇”】";
                        },
                        lostEvent: function () {
                            return "【你被吃瓜群众围殴，损失9999点残机！】";
                        }
                    },
                    813: {
                        name: "人形帽子（暴躁）",
                        lv: 32,
                        hp: 6000,
                        maxHp: 6000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 5, 3]],
                        des: "快把p值交出来，就饶你一命！",
                        skill: function () {
                            var t = Math.random(), n = Math.max(parseInt(400 * t - o.def), 0);
                            e("scr_data").role.hp -= n;
                            return "【" + this.name + "使用「疯狂」，你受到" + n + "点伤害】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").randomEvent[10] += 1;
                            return "【你抢回被偷的p值！】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.2 * t.money, 0));
                            t.money -= n;
                            return "【你损失20%的p值！】";
                        }
                    },
                    814: {
                        name: "人形帽子（失落）",
                        lv: 46,
                        hp: 2000,
                        maxHp: 2000,
                        att: 0,
                        def: 99999,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 3,
                        drop: [[100, 0, 6, 1]],
                        des: "！(ಥ﹏ಥ)~哇！哇~哇——！",
                        skill: function () {
                            var t = (233 - o.def) * (this.publicVar + 1), n = 233 * (this.publicVar + 1);
                            e("scr_data").role.hp -= t;
                            this.hp -= n;
                            this.publicVar += 1;
                            return "【你和帽子一起抱头痛哭，你损失" + t + "点残机，帽子损失" + n + "点残机】";
                        },
                        defSkill: function () {
                            e("scr_data");
                            var t = 66 * this.publicVar;
                            this.hp += t;
                            return "【你在安慰帽子，帽子恢复了" + t + "点残机】";
                        },
                        winEvent: function () {
                            e("scr_data").randomEvent[10] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    815: {
                        name: "帽子(赌)",
                        lv: 66,
                        hp: 7000,
                        maxHp: 7000,
                        att: 0,
                        def: 100,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 9, 3]],
                        des: "如果你赢啦我给你1毛p值，输啦我剁你一根手指，如何？",
                        skill: function () {
                            var t = e("scr_data");
                            if (100 * Math.random() < 20 + 20 * this.publicVar) {
                                var n = 3 * (353 - o.def);
                                t.role.hp -= n;
                                return "【你输啦，损失" + n + "点残机】";
                            }
                            this.publicVar += 1;
                            t.money += 1;
                            return "【你赢啦，获得0.1元！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").randomEvent[10] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.25 * t.money + this.publicVar, 0));
                            t.money -= n;
                            return "【你损失全部赢得p值，和自己25%的p值！】";
                        }
                    },
                    816: {
                        name: "疯狂帽子(毒)",
                        lv: 92,
                        hp: 10000,
                        maxHp: 10000,
                        att: 0,
                        def: 150,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 2,
                        getAtt: 2,
                        drop: [[100, 11, 2, 1]],
                        des: "！",
                        skill: function () {
                            var t = e("scr_data"), n = 560 - o.def;
                            this.publicVar += 1;
                            var a = 60 * this.publicVar;
                            t.role.hp -= n + a;
                            return "【帽子使用「撕咬」，你受到" + n + "点伤害，每回合损失" + a + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: function () {
                            var t = e("scr_data");
                            this.publicVar += 1;
                            var n = 60 * this.publicVar;
                            t.role.hp -= n;
                            return "【中毒：每回合损失" + n + "点残机（" + this.publicVar + "层）】";
                        },
                        winEvent: function () {
                            e("scr_data").randomEvent[10] += 1;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.3 * t.money, 0));
                            t.money -= n;
                            return "【你损失30%的p值！】";
                        }
                    },
                    900: {
                        name: "赫卡提亚",
                        lv: 35,
                        hp: 1800,
                        maxHp: 26000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 2,
                        getAtt: 2,
                        drop: [[30, 4, 2, 2]],
                        des: "“站好喽~别动啊~”",
                        skill: function () {
                            e("scr_data").role.hp -= 9999;
                            return "【赫卡提亚使用「星球！」，你损失9999点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: function () {
                            var t = e("scr_data"), n = 2 * t.randomEvent[13] + 2;
                            t.money += n;
                            t.randomEvent[13] = 0;
                            return "【“哎呀~舒服了~舒服了”。你获得" + (n / 10).toFixed(1) + "元】";
                        }
                    },
                    901: {
                        name: "受伤的妹红",
                        lv: 20,
                        hp: 200,
                        maxHp: 1e3,
                        att: 10,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 0,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 9, 1, 1]],
                        des: "妹红周身散发着火红的光芒！",
                        skill: function () {
                            this.hp += 60;
                            return "【妹红正在自愈！恢复自身60点残机】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    902: {
                        name: "拉尔瓦",
                        lv: 1,
                        hp: 1,
                        maxHp: 1000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 20,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 9, 1, 1]],
                        des: "散发着彩色光芒的蝴蝶",
                        skill: function () {
                            this.publicVar += 1;
                            if (this.publicVar % 3 == 0) {
                                if (c.money >= 25) {
                                    c.money -= 25;
                                    c.itemNum2[30] += 1;
                                    this.enemyEscapeRate += 30;
                                    return "【泽诺，吾以天为机，以金为引，赐汝神机，望汝..........】";
                                }
                                c.itemNum[4] -= 3;
                                c.itemNum[4] < 0 && (c.itemNum[4] = 0);
                                this.enemyEscapeRate += 100;
                                return "【泽诺，我需要你拥有与神谈判的条件“为了激励你拉尔瓦抢走了你的「土块」*3”】";
                            }
                            var t = e("scr_data"), n = e("scr_public"), a = t.kills[1];
                            if (0 == a) {
                                t.role.hp += 200;
                                t.role.hp > n.role.maxHp() && (t.role.hp = n.role.maxHp());
                                return "【" + this.name + "在给你治疗！你回复200点残机】";
                            }
                            this.publicVar += 2;
                            var i = 200 * a * this.publicVar;
                            t.role.hp -= i;
                            return "【剧毒：每回合损失" + i + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[1] += 1;
                            if (1 == t.kills[1]) return "「我知道，这是我无法逃脱的宿命。但是啊，愚蠢的人类，你将为此付出代价！」「凡人    如果想看吾之技能和属性，请使用神罚吧」";
                        },
                        lostEvent: void 0
                    },
                    903: {
                        name: "阿吽",
                        lv: 6,
                        hp: 300,
                        maxHp: 300,
                        att: 20,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 35,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 3, 2, 1]],
                        des: "“%&cnm#@*”",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            this.publicVar += 1;
                            if (n < 20 * this.publicVar) {
                                var a = 2 * this.att;
                                t.role.hp -= a;
                                return "【" + this.name + "使用「疯咬」，你损失" + a + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    904: {
                        name: "愤怒灵梦",
                        lv: 8,
                        hp: 315,
                        maxHp: 315,
                        att: 10,
                        def: 20,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[30, 7, 1, 2], [50, 12, 1, 2], [30, 33, 1, 2]],
                        des: "“N——M——B——！”",
                        skill: function () {
                            var t = e("scr_data");
                            if (100 * Math.random() < 50) return "【" + this.name + "使用「红色御币」，但是被你躲开啦！】";
                            var n = 4 * this.att - o.def;
                            t.role.hp -= n;
                            return "【" + this.name + "使用「红色御币」，正中靶心，你损失" + n + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    907: {
                        name: "骚灵三姐妹",
                        lv: 20,
                        hp: 1600,
                        maxHp: 1700,
                        att: 200,
                        def: 50,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 99, 10, 3]],
                        des: "来人呀！！！抓小偷啦！————",
                        skill: void 0,
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.10 * t.money, 0));
                            t.money -= n;
                            return "【你损失一半的p值！】";
                        }
                    },
                    908: {
                        name: "祸灵梦",
                        lv: 6,
                        hp: 410,
                        maxHp: 410,
                        att: 40,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[50, 3, 7, 1], [30, 33, 1, 2]],
                        des: "~恶毒如我！~",
                        skill: function () {
                            var t = Math.max(40 - o.def, 0);
                            this.publicVar += 1;
                            var n = t * this.publicVar;
                            e("scr_data").role.hp -= n;
                            return "【中毒：每回合损失" + n + "点残机（" + this.publicVar + "层）】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    909: {
                        name: "醉zun",
                        lv: 15,
                        hp: 800,
                        maxHp: 800,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[50, 20, 5, 2]],
                        des: "“不还酒，就别想走！”",
                        skill: function () {
                            var t = Math.max(120 - o.def, 0);
                            this.hp -= 99;
                            e("scr_data").role.hp -= t;
                            return "【zun使用「拼命」，你损失" + t + "点残机，醉汉损失99点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    910: {
                        name: "古明地覺",
                        lv: 200,
                        hp: 40000,
                        maxHp: 40005,
                        att: 1500,
                        def: 700,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[50, 99, 120, 3]],
                        des: "“想打四季映姬的主意？”",
                        skill: void 0,
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").chioce2[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    911: {
                        name: "古明地覺",
                        lv: 200,
                        hp: 40000,
                        maxHp: 40000,
                        att: 1500,
                        def: 700,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[50, 99, 120, 3]],
                        des: "“想打四季映姬的主意？”",
                        skill: void 0,
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").chioce2[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    911: {
                        name: "古明地覺",
                        lv: 200,
                        hp: 40000,
                        maxHp: 40000,
                        att: 1500,
                        def: 4700,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 1,
                        getAtt: 2,
                        drop: [[50, 99, 120, 3]],
                        des: "“想打四季映姬的主意？”",
                        skill: void 0,
                        defSkill: void 0,
                        winEvent: function () {
                            e("scr_data").chioce2[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    996: {
                        name: "蒙面人",
                        lv: 99,
                        hp: 99999,
                        maxHp: 99999,
                        att: 0,
                        def: 9999,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 0, 4, 1], [10, 4, 1, 2]],
                        des: "“想知道我是谁？那是不可能的！”",
                        skill: function () {
                            var t = e("scr_data"), n = 2 * Math.random() + 1, a = parseInt(o.maxHp * n);
                            t.role.hp -= a;
                            return "【蒙面人使用「闷棍Max」，你损失" + a + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: function () {
                            var t = e("scr_data"), n = e("scr_public");
                            t.ifFollow[0] = 0;
                            t.distance = 300;
                            t.button[0] = !1;
                            t.button[1] = !0;
                            t.button[2] = !0;
                            n.ifNotify = !0;
                            n.save();
                            n.init();
                            return "【你被蒙面人打晕，趴光衣服被丢在了月都门口！】";
                        }
                    },
                    997: {
                        name: "蒙面人",
                        lv: 99,
                        hp: 9999,
                        maxHp: 9999,
                        att: 0,
                        def: 9999,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 0, 4, 1], [10, 4, 1, 2]],
                        des: "“想知道我是谁？那是不可能的！”",
                        skill: function () {
                            var t = e("scr_data"), n = 2 * Math.random() + 1, a = parseInt(o.maxHp * n);
                            t.role.hp -= a;
                            return "【蒙面人使用「闷棍Max」，你损失" + a + "点残机！】";
                        },
                        defSkill: void 0,
                        winEvent: void 0,
                        lostEvent: function () {
                            e("scr_data").distance = 99;
                            return "【你被蒙面人打晕，食物全丢，趴光衣服被丢在了人间之里门口！】";
                        }
                    },
                    998: {
                        name: "游戏作者",
                        lv: 999,
                        hp: 9999,
                        maxHp: 9999,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 999,
                        achieve: 0,
                        getAtt: 1,
                        drop: [],
                        des: "“哈哈哈哈哈哈！你是想抵抗神的旨意么？”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(.3 * o.maxHp);
                            t.role.hp -= n;
                            e("scr_effect").attackEfect1();
                            return "【啊哈哈哈你的游戏数据正在被作者删除啊哈哈哈游戏已损坏游戏已损坏】";
                        },
                        defSkill: function () {
                            return "【啊哈哈哈你的游戏数据正游戏已损坏啊哈哈哈你的游戏数据正】";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.itemNum[12] += 1;
                            return "获得【MMP】*1【眼泪】*1（用于解锁隐藏剧情，你已拥有" + t.itemNum[12] + "）";
                        },
                        lostEvent: function () {
                            var t = e("scr_data2");
                            JSON.parse(cc.sys.localStorage.getItem("userData")) && cc.sys.localStorage.removeItem("userData");
                            t.initMoney = 50;
                            t.gameData[0] = 0;
                            e("scr_public").save2();
                            cc.director.loadScene("start");
                            return "你的存档已被作者清除，游戏即将自动关闭";
                        }
                    },
                    999: {
                        name: "游戏GM",
                        lv: 999,
                        hp: 999999,
                        maxHp: 999999,
                        att: 9999,
                        def: 9999,
                        publicVar: 0,
                        escapeRate: 0,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 0, 4, 1], [10, 4, 1, 2]],
                        des: "“你好，你已经被我盯上了哟~”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(.2 * o.maxHp);
                            t.role.hp -= n;
                            return "【“叫你丫的刷！啊！还刷不刷？！”】";
                        },
                        defSkill: function () {
                            var t = e("scr_data"), n = parseInt(.2 * o.hp);
                            t.role.hp -= n;
                            return "【“你丫还敢还手？你还敢还手！”】";
                        },
                        winEvent: void 0,
                        lostEvent: function () {
                            e("scr_data").health = -9999;
                            return "";
                        }
                    },
                    100001: {
                        name: "宇佐见堇子",
                        lv: 1,
                        hp: 90,
                        maxHp: 90,
                        att: 10,
                        def: 10,
                        publicVar: 0,
                        escapeRate: 30,
                        enemyEscapeRate: 0,
                        lostHealth: 0,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[20, 26, 1, 2], [60, 4, 2, 1], [60, 1, 2, 1], [60, 1, 2, 2], [5, 36, 1, 2], [40, 1, 5, 1], [40, 4, 5, 1]],
                        des: "“我是宇佐见堇子”",
                        skill: function () {
                            var t = e("scr_data"), n = 10 * t.kills[2];
                            if (100 * Math.random() < n) {
                                var a = 2 * this.att - o.def, i = this.def;
                                t.role.hp -= a * 3;
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= i;
                                return "【堇子使用「秘技.灵异珠」，你受到" + a * 3 + "点伤害，并降低" + i + "点防御！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            var t = e("scr_data");
                            if (100 * Math.random() < Math.min(5 * t.kills[2], 75)) {
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 9999;
                                return "【堇子拿灵异珠擦弹】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data"), n = t.kills[2], a = "【“做得好.....我一定会回来的........”】";
                            t.specialEnemy[100001].lv += 3;
                            t.specialEnemy[100001].att += 15;
                            t.specialEnemy[100001].hp += 80;
                            t.specialEnemy[100001].maxHp += 80;
                            t.specialEnemy[100001].def += 6;
                            t.kills[2] += 1;
                            if (2 == n) {
                                t.itemNum[0] += 20;
                                a = "【她留下20个「土块」！然后逃走了！】你获得「土块」*20";
                            }
                            if (6 == n) {
                                t.itemNum2[1] += 20;
                                a = "【她留下20个「急支糖浆」！然后逃走了！】你获得「急支糖浆」*20";
                            }
                            if (12 == n) {
                                t.itemNum2[20] += 3;
                                a = "【她留下3块「骑士剑·残」！然后逃走了！】你获得「骑士剑·残」*3";
                            }
                            if (20 == n) {
                                t.itemNum2[20] += 3;
                                a = "【她留下三个「骑士剑·残」！然后逃走了！】你获得「骑士剑·残」*3";
                            }
                            return a;
                        },
                        lostEvent: function () {
                            e("scr_data").publicVar2[7] += 1;
                            e("scr_data").itemNum2[0] += 1;
                            return "【泽诺，你怎么变得这么弱了，我好不容易才找到了对手，来这个土块给你，赶快给我变强呀!获得土块*1】";
                        }
                    },
                    100002: {
                        name: "八意永琳",
                        lv: 25,
                        hp: 1500,
                        maxHp: 1500,
                        att: 0,
                        def: 20,
                        publicVar: 0,
                        escapeRate: 80,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 3,
                        getAtt: 3,
                        drop: [[50, 3, 3, 1]],
                        des: "特注：八意永琳自愈功能已退化！！！",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.07 * this.hp - o.def, 0));
                            t.role.hp -= n * 2;
                            return "【" + this.name + "使用「弓箭」，你受到" + n * 2 + "点伤害】";
                        },
                        defSkill: function () {
                            e("scr_data").specialEnemy[100002].hp = this.hp;
                            return "";
                        },
                        winEvent: void 0,
                        lostEvent: void 0
                    },
                    200001: {
                        name: "纯狐",
                        lv: 8,
                        hp: 400,
                        maxHp: 440,
                        att: 50,
                        def: 20,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 6,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[20, 7, 1, 2], [20, 21, 1, 2], [50, 1, 1, 2], [60, 8, 1, 1], [60, 9, 1, 1], [100, 21, 1, 2], [0.05, 52, 2, 2]],
                        des: "“告诉我嫦娥在哪里吗，不说吗，算了，我在地面上时也是学过剑的”",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(this.att), a = parseInt(.1 * this.att), i = parseInt(.2 * this.att);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= a * 3;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= i;
                            t.role.hp -= n * 2;
                            return "【" + this.name + "拔出武士刀使用「奥义·浮舟渡」，你受到" + n * 2 + "点伤害，攻击下降" + i + "点，防御下降" + a * 3 + "点！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[200001].lv += 20;
                            t.specialEnemy[200001].att += 80;
                            t.specialEnemy[200001].hp += 520;
                            t.specialEnemy[200001].maxHp += 520;
                            t.specialEnemy[200001].def += 40;
                            t.orderTimes[7] = 0;
                            return "【下次我一定会让你说出嫦娥的所在地的....】";
                        },
                        lostEvent: function () {
                            e("scr_data").orderTimes[7] += 2;
                            e("scr_data").itemNum2[8] += 1;
                            e("scr_data").energy -= 80;
                            return "【“都被打成这样了还不说吗，真是条硬骨头呢，嫦娥真是有一个值得信任的人呢，这次先放过你，下次别让我见到，纯狐在地上扔下一个东西后离开了，你在地上躺了4个小时才恢复，精力减少80，获得【八卦炉】*1”】";
                        }
                    },
                    300001: {
                        name: "神之智械." + e("scr_data").kills[1] + "转（稀有）",
                        lv: 35,
                        hp: 800,
                        maxHp: 800,
                        att: 100,
                        def: 50,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[25, 9, 4, 1]],
                        des: "发现一个全身散发红色光芒的机甲！",
                        skill: function () {
                            var t = e("scr_data"), n = 10 * t.kills[1] + 40;
                            if (100 * Math.random() < n) {
                                var a = parseInt(.12 * t.role.hp + 5 + 10 * t.kills[1]);
                                t.role.hp -= a;
                                this.hp += a;
                                return "【神之智械使用「负向能量吸收仪」，你损失12%的当前残机值（" + a + "），神之智械恢复" + a + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            var t = e("scr_data");
                            if (100 * Math.random() < 10 * t.kills[1] + 40) {
                                var n = parseInt(.12 * (this.maxHp - this.hp) + 5 + 10 * t.kills[1]);
                                this.hp += n;
                                t.role.hp -= n;
                                return "【神之智械使用「神械护体」，恢复自身12%已损失的残机！(" + n + "点)，并对你造成" + n + "点伤害！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[1];
                            t.specialEnemy[300001].lv += 5;
                            t.specialEnemy[300001].att += 35;
                            t.specialEnemy[300001].hp += 210;
                            t.specialEnemy[300001].maxHp += 210;
                            t.specialEnemy[300001].def += 10;
                            t.kills[1] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    300002: {
                        name: "地藏（稀有）",
                        lv: 45,
                        hp: 2275,
                        maxHp: 2275,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 50,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[40, 8, 2, 1]],
                        des: "特注：战斗结束后地藏不会回满血！！！",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.1 * this.hp - o.def + this.def, 0));
                            t.role.hp -= n;
                            return "【" + this.name + "使用「凝视」，你受到" + n + "点伤害】";
                        },
                        defSkill: function () {
                            var t = e("scr_data");
                            t.specialEnemy[300002].hp = this.hp;
                            this.def += 10;
                            t.role.hp -= this.def;
                            return "【地藏使用「石化皮肤」「强化反甲」，防御+10，你损失" + this.def + "点残机】";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.kills[3] += 1;
                            t.specialEnemy[300002].lv += 5;
                            t.specialEnemy[300002].def += 15;
                            t.specialEnemy[300002].maxHp += 400;
                            t.specialEnemy[300002].hp = this.hp;
                            i.save();
                            if (0 == t.skillLv[16] && this.lv >= 55) {
                                t.skillLv[16] = 1;
                                return "【激活特性「防御强化2」】";
                            }
                            return "";
                        },
                        lostEvent: void 0
                    },
                    300003: {
                        name: "铃瑚",
                        lv: 35,
                        hp: 15000,
                        maxHp: 15000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 3,
                        drop: [[100, 3, 3, 1], [100, 26, 1, 2]],
                        des: "特注：铃瑚已受重伤无法回复残机值！！！",
                        skill: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.07 * this.hp - o.def, 0));
                            t.role.hp -= n * 3;
                            return "【" + this.name + "使用「撞击」，你受到" + n * 3 + "点伤害】";
                        },
                        defSkill: function () {
                            e("scr_data").specialEnemy[300003].hp = this.hp;
                            return "";
                        },
                        winEvent: function () {
                            e("scr_data").choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    400001: {
                        name: "菅牧 典",
                        lv: 100,
                        hp: 5000,
                        maxHp: 5000,
                        att: 300,
                        def: 300,
                        publicVar: 0,
                        escapeRate: 40,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[15, 11, 2, 1]],
                        des: "“你知不知道好奇能让人疯掉？”",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random(), a = this.lv / 5;
                            this.publicVar += 1;
                            if (this.publicVar <= 10) {
                                if (n < a) {
                                    var i = 9 * this.lv - o.def;
                                    t.role.hp -= i;
                                    return "【屑狐狸掏出一把不知道哪里来的枪，向你发射了一颗子弹！击中！你损失" + i + "点残机！】";
                                }
                                return "【屑狐狸掏出一把不知道哪里来的枪，向你发射了一颗子弹！但是未命中】";
                            }
                            return "【屑狐狸没子弹啦！】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[400001].lv += 20;
                            t.specialEnemy[400001].hp += 500;
                            t.specialEnemy[400001].maxHp += 500;
                            t.specialEnemy[400001].def += 40;
                            return "【“你给我等着！”】";
                        },
                        lostEvent: void 0
                    },
                    400002: {
                        name: "神树system",
                        lv: 199,
                        hp: 30000,
                        maxHp: 30000,
                        att: 0,
                        def: 500,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 0, 20, 1], [50, 1, 20, 1]],
                        des: "......",
                        skill: void 0,
                        defSkill: function () {
                            var t = e("scr_data");
                            t.specialEnemy[400002].hp = this.hp;
                            this.def += 2000;
                            t.role.hp -= this.def;
                            return "【反弹！你损失" + this.def + "点残机】";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[400002].lv += 100000;
                            t.specialEnemy[400002].def += 3000;
                            t.specialEnemy[400002].maxHp += 1e8;
                            t.specialEnemy[400002].hp = this.hp;
                            i.save();
                            return "";
                        },
                        lostEvent: void 0
                    },
                    400003: {
                        name: "今泉影狼",
                        lv: 60,
                        hp: 4000,
                        maxHp: 4000,
                        att: 600,
                        def: 150,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[100, 3, 2, 1], [20, 9, 1, 1], [5, 43, 1, 2]],
                        des: "“嗷嗷嗷~”",
                        skill: function () {
                            var t = e("scr_data"), n = 100 * Math.random();
                            this.publicVar += 1;
                            if (n < 20 * this.publicVar) {
                                var a = 2 * this.att - o.def;
                                t.role.hp -= a;
                                return "【" + this.name + "使用「撕咬」，你损失" + a + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[400003].lv += 20;
                            t.specialEnemy[400003].att += 150;
                            t.specialEnemy[400003].hp += 620;
                            t.specialEnemy[400003].maxHp += 620;
                            t.specialEnemy[400003].def += 50;
                            if (this.lv >= 160 && 0 == t.skillLv[20]) {
                                t.skillLv[20] = 1;
                                return "【激活特性「防御强化3」！】";
                            }
                            return "";
                        },
                        lostEvent: void 0
                    },
                    900001: {
                        name: "邪灵梦（精英）",
                        lv: 15,
                        hp: 800,
                        maxHp: 800,
                        att: 100,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 10,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 1, 2, 2], [30, 23, 1, 2], [30, 33, 1, 2]],
                        des: "“我的p值，你也敢捡？”",
                        skill: function () {
                            this.att += parseInt(.1 * this.att);
                            return "【灵梦使用「狂暴」，灵梦攻击增加】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[900001].lv += 30;
                            t.specialEnemy[900001].att += 180;
                            t.specialEnemy[900001].hp += 1e3;
                            t.specialEnemy[900001].maxHp += 1e3;
                            t.specialEnemy[900001].def += 60;
                            return "";
                        },
                        lostEvent: function () {
                            var t = e("scr_data"), n = parseInt(Math.max(.5 * t.money, 0));
                            t.money -= n;
                            return "【你损失一半的p值！】";
                        }
                    },
                    900002: {
                        name: "依神紫苑",
                        lv: 20,
                        hp: 1500,
                        maxHp: 1588,
                        att: 30,
                        def: 60,
                        publicVar: 0,
                        escapeRate: 10,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 0, 2, 1], [30, 22, 1, 2], [30, 34, 1, 2]],
                        des: "“(╬￣皿￣)=○这是我先看到的”",
                        skill: function () {
                            var e = parseInt(.3 * this.def), t = parseInt(.1 * this.hp);
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= e;
                            this.hp += t;
                            return "【紫苑使用「贫之怒视」，你降低" + e + "点防御，紫苑很开心，恢复了" + t + "点残机】";
                        },
                        defSkill: void 0,
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[900002].lv += 40;
                            t.specialEnemy[900002].att += 120;
                            t.specialEnemy[900002].hp += 1400;
                            t.specialEnemy[900002].maxHp += 1400;
                            t.specialEnemy[900002].def += 90;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    900003: {
                        name: "泽诺（心魔）",
                        lv: 500,
                        hp: 30000,
                        maxHp: 30000,
                        att: 927000000000,
                        def: 1300,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 14, 6, 2], [100, 7, 1, 2], [100, 29, 1, 2]],
                        des: "“小伙，过来拆塔？”",
                        skill: function () {
                            var e = this.att + o.def, t = parseInt(.2 * (this.maxHp - this.hp));
                            c.role.hp -= e;
                            this.hp += t;
                            return "【泽诺使用「爆燃吹息」，对你造成" + e + "点伤害，自身恢复" + t + "点残机】";
                        },
                        defSkill: function () {
                            if (100 * Math.random() < Math.min(this.lv / 50 + 20, 80)) {
                                var t = parseInt(.5 * o.att);
                                e("scr_data").role.hp -= t;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= 999999;
                                return "【" + this.name + "使用「骑士盾」「骑士剑」，你减少" + t + "点残机！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[900003].lv += 500;
                            t.specialEnemy[900003].att += 1500;
                            t.specialEnemy[900003].hp += 16e3;
                            t.specialEnemy[900003].maxHp += 16e3;
                            t.specialEnemy[900003].def += 1150;
                            return "";
                        },
                        lostEvent: function () {
                            e("scr_data").itemNum2[19] -= 1;
                            return "【勇气·坚毅被抢走一把！你损失「勇气·坚毅」*1！】";
                        }
                    },
                    900004: {
                        name: "泽诺·镜像",
                        lv: 1,
                        hp: 999999,
                        maxHp: 999999,
                        att: 300,
                        def: 0,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 3,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[20, 40, 1, 2]],
                        des: "",
                        skill: function () {
                            if (this.att < 2 * o.att) {
                                this.att += 20;
                                this.lv += 1;
                                c.specialEnemy[900004].att = this.att;
                            }
                            c.specialEnemy[900004].hp = this.hp;
                            if (this.lv > 30) {
                                var e = 2 * Math.max(this.att - o.def, 0);
                                c.role.hp -= e;
                                return "【？使用「学习.暴击」你受到" + e + "点伤害！】";
                            }
                            if (this.lv > 100) {
                                e = 2 * this.att;
                                c.role.hp -= e;
                                return "【？使用「学习.破防」你受到" + e + "点伤害！】";
                            }
                            if (this.lv > 200) {
                                e = 2 * this.att;
                                var t = parseInt(.2 * e);
                                this.hp += t;
                                c.role.hp -= e;
                                return "【？使用「学习.吸血」你受到" + e + "点伤害，？恢复" + t + "点残机！】";
                            }
                            if (this.lv > 500) {
                                this.publicVar += 1;
                                e = 2 * this.att, t = parseInt(.2 * e);
                                var n = parseInt(.2 * this.att * this.publicVar);
                                this.hp += t;
                                c.role.hp -= e + n;
                                cc.find("Event/scr_fight").getComponent("scr_fight").correct[1] -= parseInt(.05 * o.def);
                                return "【？使用「进化.毒暴」你受到" + e + "点伤害，附加" + n + "点毒性伤害，防御降低5%。？恢复" + t + "点残机！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            if (this.def < 2 * o.def) {
                                this.def += 10;
                                this.lv += 1;
                                c.specialEnemy[900004].def = this.def;
                                c.specialEnemy[900004].lv = this.lv;
                            }
                            c.specialEnemy[900004].hp = this.hp;
                            if (this.lv > 150) {
                                var e = parseInt(.5 * this.def);
                                c.role.hp -= e;
                                return "【？使用「学习.反弹」你受到" + e + "点伤害！】";
                            }
                            if (this.lv > 700) {
                                e = 2 * this.att;
                                c.role.hp -= e;
                                cc.find("Event/scr_fight").getComponent("scr_fight").publicVar -= parseInt(.4 * o.att);
                                return "【？使用「进化.离子护甲」，擦弹40%伤害，你受到" + e + "点反弹伤害！】";
                            }
                            return "";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[900004].lv += 999;
                            t.specialEnemy[900004].maxHp += 999999;
                            t.specialEnemy[900004].hp = this.hp;
                            i.save();
                            return "“如果我不存在...整个世界将会陷入混乱...”";
                        },
                        lostEvent: void 0
                    },
                    900005: {
                        name: "神炎基因计划",
                        lv: 500,
                        hp: 1999999,
                        maxHp: 199999,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[100, 17, 4, 2]],
                        des: "「神炎：由于基因计划属于研发失败的产品，有些功能并不完善，目前还不具备自动修复能力；但是在这个世界的某处，还沉睡着一个来自同一胚胎、即将完工的伟大作品！」",
                        skill: function () {
                            if (this.att < 1500) {
                                this.att += 4;
                                this.lv += 1;
                                c.specialEnemy[900005].att = this.att;
                            }
                            c.specialEnemy[900005].hp = this.hp;
                            if (this.lv > 580) {
                                this.publicVar += 1;
                                var e = this.att, t = parseInt(.05 * this.att * this.publicVar);
                                c.role.hp -= e + t;
                                return "【基因计划使用「进化.感染」你受到" + e + "点伤害，附加" + t + "点生化伤害！】";
                            }
                            return "";
                        },
                        defSkill: function () {
                            if (this.def < 600) {
                                this.def += 2;
                                this.lv += 1;
                                c.specialEnemy[900005].def = this.def;
                                c.specialEnemy[900005].lv = this.lv;
                            }
                            c.specialEnemy[900005].hp = this.hp;
                            if (this.lv > 530) {
                                var e = Math.max(this.def - 28, 0);
                                c.role.hp -= e;
                                return "【基因计划使用「模仿.反弹」你受到" + e + "点伤害！】";
                            }
                            return "【基因计划静静的看着你...】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    900006: {
                        name: "一块黑色的石头",
                        lv: 200,
                        hp: 1500000,
                        maxHp: 2000000,
                        att: 0,
                        def: 0,
                        publicVar: 0,
                        escapeRate: 100,
                        enemyEscapeRate: 0,
                        lostHealth: 1,
                        achieve: 0,
                        getAtt: 1,
                        drop: [[50, 8, 12, 1]],
                        des: "「特注：这真的是块石头！」",
                        skill: function () {
                            c.specialEnemy[900006].hp = this.hp;
                            return "";
                        },
                        defSkill: function () {
                            if (this.def < 300) {
                                this.def += 1;
                                c.specialEnemy[900006].def = this.def;
                            }
                            c.specialEnemy[900006].hp = this.hp;
                            var e = 2 * this.def;
                            c.role.hp -= e;
                            return "【你受到" + e + "点反弹伤害！】";
                        },
                        winEvent: function () {
                            c.choice[6] += 1;
                            return "";
                        },
                        lostEvent: void 0
                    },
                    900007: {
                        name: "没吃饭的灵梦",
                        lv: 40,
                        hp: 5000,
                        maxHp: 5000,
                        att: 200,
                        def: 100,
                        publicVar: 0,
                        escapeRate: -9999,
                        enemyEscapeRate: 0,
                        lostHealth: 2,
                        achieve: 1,
                        getAtt: 1,
                        drop: [[30, 33, 1, 2]],
                        des: "“？~敢抢城管队的东西？”",
                        skill: function () {
                            if (4 == this.publicVar) {
                                var e = this.att * (1 + this.publicVar);
                                c.role.hp -= e;
                                return "【" + this.name + "使用「梦想天生」，你损失" + e + "点残机！】";
                            }
                            this.publicVar += 1;
                            var t = this.att, n = parseInt(.1 * this.att * this.publicVar);
                            c.role.hp -= t + n;
                            cc.find("Event/scr_fight").getComponent("scr_fight").correct[0] -= parseInt(.05 * o.att);
                            return "【" + this.name + "使用「加长御币！」你受到" + t + "点伤害，附加" + n + "流血，攻击降低5%！】";
                        },
                        defSkill: function () {
                            this.att += parseInt(.05 * this.att);
                            return "【" + this.name + "使用「符卡强化」，灵梦攻击强化！】";
                        },
                        winEvent: function () {
                            var t = e("scr_data");
                            t.specialEnemy[900007].lv += 20;
                            t.specialEnemy[900007].att += 63;
                            t.specialEnemy[900007].hp += 2e3;
                            t.specialEnemy[900007].maxHp += 2e3;
                            t.specialEnemy[900007].def += 23;
                            var n = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent").randomItemNum || 3;
                            t.itemNum[2] += n;
                            return "【获得「p点」*" + n + "！】";
                        },
                        lostEvent: function () {
                            var t = e("scr_data");
                            t.money -= parseInt(.3 * t.money);
                            return "【你被抢走30%的p值！】";
                        }
                    }
                };
                t.exports = r;
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_eventData: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "2944e+wEixMS7sVFHLOkrHX", "scr_eventData");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () { }
        });
        cc._RF.pop();
    }, {}],
    scr_eventDetermine: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "9e235Y/Ke9BkbMuLhAsJW6/", "scr_eventDetermine");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("main");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_event: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "00b3c6RjfdHPbEfl8GaNNla", "scr_event");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(2));
                a.color = new cc.Color(0, 255, 255);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 60;
                a.getComponent(cc.Label).fontSize = 40;
            },
            event: function () {
                var t = this, n = e("scr_data"), a = e("scr_data2"), i = e("scr_public"), c = e("scr_effect"), o = {
                    1: {
                        text: ["来到破旧的小区，", "一位热情的朱鹭子将我带到一个房间，\n寒暄一番后，她认真的介绍道，", "“我们的工作内容是向附近居民推广《幻想乡缘起》。\n公司要统一着装，\n入职前需交1块p值的服装费，\n交完费明天就可上班，\n日薪20p加提成，你看咋样？”", "没p值", "交1块p值"],
                        BGM: "",
                        require: [n.distance, 0],
                        choice1: function () {
                            n.enemyId = 102;
                            r("“别怪我不客气了", "看看他身上到底有没有p值！”");
                        },
                        choice2: function () {
                            if (n.money >= 10) {
                                n.choice[1] = 2;
                                n.money -= 10;
                                r("“很好，明天过来上班吧”");
                            } else c.playText("Canvas/notify2", "p值不够！", 60);
                        }
                    },
                    2: {
                        text: ["“很好，", "今后少侠只需将露米娅尸体封在这八卦炉中，”", "说完怪人掏出一个罐头瓶，", "“在下会定期前来收尸，", "每只一毛。", "在此拜谢！！”", "", "…(⊙_⊙;)…"],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            var e = n.kills[0], t = (e / 10).toFixed(1);
                            n.money += e;
                            n.kills[0] = 0;
                            r("“你本次一共消灭" + e + "只露米娅，\n这是" + t + "元，请务必收下！日后自会再见！告辞！”，\n怪人飞一般的逃跑了...\n【你获得" + t + "元】");
                        }
                    },
                    3: {
                        text: ["我敲了敲门，没反应", "又敲了敲，门开了，是囧仙", "我解释来意，囧仙似乎听不太清，但是执意让我进屋，", "家里散乱的堆放着各种手办，", "弥漫着一股铜臭味。", "雨停了，屋里非常的安静，囧仙一直呆坐着，他已经记不起来自己过去的事迹。", "【临走时，你选择...】", "帮忙打扫下手办（消耗全部精力）", "帮忙打扫也无济于事，自然而然吧"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.energy = 0;
                            n.choice[2] = 2;
                            n.randomEvent[1] += 1;
                            r("你帮忙打扫了手办，离开时囧仙也没有骂你,可能是真糊涂了...获得「恶人卡」*1");
                        },
                        choice2: function () {
                            r("雨停了，你离开了，静谧的天空上升起一道彩霞，屋内传来电视广告的声音...");
                        }
                    },
                    4: {
                        text: ["   neet姬用颤抖的手、赶紧大打了一局东方永夜抄，开始讲述她的故事，也不管你是否想听。", "   她来幻想乡时就开始打游戏，但是从来没赢过东方永夜抄", "   后来永琳看不下去，离家出走了", "中间还打过几次其他游戏，但都因为没法忘记永夜抄", "现在只打永夜抄，直到通关为止", "", "......"],
                        BGM: "BGM3",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            r("“我一定能通关永夜抄的！”，临走时，她说一定会让我们看到那一天的\n【巫女服等级+1！】");
                        }
                    },
                    5: {
                        text: ["洞底的一幕让我有些惊讶，", "一位老太太正帮一位中年男抓虱子，", "中年男正是——灭露堂九堂主！", "堂主立马认出了你，像孩子一样手舞足蹈起来。", "老奶奶执意要留你吃饭，", "她讲起了堂主的往事。", "", "继续"],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 6;
                            t.ifTriggerEvent();
                        }
                    },
                    6: {
                        text: ["“堂主是附近镇上一位小老板，", "一天，他载着3岁儿子外出钓鱼，", "天气炎热，车窗未关", "...五小时后，他才想起车内的孩子，", "等他赶到时，孩子全身发烫，气息微弱，全身是包", "最后孩子感染乙脑死亡", "这就是他为什么要消灭露米娅的原因", "他自从见到了你，更加肯定了自己的目标...”", "临走时，你选择", "把身上所有p值留给堂主", "算了，我这点钱也没用"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            var e = n.kills[0], t = n.money, a = 5 * e + t;
                            n.kills[0] = 0;
                            n.money = 0;
                            n.role.maxHp += a;
                            n.choice[7] += 1;
                            r("【祝福】你的最大残机值提高" + a + "点\n（提高量与捐p值数和灭蚊数有关，你已击杀" + e + "只露米娅，捐出" + (t / 10).toFixed(1) + "元）");
                        },
                        choice2: function () {
                            r("你走出山洞，已是早晨，蔚蓝的天空中漂浮着朵朵白云");
                        }
                    },
                    7: {
                        text: ["跟随着小姐姐，在蛛网般的月都外围、拐弯无数次，", "我来到一个简陋的出租屋。", "突然一个女人破门而入，大骂，“敢碰我的女人！啊！”", "", "逃走..."],
                        BGM: "",
                        require: [n.distance, 0],
                        choice1: function () { },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 109;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    8: {
                        text: ["射命丸文是本地的有名记者，而且看起来还特别可爱", "立志要成为最有影响力的新闻记者…", "所以现在在采访各种人，而我，就是被她采访的外乡人…", "", "..."],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            n.energy += 60;
                            n.hunger = i.maxHunger();
                            n.role.hp = i.role.maxHp();
                            r("精力+60，饥饿全恢复，残机全恢复！");
                        }
                    },
                    9: {
                        text: ["爱丽丝迫不及待的把我拉到墙角，眉飞色舞的讲述回家后的经历。", "比如离家后灵梦魔理沙帕琪如何找翻天，她回家后如何没有受到一句批评，现在所有人是如何把她当女皇养着...", "临走时爱丽丝让你选一个礼物，你选择...", "爱丽丝的贴身衣物", "食物和p值"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.itemNum2[10] += 1;
                            n.itemNum2[11] += 1;
                            n.itemNum2[21] += 1;
                            r("获得【银白色荣耀】*1，【暗影之剑】*1，【爱丽丝手链】*1");
                        },
                        choice2: function () {
                            n.money += 80;
                            n.itemNum[0] += 20;
                            r("获得8元p值！【土块】*20");
                        }
                    },
                    10: {
                        text: ["“那你这唱歌的p值够还吗？”\n“还行吧，现在一天可以赚三四块，多的时候十几块。现在只想把我妈治好，还p值的事我还没想好...”", "“想过做点别的吗？”，我问。\n“呵~上学时光顾着打架，买上一个三本大学，现在大二，不过休学了\n，啥也不会，只能端盘子、做服务员，但是那点p值根本不够...”", "“你不是会吉他么，可以去教小孩呀！”\n“这只是以前自己瞎玩的，也是个半吊子，那够教学生呀~”", "", "..."],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 11;
                            t.ifTriggerEvent();
                        }
                    },
                    11: {
                        text: ["“不过我有一个主意，一直都想和你说来着”，露西突然有点兴奋的说道。", "“啥点子？”", "“我发现你的生存能力很强，像魔术师一样，会无中生有！我想咱们可以结合一下，你收集一些稀奇的东西，我负责卖出去！怎么样？”", "", "哇~太棒了！你真的聪明~"],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 12;
                            t.ifTriggerEvent();
                        }
                    },
                    12: {
                        text: ["提示：从现在开始你可以进入山洞副本，每天收集的特殊道具，系统会自动出售（出售金额可在每日的结算界面查看）", "最后，你需要选择分成比例。\n（举例：假设今天卖出10块，选择7成就意味着你可以拿到7块，露西拿3块；选择3成，则反过来）\n（作者：不要问我为啥不能五五开。我不会去设置这种容易选择的保守选项！）", "我最辛苦，应该我拿大头（拿7成）", "我应该帮帮她，我拿小头吧（拿3成）"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.publicVar2[21] = 7;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            n.publicVar2[21] = 3;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    13: {
                        text: ["露西急忙向我跑过来，脸色苍白的说道，", "“我得回家了，我的东西就你拿去用吧，我也带不走。\nemmmm....我也不知道该说啥。总之，加油吧，一起！”", "\n说完露西就匆匆跑开了，坐上民警的巡逻车，消失温暖的阳光中...", "", "确定"],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            var e = Math.max(parseInt(n.publicVar[7] / 50), 1), t = Math.min(Math.max(parseInt(n.publicVar[7] / 100), 1), 6);
                            n.money += 4 * e;
                            n.money += 10 * e;
                            n.itemNum2[26] += t;
                            n.itemNum2[27] += t;
                            if (n.publicVar[7] >= 1000) {
                                n.itemNum2[10] += 1;
                                n.itemNum2[11] += 1;
                                r("你获得【p值】*" + (10 * e / 10).toFixed(1) + ",【土块】*" + 4 * e + "，【暗影之剑】*1，【银白色荣耀】*1，【理信·慎重】*" + t + "，【爱丽丝手链】*" + t + "！\n【说明：奖励与露西最终的好感有关】");
                            } else if (n.publicVar[7] >= 400) {
                                n.itemNum2[10] += 1;
                                n.itemNum2[9] += 1;
                                r("你获得【p值】*" + (10 * e / 10).toFixed(1) + ",【土块】*" + 4 * e + "，【暗影之剑】*1，【巫女服】*1，【理信·慎重】*" + t + "，【爱丽丝手链】*" + t + "！\n【说明：奖励与露西最终的好感有关】");
                            } else {
                                n.itemNum2[8] += 1;
                                n.itemNum2[9] += 1;
                                r("你获得【p值】*" + (10 * e / 10).toFixed(1) + ",【土块】*" + 4 * e + "，【八卦炉】*1，【巫女服】*1，【理信·慎重】*" + t + "，【爱丽丝手链】*" + t + "！\n【说明：奖励与露西最终的好感有关】");
                            }
                        }
                    },
                    1002: {
                        text: ["“你好，你是泽诺对吧，我就是东方模式的作者神炎，QQ是1297578920，验证是：杰克，游戏群号是870215875，（记住，你一定要在70天前到达300km，不然我不保证你的游戏可以正常进行），封面的各项数值是代号为「战舞」的热情网友提供的，版本是由只狼版的最初改版进行修改（只狼版因为屑作者没有备份而崩溃了），本人在此万分感谢，本游戏是「流浪日记」的二次同人”", "“这个版本相当困难”", "“你需要我的帮助”", "我只要智慧", "我想要力量"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.itemNum2[17] += 70;
                            n.itemNum2[27] += 2;
                            r("获得【贤明·正直】*70，【爱丽丝手链】*2");
                        },
                        choice2: function () {
                            n.itemNum2[8] += 5;
                            n.itemNum2[29] += 1;
                            r("既然你意已决，那就让你称霸一方，但是，同时也会给你一个东西，让你铭记那段历史，获得【八卦炉】*5【黄铜级勇者身份牌】*1！！！！！");
                        }
                    },
                    1003: {
                        text: ["“你好，泽诺”", "“请务必选择你的出身！”", "“会有不同的开局”", "欧皇世家", "莽夫世家"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.itemNum2[26] += 50;
                            n.itemNum2[27] += 3;
                            r("获得【理信·慎重】*50，【爱丽丝手链】*3");
                        },
                        choice2: function () {
                            n.itemNum2[8] += 2;
                            n.itemNum2[3] += 4
                            r("这是新手武器库武器全给你了，获得【八卦炉】*2，【绯想剑】*4");
                        }
                    },
                    1004: {
                        text: ["晚上突然下起了雨，又湿又冷", "我正躺在床上小憩", "绯探羽睡袋外突然砰砰作响", "我忙撩开绯探羽睡袋向外看去竟然来了一个妖怪打扮的人", "你是紫吧？", "你的服装好帅"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.itemNum2[10] += 1;
                            n.itemNum2[11] += 1;
                            r("是的，而且这个模式挺简单的我已经通关了就是小心一个不讲武德的灵梦她会抢你的p值，说完她脱下了装备递给了你，获得【银白色荣耀】*1，【暗影之剑】*1");
                        },
                        choice2: function () {
                            n.itemNum2[8] += 3;
                            n.itemNum2[4] += 6;
                            r("哈哈哈我就喜欢别人夸我这些装备给你吧！获得【八卦炉】*3，【天之羽衣】*6");
                        }
                    },
                    1005: {
                        text: ["早上，我正在睡觉，", "突然被p点滚落的声音惊醒，", "是否要出绯探羽睡袋看看？", "是", "否"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.enemyId = 100;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    1006: {
                        text: ["对了，这款游戏有很多猝不及防的事件", "最好保证自己的属性高一点", "我可以帮你预知以后发生的一件事", "请问你要预知什么事呢", "明天发生的事", "以后发生的事"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            r("明天，那会遇到灵梦的袭击，不过只要不出去就好了，属性高可以尝试与灵梦一战");
                        },
                        choice2: function () {
                            r("在你到达人间之里的时候，第二天会有一个强大的人来找你，一切都看你自己的造化了");
                        }
                    },
                    1007: {
                        text: ["遭到不明物体袭击！！！", "是否迎战?", "是", "否"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.enemyId = 908;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    1009: {
                        text: ["还有一件事，这款游戏所有怪物都会掉落专属道具", "你可以自己推测这些道具的用处", "你也可以加群来看一列的目录", "就这样了", "好的", "好的"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            r("");
                        },
                        choice2: function () {
                            r("阿巴阿巴，如果不懂用处可能会？");
                        }
                    },
                    2002: {
                        text: ["一大早，我正在睡觉，", "突然被一个萌妹子叫醒，", "妹子说道，", "“根据幽幽子大人的命令...来这里住都交三个电池,”", "不理她", "赶紧递电池*3"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            if (0 == e("scr_data2").gameData[4]) {
                                n.role.hp = i.role.maxHp();
                                n.enemyId = 101;
                                i.save();
                                cc.director.loadScene("main");
                            } else {
                                n.money += 20;
                                r("“开玩笑的嘛，来，拿着买点吃的，早点回去吧孩子~”。获得2元~");
                            }
                        },
                        choice2: function () {
                            if (0 == e("scr_data2").gameData[4]) if (n.itemNum2[7] >= 3) {
                                n.itemNum2[7] -= 3;
                                r("妖梦说道，呼，终于能让幽幽子大人玩游戏了\n“不过要小心幽幽子大人在再找你也要*罒▽罒*”");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "你身上没有电池..."; else {
                                n.itemNum2[7] += 1;
                                n.itemNum2[12] += 2;
                                r("“开玩笑的嘛，来，用个电池压压惊~”。获得【电池】*1，【皮⑨】*2");
                            }
                        }
                    },
                    2004: {
                        text: ["早上，一只毛玉，", "远远看了我好久；", "我浑身不自在，刚想起身，", "毛玉在地上吐了个东西，一溜烟跑了。", "我走近一看，是烤大鲶！！", "", "(≥﹏ ≤)"],
                        BGM: "BGM1",
                        require: [],
                        choice1: function () {
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            n.hunger = i.maxHunger();
                            n.energy += i.maxEnergy();
                            n.role.hp = i.role.maxHp();
                            r("感觉自己元气满满哒！\n（状态全恢复+爆满！）");
                        }
                    },
                    2006: {
                        text: ["人间之里飘来一张纸，纸上写道，", "“急招大量临时工：日薪15p点！年龄不限！学历不限！无需身份证！工资日结。\n地址：人里小区5楼603”，", "你要去看看吗？", "去", "不去"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            t.eventId = 1;
                            t.ifTriggerEvent();
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    2009: {
                        text: ["“少侠请留步”", "一个奇装异服，蓬头垢面的人走过来说道，", "“在下灭露堂九堂主，", "立志杀尽天下露米娅,", "近日，在下跟踪多日，", "少侠武功了得，所到之处，露尸遍野，", "在下实在佩服，", "不知是否愿帮我完成一个心愿?”", "", "蛤?"],
                        BGM: "",
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 2;
                            t.ifTriggerEvent();
                        }
                    },
                    2011: {
                        text: ["一个醉zun说你偷了他的皮⑨，非要你还⑨，", "给不给?", "不给", "给（需皮⑨*5）"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 909;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            if (n.itemNum2[12] >= 5) {
                                n.itemNum2[12] -= 5;
                                r("“我就说是你偷的嘛！还不承认？你这种小孩就喜欢偷东西。”");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "你身上没皮⑨...";
                        }
                    },
                    2014: {
                        text: ["一位neet姬走过来，说道，", "“小哥，麻烦你个事儿，”", "说完她拿出一件旧巫女服。", "“这本来是留着过冬的衣服，还是新的，你看能不能换你几个电池玩玩？”", "换（需电池*3）", "不换"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            if (n.itemNum2[7] >= 3) {
                                n.itemNum2[7] -= 3;
                                n.itemNum2[9] += 1;
                                t.eventId = 4;
                                cc.audioEngine.stopAll();
                                cc.audioEngine.play("res/raw-assets/Audio/BGM3.ogg", !1, 1);
                                t.ifTriggerEvent();
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "你身上没有那么多电池...";
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    2016: {
                        text: ["流浪汉之间的竞争变得日益激烈，", "很多流浪汉不得不早晨4点、蹲守在各种小饭店和垃圾点...", "这一天，你总算领先了一个长期蹲守据点的老奶奶，几分钟", "你选择", "开左边的垃圾箱", "开右边的垃圾箱"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.itemNum2[27] += 1;
                            n.itemNum2[24] += 1;
                            r("获得【爱丽丝手链】*1，【幻想乡缘起】*1");
                        },
                        choice2: function () {
                            n.itemNum[0] += 4;
                            n.itemNum[1] += 4;
                            n.itemNum[4] += 3;
                            n.itemNum2[1] += 3;
                            n.money += 8;
                            r("获得【绯想碎片】*4【探女の羽毛】*4【土块】*3【急支糖浆】*3【p值】*0.8");
                        }
                    },
                    2017: {
                        text: ["“你还没走？”", "“那让我测试一下你有没有能力对付幽幽子大人？”", "", "好的！"],
                        BGM: "",
                        require: [n.choice[0], 1],
                        require2: [a.gameData[4], 0],
                        choice1: function () { },
                        choice2: function () {
                            n.enemyId = 101;
                            n.role.hp = i.role.maxHp();
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    2019: {
                        text: ["我正在林荫道下小憩，", "一位伯封好奇的看着我，似乎想要过来，", "纯狐慌忙拉住他，然后从p值包抽出2元p值，说道，", "“告诉我嫦娥在哪”", "编一个地方", "不知道"],
                        BGM: "BGM1",
                        require: [],
                        choice1: function () {
                            n.money += 20;
                            r("好吧...\n我就是个骗子\n【获得2元p值！】");
                        },
                        choice2: function () {
                            r("是啊，确实不知道？");
                        }
                    },
                    2020: {
                        text: ["“人类", "起来！”", "我听到了一个攻气十足但又不刺耳的声音。", "一个亡灵，盯着我，对我说话，身后是前几天的妖梦，", "“还有没有电池？”", "有", "没有"],
                        BGM: "BGM1",
                        require: [],
                        choice1: function () {
                            if (0 == a.gameData[4]) {
                                n.skillLv[4] = 0;
                                n.enemyId = 103;
                                n.role.hp = i.role.maxHp();
                                i.save();
                                cc.director.loadScene("main");
                            } else {
                                n.itemNum2[11] += 1;
                                r("“哈哈哈哈哈~果然是条硬汉！小伙子有前途。拿上老子的战袍，征服宇宙吧！”。获得【银白色荣耀】*1");
                            }
                        },
                        choice2: function () {
                            if (0 == a.gameData[4]) {
                                n.enemyId = 103;
                                n.role.hp = i.role.maxHp();
                                i.save();
                                cc.director.loadScene("main");
                            } else {
                                n.itemNum2[11] += 1;
                                r("“哈哈哈哈哈~果然是条硬汉！小伙子有前途。拿上老子的战袍，征服宇宙吧！”。获得【银白色荣耀】*1");
                            }
                        }
                    },
                    3006: {
                        text: ["早上，山里下起了暴雨，", "绯探羽睡袋里全部湿透，我慌忙逃窜，寻找避雨的地方，", "突然发现山脚有间民房", "【你要进去避雨吗？】", "去", "不去"],
                        require: [n.distance, 0],
                        choice1: function () {
                            t.eventId = 3;
                            t.ifTriggerEvent();
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    3007: {
                        text: ["来到一个小村庄，", "门口两个玩游戏的年轻人，挡住去路，", "不让通行。", "硬闯", "绕道而行"],
                        require: [n.distance, 0],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 104;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    3008: {
                        text: ["我正在路边小解，", "突然，一辆黑色轿车疾驰而来，", "我本能一跃，滚落沟底，", "正在此时，车上下来两个拿着枪的农民！", "", "刚正面！"],
                        require: [n.choice[3], 2],
                        choice1: function () { },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 105;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    3010: {
                        text: ["早上我被一阵阵大哭声和大笑声吵醒，", "我钻出绯探羽睡袋一看————", "路边，一个可爱，戴着发卡，旁边有两个人偶的金发妹子，喝着皮⑨，一会大笑，一会大哭...", "过去问问", "算了，还是不要生事的好"],
                        require: [],
                        choice1: function () {
                            0 == a.gameData[4] ? n.choice[5] += 1 : n.choice[5] += 66;
                            r("女孩（爱丽丝，游戏女主之一）瞟了你一眼，并没有理你....");
                        },
                        choice2: function () {
                            n.role.hp -= 1;
                            r("女孩（爱丽丝，游戏女主之一）向你扔了块石头，\n<(｀^′)>\n你损失1点残机");
                        }
                    },
                    3011: {
                        text: ["晚上，我正在绯探羽睡袋里睡觉", "一个柔软的身体钻了进来，", "“(；´д｀)ゞ~老哥你好~", "有没有啥吃的a~，", "我两天没吃过东西啦\n(ಥ_ಥ)”", "有哇", "流氓——呀————！"],
                        require: [n.choice[5], 1],
                        choice1: function () {
                            n.choice[5] += 3;
                            n.itemNum[0] = 0;
                            n.itemNum2[0] = 0;
                            n.itemNum2[12] -= parseInt(.5 * n.itemNum2[12]);
                            n.ifFollow[0] = 1;
                            r("...“哈哈哈哈哈哈哈哈哈——嗝————谢谢老哥！\n(*≧▽≦)ツ┻━┻！\n哈哈哈，那就麻烦老哥带我回月都啦！”\n【你损失所有的土块/高级土和一半的皮⑨！！！爱丽丝跟随！】");
                        },
                        choice2: function () {
                            r("你一脚把女孩（爱丽丝）踹出了绯探羽睡袋...");
                        }
                    },
                    3013: {
                        text: ["“嘿~老哥，做早饭咧~(｀・ω・´)", "我的上海和蓬莱做饭可厉害啦(*￣︶￣)，", "让我试试呗( • ̀ω•́ )✧~", "让她试", "不让她试"],
                        require: [n.ifFollow[0], 1],
                        choice1: function () {
                            if (n.choice[5] < 35) {
                                n.role.hp = 1;
                                n.choice[5] += 3;
                                r("...你喝了一大盆「黯然销魂十杂大补汤」\n【残机全损失，爱丽丝好感+4】");
                            } else {
                                n.itemNum2[0] += 1;
                                r("获得【高级土】*1");
                            }
                        },
                        choice2: function () {
                            n.choice[5] -= 3;
                            r("哼！￣へ￣\n【爱丽丝好感-4】");
                        }
                    },
                    3015: {
                        text: ["发现一个山洞，", "洞里有两条路，", "一条似乎有点亮光，", "一条布满青苔，黑不见底", "你走哪条？", "有亮光的", "幽黑的"],
                        require: [],
                        choice1: function () {
                            t.eventId = 5;
                            t.ifTriggerEvent();
                        },
                        choice2: function () {
                            n.itemNum2[18] += 1;
                            r("你找了一个【录像机】！拿了赶紧溜了~");
                        }
                    },
                    3016: {
                        text: ["“老哥(ಥ﹏ಥ)，", "刚才打雷啦，听见没，太吓人啦(´థ౪థ)σ，", "emmm..那个..我..能睡你旁边吗？\n(︶.̮︶✽)”", "可以哇", "不行！"],
                        require: [n.ifFollow[0], 1],
                        choice1: function () {
                            n.energy = 0;
                            n.choice[5] += 10;
                            r("由于爱丽丝晚上说梦话（偷笑）、蹬人，你一晚没睡！\n【精力0恢复！爱丽丝好感+10】");
                        },
                        choice2: function () {
                            n.choice[5] -= 4;
                            r("￣へ￣\n【爱丽丝好感-4】");
                        }
                    },
                    3017: {
                        text: ["有人喊抓贼，", "是否帮忙？", "是", "算了吧"],
                        require: [],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 106;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    3022: {
                        text: ["一个驻地大半年的地质勘察队、执意要请你去基地吃口饭。", "【你去吗？】", "去", "不去"],
                        require: [],
                        choice1: function () {
                            n.hunger = i.maxHunger();
                            n.itemNum[0] += 3;
                            n.itemNum2[13] += 1;
                            n.chioce2[0] = 1;
                            r("地质队，请你吃了一顿饭。早苗托你送一个生日礼物给诹访子。\n【饥饿全恢复！获得「土块」*3！获得委托礼物「ヾ(❀╹◡╹)ﾉ~」*1】");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    3024: {
                        text: ["你在一个隐蔽的草丛中发现一套水手服，", "似乎是有人故意放在这里的", "你要用它替换掉爱丽丝身上的脏衣服吗？", "换换换！", "想想就行了(º﹃º )"],
                        require: [n.ifFollow[0], 1],
                        choice1: function () {
                            if (n.choice[5] > 400) {
                                n.choice[5] += 23;
                                r("(/ω＼)好害羞...不过只要你喜欢我就穿...\no(*////▽////*)q\n爱丽丝好感+23");
                            } else {
                                n.role.hp = 1;
                                r("动~感~少~女~拳——！\n（╬￣皿￣）=○＃（￣＃）３￣）\n你损失全部残机");
                            }
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    3025: {
                        text: ["一个可怜的灵梦要求和你一起做个伴，", "你是否同意？", "同意", "拒绝"],
                        require: [],
                        choice1: function () {
                            n.money = 0;
                            r("....第二天一大早，灵梦早就不见踪影。\n【你损失全部p值！】");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 107;
                            i.save();
                            r("“cnm！老子弄死你！”");
                        }
                    },
                    3026: {
                        text: ["“哥...那啥...e....\n⁄(⁄⁄•⁄ω⁄•⁄⁄)⁄", "到了月都后，你要不来我家玩吧”", "好呀", "算了，你父母肯定不会同意的"],
                        require: [n.ifFollow[0], 1],
                        choice1: function () {
                            r("“耶————！\n(’∇’)シ┳━┳掀桌（开心）\n。。。。\n┬—┬ノ('-'ノ)摆好摆好”");
                        },
                        choice2: function () {
                            r("爱丽丝似乎很伤心...");
                        }
                    },
                    3037: {
                        text: ["今天，我在睡觉时，楼层传送器发出极其强烈的光", "我慌忙爬起观看", "雷诺在与一个神秘人战斗，雷诺完全处于下风，已经要被处决了，请问该怎么办", "捏碎一次性隙间", "用力捏碎一次性隙间"],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            n.enemyId = 114514;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            n.enemyId = 114514;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    4003: {
                        text: ["射命丸文对于你的到来似乎很感兴趣，几次想过来搭话。", "最后终于憋不住，", "“你好，我琢磨了好几天，发现了一个天大的秘密！”", "她平静地说，", "“我很可爱请给我一块p值”", "给", "不给"],
                        require: [],
                        choice1: function () {
                            if (n.money >= 10) {
                                n.money -= 10;
                                n.publicVar2[14] = 1;
                                r("射命丸文抢过p值，一溜烟，不见了...");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "你兜里有几个p值，心里没点数？";
                        },
                        choice2: function () {
                            r("“哼(ˊᵒ̴̶̷̤ ꇴ ᵒ̴̶̷̤ˋ)...”");
                        }
                    },
                    4006: {
                        text: ["我正在在街上捡垃圾，突然一个20上下，穿着短裙、有两个左脚的小姐姐，拉住我的衣服小声说，", "“小帅哥，要不要来玩会儿，只要5毛哟~”", "不去！", "好呀(°_°) "],
                        require: [],
                        choice1: function () {
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            n.publicVar2[15] += 1;
                            t.eventId = 7;
                            t.ifTriggerEvent();
                        }
                    },
                    4007: {
                        text: ["射命丸文不知道哪里弄了点回锅肉和皮⑨，", "非要叫你过去吃两口，", "当然去呀，毕竟文文可爱！", "算了，不想和她有什么瓜葛"],
                        require: [n.publicVar2[14], 1],
                        choice1: function () {
                            t.eventId = 8;
                            t.ifTriggerEvent();
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4008: {
                        text: ["这天，桥底下搬来一个吉他女孩（帕露西），", "绿色眼睛、怨气缠身，怎么看都不像是路人。", "她似乎有些腼腆，面对射命丸文的质问，只是莞尔一笑", "不行，太特么奇怪了，我得去问个究竟", "暗中观察一段时间再说"],
                        action: function () {
                            var t = e("scr_data");
                            0 == e("scr_data2").gameData[4] && (t.publicVar[7] = -100);
                            t.publicVar2[17] = 1;
                            i.save();
                        },
                        require: [],
                        choice1: function () {
                            n.publicVar[7] -= 10;
                            r("露西好感-10！");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4012: {
                        text: ["看着文文这个样子，你气不打一处来", "你心里有了一个不太好的想法", "但是.....感觉成功率不高，而已容易被人讨厌，甚至身败名裂", "要下定决心扑倒文文吗", "要", "算了吧...."],
                        BGM: "",
                        require: [],
                        choice1: function () {
                            r("你趁文文不注意扑了过去，但是扑了个空", "文文叹了口气：“果然你就是个lsp啊”（射命丸文好感度-5");
                        },
                        choice2: function () {
                            r("算了吧，文文可是风神少女，不可能躲不开的，到时候发生什么我就不用多说了....");
                        }
                    },
                    4013: {
                        text: ["三个身穿制服的城管来到桥下，", "一脚踢开脚边的水壶，大声叫到，", "“不许在这里搭绯探羽睡袋，听到没！”", "正面刚", "赶紧递电池（需电池*3，p值*3）"],
                        require: [],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 110;
                            if (0 == n.publicVar[8]) {
                                n.ifFollow[1] = 1;
                                n.publicVar[7] += 700;
                                n.friendSkill[1] = 1;
                                n.friendSkill[3] = 1;
                                n.friendSkill[4] = 1;
                                n.friendSkill[5] = 1;
                                n.friendSkill[6] = 1;
                                n.friendSkill[8] = 1;
                                r("露西加入战斗！");
                            } else {
                                i.save();
                                cc.director.loadScene("main");
                            }
                        },
                        choice2: function () {
                            if (n.itemNum2[7] >= 3 && n.money >= 30) {
                                n.itemNum2[7] -= 3;
                                n.money -= 30;
                                r("“一个星期内，给我搬走，听见没！”");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "尴尬，电池不够...";
                        }
                    },
                    4014: {
                        text: ["经过几天的寻找，", "总算找早苗描述的小区，", "是否要将委托礼物（ヾ(❀╹◡╹)ﾉ~）归还呢？", "归还", "自己留着"],
                        require: [n.chioce2[0], 1],
                        choice1: function () {
                            n.itemNum2[13] -= 1;
                            n.chioce2[0] = 2;
                            r("诹访子，青蛙模样，戴着青蛙帽，非常可爱。不过她似乎对礼物没啥兴趣，扔到一边，就进屋去了...\n神奈子邀我进去，我担心弄脏了地板，慌忙推辞...走出小区，恍若隔世...");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4015: {
                        text: ["八月盛夏，林荫路上，我意外的遇到了露西，", "她带着鸭舌帽，似乎不想被人认出；一把吉他，落寞地独唱着。", "围观打赏的人多到离谱，", "“太可爱了，要不是露西说一人一天最多10块，我都要把房子送她了！”，人群高呼「露西万岁」", "打赏自己一半的p值", "算啦，也不缺我一个"],
                        require: [],
                        choice1: function () {
                            if (n.money > 0) {
                                var e = parseInt(.5 * n.money + 1), t = parseInt(.5 * e + 4), a = (e / 10).toFixed(1);
                                n.money -= e;
                                n.publicVar[7] += t;
                                r("露西看了你一眼，低下头继续唱着歌...\n【你本次给出" + a + "元，露西存款+" + a + "元，好感+" + t + "】");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "你身上一分p值也没有！";
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4017: {
                        text: ["“(ಡωಡ)hiahiahia！", "老哥，可算找到你啦！", "就差这里的垃圾箱没找啦！(╥╯^╰╥)", "上次忘了说了，给，这是我家地址，记得过来玩哈(^_−)☆”", "", "(#ﾟДﾟ)"],
                        action: function () {
                            n.publicVar[9] = 1;
                            i.save();
                        },
                        require: [n.publicVar[3], 1],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 9;
                            t.ifTriggerEvent();
                        }
                    },
                    4018: {
                        text: ["这天，我在街上游荡，", "意外的碰到了爱丽丝！", "她全是干干净净，依旧留在短发", "我感觉脸颊发烫，刚想找个地方避开，但是还是被发现，", "“hi~老哥~好久不见呀”", "“对不起，我...”", "“啊~~你走了之后，那个大叔就放开了我，还把我送回了家，什么事也没发生┐(´∀｀)┌。我先上学去了，拜拜~”", "", "....."],
                        require: [n.choice[5], 1],
                        require2: [n.publicVar[3], 0],
                        choice1: function () { },
                        choice2: function () {
                            r("那个奇怪的大叔是谁？是灵梦的恶作剧？");
                        }
                    },
                    4019: {
                        text: ["这天，我在街上游荡，", "意外的碰到了那天的短发女孩（爱丽丝）。", "她全是干干净净，简直像是换了一个人！", "是否过去打招呼？", "是", "算了，这么漂亮的妹子怎可能喜欢我"],
                        require: [],
                        require2: [n.choice[5], 0],
                        choice1: function () {
                            n.publicVar[9] = 2;
                            r("“喔~是你呀~我认得你！要是有啥困难，可以来找我喔︿(￣︶￣)︿”，女孩的热情，让我鼻子一酸，这是我第一次有这种感受...");
                        },
                        choice2: function () {
                            r("注孤生————作者留言");
                        }
                    },
                    4021: {
                        text: ["街上有个女人在对一个女人拳打脚踢，", "我仔细一看，这个女人正是刚来月都时，叫我去玩玩的小姐姐！", "你是否帮她？", "帮忙", "算了，这是她自找的"],
                        require: [],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.publicVar2[15] += 1;
                            n.enemyId = 111;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4030: {
                        text: ["一辆白色面包车开到桥下，", "射命丸文兴奋的跑过来喊道，“快快快，天上掉馅饼啦，一瓶血，2块p值！我体检不过关，不然我全捐喽！”", "献血！（残机上限-70，p值+2元）", "不献！"],
                        action: function () {
                            cc.find("Canvas/Choice/label").getComponent("cc.Label").string = "【申明】此处为游戏效果，不等于真实情况，千万别误解";
                        },
                        require: [],
                        choice1: function () {
                            n.role.maxHp -= 70;
                            n.money += 20;
                            i.save();
                            r("残机上限-70，获得2元。");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4032: {
                        text: ["一帮凶恶的人将露西团团围住，其中伊吹萃香叫到，", "“念星熊勇仪的面子，我一再忍让。给你10天时间，再不还p值，你得当我对象！”", "朦胧夜色下，看不清露西脸上的表情，不过，她一个字也没说。", "帮忙解围（BOSS级对手）", "切莫冲动，以免搞砸，先观察几天再说"],
                        require: [],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 112;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            var e = parseInt(.3 * n.publicVar2[18]), t = (e / 10).toFixed(1);
                            n.publicVar2[18] -= e;
                            r("伊吹萃香把露西背包翻了一个遍。【露西存款减少" + t + "元！露西存款还剩下" + (n.publicVar2[18] / 10).toFixed(1) + "】");
                        }
                    },
                    4033: {
                        text: ["我在月都外围边晃荡，", "一个女人突然冲过来，把一包东西塞到怀里，然后头也不回的跑开了。", "看背影和服装，应该正是秋静叶", "", "打开包裹"],
                        require: [n.publicVar2[15], 2],
                        choice1: function () { },
                        choice2: function () {
                            n.itemNum[0] += 10;
                            n.itemNum2[23] += 5;
                            n.itemNum2[25] += 1;
                            r("获得【土块】*10，【希望の花】*5，【平安福】*1");
                        }
                    },
                    4034: {
                        text: ["露西特别喜欢吃好吃的，她每天晚上回来前，都会去香霖堂，购买当天最新进的食物。", "这天，看着她背着吉他远远过来了，我决定和她开个玩笑，我冲到香霖堂，", "“老板！给我把新进的东西都来一份！”（需8元）", "“哎呀，脑子抽筋了！不好意哈——哈~哈~哈”"],
                        require: [],
                        choice1: function () {
                            if (n.money >= 80) {
                                n.money -= 80;
                                n.publicVar[7] += 100;
                                n.hunger += parseInt(2 * i.maxHunger());
                                r("买完东西，好心的老板借了我一张凳子。不一会儿露西过来了，我冲了过去道，“今天我发达了，请你吃些好吃的”，“哦？这个呀？可以呀，一起回去吃吧，嘿嘿~谢谢啦~”。【饥饿值爆满，露西好感+100】");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "店长：“没p值装啥逼，蛤?”";
                        },
                        choice2: function () {
                            r("你被赶了出来，并错过了100好感度...");
                        }
                    },
                    4040: {
                        text: ["射命丸文想了一个新主意，她请你去边吃饭边商讨成名的好主意", "去还是不去呢？", "", "去", "不去"],
                        require: [],
                        choice1: function () {
                            n.publicVar2[16] = parseInt(99 * Math.random() + 1);
                            n.hunger = i.maxHunger();
                            r("吃完饭，射命丸文兴高采烈的抽出两张彩票，给了你一张，并说只要我采访彩票的得主就行。获得【彩票】（明晚开奖）！饥饿全恢复！");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4041: {
                        text: ["射命丸文拿着报纸、一步一步向你走来，你只觉得心脏跳得很快，如果能中奖就好了。", "俩人激动得不行！", "", "开奖啦！好紧张！"],
                        require: [n.publicVar2[16], 1],
                        choice1: function () { },
                        choice2: function () {
                            if (n.publicVar2[16] < 90) {
                                n.energy = 10 * parseInt(.05 * n.energy);
                                r("...\n......\n.........\n没有中奖\n你气得一晚上没睡好\n精力恢复减半...");
                            } else {
                                n.money += 10;
                                n.energy = 10 * parseInt(.05 * n.energy);
                                r("...\n......\n.........\n恭喜中鼓励奖1元奖！\n你气得一晚上没睡好\n精力恢复减半...获得1元...");
                            }
                            n.publicVar2[16] = 0;
                        }
                    },
                    4042: {
                        text: ["伊吹萃香一伙再次来到桥下，围住露西问道：", "“怎么样？赚的p值呢？你不是在卖唱么？”", "“吃了......。”，露西有点惊恐。", "“这是你自己的事，我不关心。我只是让你还p值！”，伊吹萃香拉高了嗓门", "【你要怎么办？】", "先稳住伊吹萃香，把身上所有p值给他（必须大于2元）", "...这种事，我无能为力"],
                        require: [],
                        choice1: function () {
                            if (n.money >= 20) {
                                var e = n.money, t = parseInt(.5 * e + 5), a = (e / 10).toFixed(1);
                                n.money -= e;
                                n.publicVar2[18] += e;
                                n.publicVar[7] += t;
                                r("“你是？”“一个喜欢多管闲事的人““如果你想替她还债，我可以给你一点时间“，说完伊吹萃香离开了。\n【你本次给出" + a + "元，露西存款+" + a + "元，好感+" + t + "】");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "这点p值恐怕会激怒对方...";
                        },
                        choice2: function () {
                            var e = parseInt(.5 * n.publicVar2[18]), t = (e / 10).toFixed(1);
                            n.publicVar2[18] -= e;
                            r("几个跟班上前围住露西，伊吹萃香从吉他包里搜出" + t + "元，说道，“我也不是那么不通情达理，我先拿一些，下次可没这么便宜了。”【露西存款减少" + t + "元！露西存款还剩下" + (n.publicVar2[18] / 10).toFixed(1) + "】");
                        }
                    },
                    4047: {
                        text: ["“小哥，请问下哪里比较容易捡到p点？”，一天芙兰朵露过来问道，她激动的搓搓手。", "告诉她", "不理她"],
                        require: [],
                        choice1: function () {
                            n.publicVar2[19] += 50;
                            r("“捡p点得早上五点前去，不然会被其他人捡走。小饭店、旅馆、活动场多点，运气好可以捡到零食、盒饭...”\n【你获得p点的概率降低3%！】");
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    4050: {
                        text: ["由于人们大量捕杀露米娅，露米娅已经濒临灭绝，一些投机商人纷纷囤积露米娅尸体，哄抬物价。", "这不，一个暗中观察我好几天的商人，终于憋不住了，", "“我这里全球最高价，每只三毛！别掖着啦，过几天天气转凉，就不值这个价喽~”", "出售所有露米娅尸体", "不卖！坐等升值！"],
                        require: [],
                        choice1: function () {
                            var e = n.kills[0], t = 3 * e, a = (t / 10).toFixed(1);
                            n.money += t;
                            n.kills[0] = 0;
                            r("你一共出售" + e + "只露米娅，获得" + a + "元！");
                        },
                        choice2: function () {
                            r("“阔以！你就掖着，等发霉吧！”，露米娅商人气愤的走了。");
                        }
                    },
                    4054: {
                        text: ["这天，你发现一个还未「开启」的「宝箱」（垃圾箱）。", "不过，你远远看到红美铃和芙兰朵露正向这边走来。", "你是否要「开启」宝箱", "凭本事发现的宝箱，为啥要让给别人，开！", "算了，作为对她成功迈出第一步的鼓励，留给她吧！"],
                        require: [n.publicVar2[19], 1],
                        choice1: function () {
                            n.itemNum[2] += 10;
                            n.itemNum2[27] += 1;
                            n.itemNum2[21] += 10;
                            r("获得【p点】*10，【爱丽丝手链】*1，【提灯小姐姐の胖次】*10");
                        },
                        choice2: function () {
                            n.publicVar2[19] += 50;
                            r("不一会儿她们俩就走了过来，芙兰朵露牵着塑料袋，红美铃在垃圾箱中掏了半天，芙兰朵露有点不耐烦，“找到了吗！”。红美铃笑眯眯地说，“再坚持会儿！回去后、你一定可以让咲夜大吃一惊的！”。你觉得很欣慰。");
                        }
                    },
                    4056: {
                        text: ["我与露西，渐渐卸下了防御，我们的话也慢慢多了起来。", "“你欠那些人多少p值？”，我问道。", "“额，两百万多吧...”\n“...怎么会这么多！”，我有点吃惊。\n“之前投资勇仪公司，但是勇仪公司倒闭，借的六十万，翻到现在的两百万...”\n“那勇仪呢？”，这个问题我一直都想问。\n“听说出去之后被人打了，嗯，公司没人经营，所以没落了...（注：就是你打的（既定结局））”", "", "......."],
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 10;
                            t.ifTriggerEvent();
                        }
                    },
                    4059: {
                        text: ["晚上，天气微凉，我买了几个热腾腾的肉夹馍给露西送了过去。", "我背着吉他，一起走在回家的路上。", "宁静的秋夜，皓月如洗，树影婆娑......", "【你是否要尝试牵下露西的手呢？】", "试一试！死了也值！（成功率不固定，根据好感值计算概率！）", "算了吧，我拿什么去谈一场恋爱？别连朋友也没得做！"],
                        require: [],
                        choice1: function () {
                            var e = n.publicVar[7];
                            if (e < 1000) {
                                var t = parseInt(.1 * (1000 - e));
                                n.publicVar[7] -= t;
                                r("我缓缓靠近，假装不经意间勾了一下她的手，她本能般的缩回了手，拉开距离。【帕露西戒备增加，好感-" + t + "！】");
                            } else {
                                n.publicVar[7] += 500;
                                r("我缓缓靠近，假装不经意间勾了一下她的手，她轻微的缩了一下手，不过立即就安静下来，我非常紧张，直到两秒后，我感觉到露西的手在顺势勾住我的手，再不熟练得把我和她的接触的手变成十指相扣，就在这个时候，我感觉我的脖子有一种冰凉且湿润的感觉，缓慢地回头，露西正在吻我的脖子......【帕露西好感+500】");
                            }
                        },
                        choice2: function () {
                            cc.director.loadScene("main");
                        }
                    },
                    146: {
                        text: ["我捡完垃圾，回到桥下，伊吹萃香把露西按到墙上，就要强吻露西，", "“你现在该怎么办”", "战斗！", "给他p值（需10元）~"],
                        action: function () {
                            e("scr_data").enemyId = 113;
                            i.save();
                        },
                        require: [],
                        choice1: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 113;
                            i.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            if (n.money >= 100) {
                                n.money -= 100;
                                n.publicVar2[18] += 100;
                                n.publicVar[7] += 60;
                                n.enemyId = 0;
                                r("“哦？不错，小伙子挺懂事的，以后就多麻烦你了啊~”，说完伊吹萃香离开了。露西好感+60。");
                            } else cc.find("Canvas/Notify2").getComponent("cc.Label").string = "对于胃口增的人，没个十几块，恐怕难以打发";
                        }
                    },
                    163: {
                        text: ["一天，帕露西不见了，", "露西？！", "你看到一张纸条”。\n你仔细阅读\n害，以后只有自己了“你捡到了露西留下的包裹..”", "", "..."],
                        action: function () {
                            e("scr_data").ifFollow[1] = 0;
                            n.publicVar2[17] = 0;
                            i.save();
                        },
                        require: [],
                        choice1: function () { },
                        choice2: function () {
                            t.eventId = 13;
                            t.ifTriggerEvent();
                        }
                    },
                    174: {
                        text: ["“上头有领导要来，城里不准乱搭绯探羽睡袋啦，我只是奉命行事，对不住啦，小兄弟，听明白没？”", "几个身着制服的男开着巡逻车来到桥下叫道。", "知道了，我马上搬走（放弃抵抗）", "我就不走！（战斗）"],
                        action: function () {
                            n.enemyId = 401;
                            i.save();
                        },
                        require: [],
                        require2: [n.publicVar3[2], 0],
                        choice1: function () {
                            n.enemyId = 0;
                            n.publicVar3[2] = 1;
                            t.ifTriggerEvent("你搬离了桥洞...");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 401;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    175: {
                        text: ["“听说你很拽？”，新来了几个制服男...", "我马上搬走（放弃抵抗）", "是的，我就是不走！（战斗）"],
                        action: function () {
                            n.enemyId = 402;
                            i.save();
                        },
                        require: [],
                        require2: [n.publicVar3[2], 0],
                        choice1: function () {
                            n.enemyId = 0;
                            n.publicVar3[2] = 1;
                            t.ifTriggerEvent("你搬离了桥洞...");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 402;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    176: {
                        text: ["“你好，请问下那个钉子户是不是你？”，又来了几个制服男...", "不是的，我刚来，我这就搬走（放弃抵抗）", "是的（战斗）"],
                        action: function () {
                            n.enemyId = 403;
                            i.save();
                        },
                        require: [],
                        require2: [n.publicVar3[2], 0],
                        choice1: function () {
                            n.enemyId = 0;
                            n.publicVar3[2] = 1;
                            t.ifTriggerEvent("你搬离了桥洞...");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 403;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    177: {
                        text: ["“听说你在找屎？”，几个大块头制服男问道...", "没没没！这就走（放弃抵抗）", "是的，你要吗？（战斗）"],
                        action: function () {
                            n.enemyId = 404;
                            i.save();
                        },
                        require: [],
                        require2: [n.publicVar3[2], 0],
                        choice1: function () {
                            n.enemyId = 0;
                            n.publicVar3[2] = 1;
                            t.ifTriggerEvent("你搬离了桥洞...");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 404;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    178: {
                        text: ["“要我亲自出马的就是你小子？”，先代巫女问道。", "哪敢！这就走！哈哈（放弃抵抗）", "哦~是吗？（战斗）"],
                        action: function () {
                            n.enemyId = 405;
                            i.save();
                        },
                        require: [],
                        require2: [n.publicVar3[2], 0],
                        choice1: function () {
                            n.enemyId = 0;
                            n.publicVar3[2] = 1;
                            t.ifTriggerEvent("你搬离了桥洞...");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 405;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    },
                    179: {
                        text: ["“我来了”，未定名字来到了桥下...", "尼玛！我走还不成嘛！（放弃抵抗）", "我已成仙，法力无边！（战斗）"],
                        action: function () {
                            n.itemNum2[19] += 927;
                            n.choice[6] += 100;
                            n.enemyId = 406;
                            i.save();
                        },
                        require: [],
                        require2: [n.publicVar3[2], 0],
                        choice1: function () {
                            n.enemyId = 0;
                            n.publicVar3[2] = 1;
                            t.ifTriggerEvent("你搬离了桥洞...");
                        },
                        choice2: function () {
                            n.role.hp = i.role.maxHp();
                            n.enemyId = 406;
                            i.save();
                            cc.director.loadScene("main");
                        }
                    }
                };
                function r(n) {
                    cc.find("Canvas/Determine");
                    e("scr_public").save();
                    cc.find("Canvas/Choice").active = !1;
                    cc.find("Canvas/EventText").active = !1;
                    cc.find("Canvas/Notify2").active = !1;
                    e("scr_effect").playText("Canvas/Notify", n, 80);
                    t.scheduleOnce(function () {
                        cc.find("Canvas/Determine").active = !0;
                        cc.find("Canvas/Determine").runAction(cc.fadeIn(2));
                    }, 2);
                }
                return o;
            },
            calculateEventId: function () {
                var t = e("scr_public").regionId(), n = e("scr_data").stayDay, a = e("scr_data"), i = 0;
                1e3 == t && (i = 1e3 + n[0]);
                2e3 == t && (i = 2e3 + n[1]);
                3e3 == t && (i = 3e3 + n[2]);
                4e3 == t && (i = 4e3 + n[3]);
                a.day > 143 && (i = a.day);
                return i;
            },
            ifTrigger: function () {
                var e, t, n = this.eventData(), a = n.require[0], i = n.require[1];
                return ("undefined" == typeof a || a >= i) && ("undefined" == typeof n.require2 || (e = n.require2[0],
                    t = n.require2[1], "undefined" == typeof n.require2 || e == t));
            },
            eventData: function () {
                var e = this.eventId || this.calculateEventId(), t = this.event()[e];
                return t;
            },
            triggerEvent: function () {
                var t = e("scr_data"), n = this.eventData(), a = n.text, i = a.pop(), c = a.pop(), o = a.length, r = 1, s = t.publicVar[6] || 2, l = parseInt(.25 * s * 1e3), u = cc.find("Canvas/EventText"), p = this;
                n.BGM;
                "undefined" != typeof n.action && n.action();
                this.initUI();
                window.setTimeout(function () {
                    p.creatText(u, "plot0", a[0]);
                }, l);
                this.schedule(function () {
                    this.creatText(u, "plot" + r, a[r]);
                    r++;
                }, s, o - 2);
                this.scheduleOnce(function () {
                    var e = n.choice1, t = n.choice2, a = cc.find("Canvas/Choice/Choice1"), o = cc.find("Canvas/Choice/Choice2");
                    a.getChildByName("choiceText").getComponent("cc.Label").string = c;
                    o.getChildByName("choiceText").getComponent("cc.Label").string = i;
                    if ("" == c) {
                        a.active = !1;
                        cc.find("Canvas/Choice/label").active = !1;
                    } else a.active = !0;
                    cc.find("Canvas/Choice").runAction(cc.fadeIn(2));
                    a.on("touchstart", e, this);
                    o.on("touchstart", t, this);
                }, s * o);
            },
            initUI: function () {
                var e = cc.find("Canvas/Choice");
                e.stopAllActions();
                e.opacity = 0;
                cc.find("Canvas/EventText").removeAllChildren();
                e.getChildByName("Choice1").targetOff(this);
                e.getChildByName("Choice2").targetOff(this);
            },
            ifTriggerEvent: function () {
                "undefined" == typeof this.eventData() ? cc.director.loadScene("main") : this.ifTrigger() ? this.triggerEvent() : cc.director.loadScene("main");
            },
            onLoad: function () {
                this.ifTriggerEvent();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_explore: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "aac8eR1m+lE25FoXnDRrcRr", "scr_explore");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = cc.find("Canvas/Button/button_forward").getComponent("scr_forwardButton").constructor, n = new t(), a = new t(), i = new t(), c = new t(), o = this, r = e("scr_data");
                this.node.runAction(cc.tintTo(.3, 227, 23, 13));
                n.addDistance = function () { };
                a.addDistance = function () { };
                i.addDistance = function () { };
                c.addDistance = function () {
                    e("scr_data").publicVar3[1] += 1;
                };
                n.shieldButton = function () {
                    o.node.off("touchstart", n.callBack, n);
                    o.node.runAction(cc.tintTo(.3, 114, 199, 255));
                    o.scheduleOnce(o.onLoad, .07);
                };
                a.shieldButton = function () {
                    o.node.off("touchstart", a.callBack, a);
                    o.node.runAction(cc.tintTo(.3, 114, 199, 255));
                    o.scheduleOnce(o.onLoad, .07);
                };
                i.shieldButton = function () {
                    o.node.off("touchstart", i.callBack, i);
                    o.node.runAction(cc.tintTo(.3, 114, 199, 255));
                    o.scheduleOnce(o.onLoad, .07);
                };
                c.shieldButton = function () {
                    o.node.off("touchstart", c.callBack, c);
                    o.node.runAction(cc.tintTo(.3, 114, 199, 255));
                    o.scheduleOnce(o.onLoad, .07);
                };
                n.getItemNum = function () {
                    return 1;
                };
                a.getItemNum = function () {
                    return 1;
                };
                i.getItemNum = function () {
                    return 2;
                };
                c.getItemNum = function () {
                    return Math.min(parseInt(e("scr_data").publicVar3[1] / 100 + 1), 4);
                };
                n.dryUp = function () {
                    var t = e("scr_public").regionId(), n = e("scr_data");
                    return 2e3 == t && n.day >= 42 || 3e3 == t && n.day >= 70;
                };
                n.playBGM = function () { };
                n.stopForward = function () {
                    n.forward();
                };
                a.getEnemyRate = function () {
                    return [[0, 0], [30, 1001], [50, 1002], [70, 1003], [80, 400002], [95, 300001], [100, 100001]];
                };
                i.getEnemyRate = function () {
                    return [[0, 0], [20, 2001], [40, 2002], [60, 2003], [75, 2004], [76, 2007], [80, 2006], [100, 2005]];
                };
                c.getFigthId = function () {
                    return [3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 900004][Math.min(parseInt(e("scr_data").publicVar3[1] / 50), 10)];
                };
                a.getDrop = function () {
                    return [[16, 0, 2, 1], [25, 1, 2, 1], [25, 4, 2, 1], [19, 5, 1, 1], [6, 6, 1, 1]];
                };
                i.getDrop = function () {
                    return [[97, 2, 1, 1], [20, 2, 1, 1], [25, 99, 2, 3], [15, 7, 1, 1]];
                };
                c.getDrop = function () {
                    return [[60, 16, 1, 2], [20, 16, 1, 2], [8, 8, 1, 1]];
                };
                a.regionEventId = function () {
                    return 7e3 + a.randomId([0, 20, 40, 60, 80, 100]);
                };
                i.regionEventId = function () {
                    return 8e3 + i.randomId([0, 25, 50, 75, 100]);
                };
                c.regionEventId = function () {
                    return 9e3 + c.randomId([0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]);
                };
                c.regionEventId = function () {
                    return 0;
                };
                c.event = function () {
                    var t = 100 * Math.random(), n = e("scr_data"), a = e("scr_public"), i = e("scr_effect");
                    if (t < 10) {
                        n.role.hp = a.role.maxHp();
                        i.playText("Canvas/Text/txt_notify", "残机全恢复！", 60);
                    } else if (t < 25) {
                        n.publicVar3[4] += 10;
                        i.playText("Canvas/Text/txt_notify", "攻击+10！（持续1天）", 60);
                    } else if (t < 40) {
                        n.publicVar3[10] += 10;
                        i.playText("Canvas/Text/txt_notify", "防御+10！（持续1天）", 60);
                    } else if (t < 50) {
                        n.publicVar3[16] += 50;
                        n.role.hp += 50;
                        i.playText("Canvas/Text/txt_notify", "残机上限+50！（持续1天）", 60);
                    } else if (t < 60) {
                        n.publicVar3[5] += 1;
                        i.playText("Canvas/Text/txt_notify", "全属性（攻防血）提高1%！（效果随天数缓慢衰减）", 60);
                    } else if (t < 70) {
                        n.publicVar3[11] += 6;
                        i.playText("Canvas/Text/txt_notify", "逃跑率+6%！（持续1天）", 60);
                    } else if (t < 80) {
                        n.publicVar3[17] += 1;
                        i.playText("Canvas/Text/txt_notify", "「爱丽丝手链」等级+1！（效果持续1天）", 60);
                    } else if (t < 90) {
                        n.publicVar3[18] += 1;
                        i.playText("Canvas/Text/txt_notify", "「理信·慎重」等级+1！（效果持续1天）", 60);
                    } else {
                        n.publicVar3[9] += 1;
                        i.playText("Canvas/Text/txt_notify", "「贤明·正直」等级+1！（效果持续1天）", 60);
                    }
                    a.save();
                };
                switch (r.publicVar[13]) {
                    case 0:
                        this.node.on("touchstart", n.callBack, n);
                        break;

                    case 1:
                        this.node.on("touchstart", a.callBack, a);
                        break;

                    case 2:
                        this.node.on("touchstart", i.callBack, i);
                        break;

                    case 3:
                        this.node.on("touchstart", c.callBack, c);
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_fightState: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "c4f80DG6eFB/bvHazsL2je9", "scr_fightState");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = [" 衡 ", " 拼 ", " 猥 "], n = e("scr_data"), a = this, i = this.node.getChildByName("text").getComponent("cc.Label");
                c();
                0 == n.skillLv[5] ? a.node.active = !1 : a.node.active = !0;
                this.node.on("touchstart", function () {
                    if (1 == n.skillLv[9] && 0 == n.skillLv[14]) {
                        n.figthState += 1;
                        n.figthState > 1 && (n.figthState = 0);
                        c();
                    }
                    if (1 == n.skillLv[9] && 1 == n.skillLv[14]) {
                        n.figthState += 1;
                        n.figthState > 2 && (n.figthState = 0);
                        c();
                    }
                }, this);
                function c() {
                    var e = t[n.figthState];
                    i.string = e;
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data"
    }],
    scr_fight: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "e0873SPr91PW4GARejADMmt", "scr_fight");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t), i = (a.addComponent(cc.Label), cc.sequence(cc.scaleTo(.2, 1.3), cc.scaleTo(.1, 1)));
                a.parent = e;
                a.color = new cc.Color(227, 23, 13);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(630, 200);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 60;
                a.getComponent(cc.Label).fontSize = 36;
                a.setScale(0, 0);
                a.runAction(i);
            },
            getItem: function (t) {
                for (var n = "", a = t.length, i = e("scr_public"), c = e("scr_data"), o = 0; o < a; o++) {
                    if (100 * Math.random() < t[o][0]) {
                        var r = t[o][1], s = t[o][2], l = t[o][3];
                        if (2 == l) {
                            var u = i.itemName2;
                            c.itemNum2[r] += s;
                            n = n + "【" + u[r] + "】*" + s;
                        }
                        if (1 == l) {
                            u = i.itemName;
                            c.itemNum[r] += s;
                            n = n + "【" + u[r] + "】*" + s;
                        }
                        if (3 == l) {
                            c.money += s;
                            n = n + "【p值】*" + (s / 10).toFixed(1);
                        }
                    }
                }
                "" == n && (n = "没发现道具");
                i.save();
                return n;
            },
            fight: function (t) {
                var n = e("scr_data"), a = e("scr_public"), i = e("scr_effect"), c = this, o = e("scr_enemy")[t], r = {}, s = cc.find("Canvas/Fight/fight"), l = cc.find("Canvas/Fight/escape"), u = cc.find("Canvas/Fight/state"), p = cc.find("Canvas/Fight/notify2"), f = cc.find("Canvas/Fight/roleHp"), d = cc.find("Canvas/Fight/enemyHp"), m = cc.find("Canvas/Fight/escapeRate"), h = cc.find("Canvas/Fight/notify"), v = 0, y = 0, g = [0, 0, 0], b = n.figthExp, _ = (n.skillLv[4],
                    n.buffState), x = 0, C = 0, E = {
                        att: parseInt(n.publicVar[7] * 3 + 1000),
                        crit: 10 + 25 * n.friendSkill[5],
                        bleedNum: 1,
                        attackTimes: 1
                    };
                n.publicVar[4] = 0;
                this.correct = [0, 0];
                this.publicVar = 0;
                for (var I in o) r[I] = o[I];
                var V = {
                    maxHp: a.role.maxHp(),
                    att: a.role.att(),
                    def: a.role.def()
                };
                (function () {
                    if (6 == t.toString().length) {
                        n.specialEnemy[t].hp <= 0 && (n.specialEnemy[t].hp = n.specialEnemy[t].maxHp);
                        var e = n.specialEnemy[t];
                        r.lv = e.lv;
                        r.hp = e.hp;
                        r.maxHp = e.maxHp;
                        r.att = e.att;
                        r.def = e.def;
                    }
                })();
                (function () {
                    if (-1 == n.publicVar[1]) {
                        r.hp = parseInt(.2 * r.hp);
                        r.maxHp = parseInt(.5 * r.maxHp);
                    } else if (1 == n.publicVar[1]) {
                        var e = n.day, a = e / 40 + 1, i = parseInt(Math.pow(e, 1.5) / 5);
                        if (6 == t.toString().length) {
                            var c = n.specialEnemy[t];
                            r.hp == r.maxHp && (r.hp = parseInt(c.hp * a));
                            r.maxHp = parseInt(c.maxHp * a);
                            r.att += 2 * i;
                            r.def += i;
                        } else {
                            r.hp = parseInt(r.hp * a);
                            r.maxHp = parseInt(r.maxHp * a);
                            r.att += 2 * i;
                            r.def += i;
                        }
                    }
                })();
                var N = V.def, T = r.des, k = [" 衡 ", " 拼 ", " 猥 "];
                s.targetOff(s);
                l.targetOff(l);
                s.on("touchstart", function () {
                    r.hp > 0 && n.role.hp > 0 && function () {
                        var e = "你使用【普攻】", a = "", o = "", s = "", l = "", u = "", f = "", d = "";
                        c.publicVar = 0;
                        var m = n.figthState;
                        if (1 == n.skillLv[25]) {
                            var y = 100 * Math.random();
                            if (y < 99) {
                                var I = parseInt(.3 * V.maxHp);
                                c.publicVar += r.def;
                                n.role.hp += I;
                                n.role.hp > V.maxHp && (n.role.hp = V.maxHp);
                                s = "。【霸气】无视防御，残机恢复" + I;
                            }
                        }
                        "undefined" != typeof r.defSkill && (u = r.defSkill());
                        if (function () {
                            {
                                if (1 == n.ifFollow[0] && 1 == n.friendSkill1[2]) {
                                    var e = parseInt(n.choice[5] / 4), t = 100 * Math.random();
                                    return t < e;
                                }
                                return !1;
                            }
                        }()) {
                            var N = parseInt(.1 * V.maxHp), T = parseInt(.03 * V.att);
                            n.role.hp += N;
                            c.correct[0] += T;
                            n.role.hp > V.maxHp && (n.role.hp = V.maxHp);
                            f = "【声援：残机+" + N + "，攻击+" + T + "】";
                        }
                        var k = parseInt(Math.max(V.att + c.correct[0] + c.publicVar - r.def * (1 - 2 * n.itemNum2[15] / 100 - 30 * n.itemNum2[66] / 100 - 2 * n.itemNum2[38] / 100 - 1 * n.itemNum2[58] / 1), 0));
                        if (0 == m) {
                            k = parseInt(k * (1 + b[0] / 800));
                            g[0] += 1;
                        }
                        if (1 == m) {
                            var S = parseInt(.4 * V.maxHp);
                            k = parseInt(k * (1.32 + b[1] / 200));
                            n.role.hp -= S;
                            g[1] += 1;
                            l = "「拼命：你损失" + S + "点残机」";
                        }
                        if (2 == m) {
                            k = parseInt(.7 * k);
                            g[2] += 1;
                        }
                        1 == _[0] && (k = parseInt(1.3 * k));
                        if (n.itemNum2[10] > 0) {
                            (v += 1) > 20 && (v = 20);
                            var H = parseInt(4 * n.itemNum2[10] * v + 1 * n.itemNum2[43] * v);
                            k = parseInt(k * (H / 100 + 1));
                            e = e.replace("普攻", "割裂");
                            o = "，伤害加成" + H + "%";
                        }
                        if (w = 1.5 * n.itemNum2[3] + x, 100 * Math.random() < w || 1 == C) {
                            k = parseInt(1.5 * k);
                            e += "，触发【暴击】";
                            C = 0;
                            A();
                        }
                        var w;
                        if (n.itemNum2[19] > 0 && n.itemNum2[14] > 0 && n.publicVar[4] > 0) {
                            n.itemNum2[14] -= 1;
                            n.publicVar3[14] += 1;
                            k = parseInt(k * (n.itemNum2[19] + 1));
                            e = e.replace(/普攻|割裂/, "心火");
                            /暴击/.test(e) && (e = e.replace(/暴击/, "燃爆吹息"));
                        }
                        if (L = 2 * n.itemNum2[8], 100 * Math.random() < L) {
                            var N = parseInt(.1 * k), I = new RegExp("触发");
                            n.role.hp += N;
                            n.role.hp > V.maxHp && (n.role.hp = V.maxHp);
                            I.test(e) ? e += "【嗜血】" : e += "，触发【嗜血】";
                            a = "，恢复" + N + "点残机";
                        }
                        if (L = 99 * n.itemNum2[58], 100 * Math.random() < L) {
                            var N = parseInt(1 * k), I = new RegExp("触发");
                            n.role.hp += N;
                            n.role.hp > V.maxHp && (n.role.hp = V.maxHp);
                            I.test(e) ? e += "【终曲】" : e += "，触发【终曲】";
                            a = "，恢复" + N + "点残机";
                        }
                        var L;
                        1 == n.ifFollow[1] && (d = function () {
                            var e = "。露西使用【普攻】", t = "", a = 100 * Math.random(), i = E.att - r.def + c.publicVar;
                            i = Math.max(i, 0);
                            if (a < E.crit) {
                                i = parseInt(1.5 * i);
                                e = e.replace(/普攻/, "暗杀");
                                if (n.friendSkill[3] > 0) {
                                    var o = parseInt(.1 * i * E.bleedNum), s = parseInt(.1 * r.def);
                                    r.hp -= o;
                                    r.def -= s;
                                    E.bleedNum += 1;
                                    t = t + "，附加" + o + "流血，减防" + s;
                                }
                                if (n.friendSkill[4] > 0) {
                                    var l = parseInt(.25 * i);
                                    n.role.hp += l;
                                    t = t + "。你恢复" + l + "残机";
                                }
                                if (n.friendSkill[6] > 0) {
                                    C = 1;
                                    t += "，你下次攻击必定暴击！";
                                }
                            }
                            if (n.friendSkill[8] > 0 && E.attackTimes % 3 == 0) {
                                i = parseInt(2.5 * i);
                                e = /暗杀/.test(e) ? e.replace(/暗杀/, "终结.蝶舞") : e.replace(/普攻/, "终结");
                            }
                            r.hp -= i;
                            E.attackTimes += 1;
                            return e = e + ("，造成" + i + "点伤害") + t;
                        }());
                        r.hp -= k;
                        100002 == t && (u = r.defSkill());
                        e = e + "，对" + r.name + "造成" + k + "点伤害" + a + o + s + l + u + f + d;
                        D();
                        c.creatText(h, "roleNotify", e);
                        (function () {
                            R();
                            p.getComponent("cc.Label").string = "";
                            i.textZoon2("Canvas/Fight/enemyHp");
                        })();
                        P();
                        U();
                        F();
                        M();
                    }();
                    r.hp > 0 && n.role.hp > 0 && s.getComponent("cc.Button").scheduleOnce(S, 1);
                }, s);
                l.on("touchstart", function () {
                    var e = H(), t = 100 * Math.random();
                    n.skillLv[14] > 0 && (n.figthState = 2);
                    cc.find("Canvas/Fight/state/text").getComponent("cc.Label").string = k[n.figthState];
                    P();
                    if (t > e) {
                        r.hp > 0 && n.role.hp > 0 ? s.getComponent("cc.Button").scheduleOnce(S, .7) : F();
                        n.publicVar2[6] += 1;
                        D();
                        i.playText("Canvas/Fight/notify2", "逃跑失败！", 60);
                    } else {
                        var a = 1 + n.itemNum2[18];
                        n.escapeExp += a;
                        i.playText("Canvas/Text/txt_notify", "逃跑成功！\n逃跑技术+" + a + "（累计" + n.escapeExp + "）", 80);
                        B();
                        L();
                    }
                }, l);
                R();
                (function () {
                    var e = cc.find("Canvas/Fight");
                    cc.find("Canvas/Button").setScale(0, 0);
                    e.active = !0;
                    e.scale = 0;
                    e.runAction(cc.scaleTo(.5, 1));
                    cc.find("Canvas/Text/txt_notify").opacity = 0;
                    O();
                    (function () {
                        if (n.itemNum2[19] > 0) {
                            var e = cc.find("Canvas/Fight/gunButton");
                            e.active = !0;
                            w();
                            e.targetOff(e);
                            e.on("touchstart", function () {
                                0 == n.publicVar[4] ? n.publicVar[4] = 1 : n.publicVar[4] = 0;
                                w();
                            }, e);
                        }
                    })();
                    f.scale = 1;
                    m.scale = 1;
                })();
                i.playText("Canvas/Fight/notify2", T, 80);
                function S() {
                    var e = r.enemyEscapeRate;
                    if (0 != e) {
                        if (100 * Math.random() < e - 5 * n.itemNum2[15] - 1 * n.itemNum2[48]) {
                            (function () {
                                P();
                                i.playText("Canvas/Text/txt_notify", r.name + "逃跑啦！", 80);
                                L();
                            })();
                            return;
                        }
                    }
                    var t, a = r.name + "攻击", o = new RegExp("触发"), s = "", l = "", u = "", f = n.figthState;
                    if (t = 5 * n.itemNum2[11] + 20 * n.itemNum2[60], 100 * Math.random() < t) {
                        v > 20 && (v = 20);
                        var d = 20 * (y += 1), m = Math.round(.80 * V.maxHp);
                        V.def = Math.round(N * (d / 100 + 1));
                        n.role.hp += m;
                        n.role.hp > V.maxHp && (n.role.hp = V.maxHp);
                        a += "。【银白色荣耀！】触发";
                        s = "，残机恢复" + m + "，防御加成" + d + "%";
                    }
                    var g, _, x = parseInt(Math.max(r.att - c.correct[1] - V.def, 0));
                    0 == f && (x = parseInt(x * (.8 - b[0] / 2000)));
                    if (2 == f) {
                        var C = 10 + b[2];
                        x = parseInt(x * (1 - b[2] / 500));
                    }
                    if (g = Math.min(2 * n.itemNum2[4] + 2 * n.itemNum2[36], 60 + 2 * n.itemNum2[36]), 100 * Math.random() < g) {
                        x = 0;
                        o.test(a) ? a = a.replace("触发", "【擦弹】触发") : a += "。【擦弹】触发";
                    }
                    if (_ = 2 * n.itemNum2[9], 100 * Math.random() < _) {
                        var E = Math.max(V.def - c.correct[1], 0);
                        (x -= E) < 0 && (x = 0);
                        r.hp -= E * 2.5;
                        o.test(a) ? a = a.replace("触发", "【反弹】触发") : a += "。【反弹】触发";
                        l = "，" + E * 2.5 + "点伤害反弹给" + r.name;
                    }
                    n.role.hp -= x;
                    if (2 == f) {
                        C = parseInt(30 + b[2] * 2);
                        n.role.hp += C;
                        n.role.hp > V.maxHp && (n.role.hp = V.maxHp);
                        u = "「猥琐：你恢复" + C + "点残机」";
                    }
                    a = a + "，你受到" + x + "点伤害" + l + s + u;
                    "undefined" != typeof r.skill && (a = a + "！" + r.skill());
                    c.creatText(h, "enemyNotify", a);
                    O();
                    (function () {
                        R();
                        A();
                        p.getComponent("cc.Label").string = "";
                        i.textZoon2("Canvas/Fight/roleHp");
                        i.textZoon2("Canvas/Fight/escapeRate");
                    })();
                    F();
                    U();
                    M();
                }
                function H() {
                    var e = Math.round(100 * (1 - r.hp / r.maxHp)), t = (r.escapeRate + e + n.escapeExp / 10 + 2 * n.itemNum2[24] + n.publicVar3[11]).toFixed(1);
                    t < 0 && (t = 0);
                    return t = Math.min(t, 100);
                }
                function R() {
                    f.getComponent("cc.Label").string = "HP" + n.role.hp + "/" + V.maxHp;
                    d.getComponent("cc.Label").string = r.name + "LV" + r.lv + "\nHP" + r.hp;
                    m.getComponent("cc.Label").string = H() + "%";
                    n.publicVar[4] > 0 && w();
                }
                function w() {
                    cc.find("Canvas/Fight/gunButton").getComponent("cc.Label").string = "（" + n.itemNum2[14] + "）\n【" + ["心火", "燃爆吹息"][n.publicVar[4]] + "】";
                }
                function M() {
                    a.save();
                    a.init();
                }
                function L() {
                    var e = cc.find("Canvas/Button"), t = cc.find("Canvas/Text/txt_notify");
                    if (n.role.hp <= 0) {
                        if (n.skillLv[24] > 0) {
                            if (100 * Math.random() < Math.min(Math.max(parseInt(n.publicVar3[12] / 5), 20), 40) && -9567 != r.escapeRate) {
                                n.role.hp = a.role.maxHp();
                                i.playText("Canvas/Text/txt_notify", "【圣斗士：我又回来啦！~】", 80);
                            } else n.role.hp = 1 + parseInt(50 * n.itemNum2[25] + .2 * a.role.maxHp() * n.itemNum2[47] + .03 * a.role.maxHp() * n.itemNum2[25]);
                        } else n.role.hp = 1 + parseInt(50 * n.itemNum2[25] + .03 * a.role.maxHp() * n.itemNum2[25]);
                        if (n.day <= 3) {
                            n.role.hp = a.role.maxHp();
                            n.health += r.lostHealth;
                            i.playText("Canvas/Text/txt_notify", "【作者的守护：游戏前3天战斗失败不会受到惩罚，并且帮你补满血，请开心点玩游戏吧~】", 80);
                        }
                    }
                    cc.find("Canvas/Fight").runAction(cc.scaleTo(.3, 0));
                    e.active = !0;
                    e.runAction(cc.scaleTo(.3, 1));
                    t.opacity = 255;
                    n.enemyId = 0;
                    (function () {
                        if (n.buffState[0] > 0) {
                            var e = 100 * Math.random();
                            e < 50 && (n.buffState[0] = 0);
                        }
                    })();
                    D();
                    M();
                }
                function B() {
                    n.enemyId = 0;
                    M();
                }
                function U() {
                    if (r.hp <= 0) {
                        P();
                        var e = r.drop, t = "", a = "战斗胜利！\n获得", o = c.getItem(e), s = function () {
                            var e = "", t = r.achieve;
                            if (0 != t && "undefined" != typeof t) {
                                n.achieve += t;
                                e = "。声望+" + t;
                            }
                            return e;
                        }();
                        1 == n.skillLv[5] && (t = function () {
                            var e = ["【平衡架势】", "【拼命架势】", "【猥琐架势】"], t = g.indexOf(Math.max.apply(Math, g));
                            n.figthExp[t] += 1;
                            {
                                if (n.figthExp[t] > 500) {
                                    n.figthExp[t] = 500;
                                    return "。" + e[t] + "熟练度已达最大值";
                                }
                                return "。" + e[t] + "熟练度+1";
                            }
                        }());
                        var l = function () {
                            var e = r.getAtt, t = 100 * Math.random();
                            {
                                if (t < 20) {
                                    n.role.def += e;
                                    return "。防御提高" + e + "点！";
                                }
                                if (t < 60) {
                                    n.role.att += e;
                                    return "。攻击提高" + e + "点！";
                                }
                                n.role.maxHp += 5 * e;
                                return "。最大残机值提高" + 5 * e + "点！";
                            }
                        }(), u = function (e) {
                            {
                                if (1 == n.ifFollow[0] && 1 == n.friendSkill1[3]) {
                                    var t = 100 * Math.random();
                                    if (t < 100) {
                                        var a = c.getItem(e);
                                        return "【捡漏：" + a + "】";
                                    }
                                    return "";
                                }
                                return "";
                            }
                        }(e), p = function (e) {
                            {
                                if (1 == n.publicVar[1]) {
                                    var t = n.day + 20, a = 100 * Math.random();
                                    if (a < t) {
                                        var i = c.getItem(e);
                                        return "【修罗：" + i + "】";
                                    }
                                    return "";
                                }
                                return "";
                            }
                        }(e), f = function (e) {
                            {
                                if (n.itemNum2[26] > 0) {
                                    var t = 100 * Math.random(), a = n.itemNum2[26] + n.publicVar3[18];
                                    if (t < a) {
                                        var i = c.getItem(e);
                                        return "【理信·慎重：" + i + "】";
                                    }
                                    return "";
                                }
                                return "";
                            }
                        }(e), z = function (e) {
                            {
                                if (n.itemNum2[52] > 0) {
                                    var t = 100 * Math.random(), a = n.itemNum2[26] - 100;
                                    if (t < a) {
                                        var i = c.getItem(e);
                                        return "【神降：" + i + "】";
                                    }
                                    return "";
                                }
                                return "";
                            }
                        }(e);
                        n.winTimes += 1;
                        "没发现道具" == o && (a = a.replace("获得", ""));
                        a = f + u + p + z + a + o + l + t + s;
                        "undefined" != typeof r.winEvent && (a = a + "！\n" + r.winEvent());
                        B();
                        c.scheduleOnce(function () {
                            i.playText("Canvas/Text/txt_notify", a, 80);
                            L();
                        }, 1.2);
                    }
                }
                function F() {
                    if (n.role.hp <= 0) {
                        var e = "";
                        P();
                        f.stopAllActions();
                        m.stopAllActions();
                        var t = r.lostHealth || 0;
                        e = n.day < 20 ? "战斗失败！健康-" + t + "（健康为0时游戏结束）" : "战斗失败！健康-" + t;
                        n.health -= t;
                        "undefined" != typeof r.lostEvent && (e = e + "！\n" + r.lostEvent());
                        n.publicVar3[12] += 1;
                        B();
                        c.scheduleOnce(function () {
                            i.playText("Canvas/Text/txt_notify", e, 80);
                            L();
                        }, 1.2);
                    }
                }
                function A() {
                    var e = [[4, 0], [0, 0], [-4, 0], [0, 0], [4, 0], [0, 0]], t = 0;
                    c.schedule(function () {
                        cc.find("Canvas").parent.setPosition(e[t][0], e[t][1]);
                        t++;
                    }, .05, 5);
                }
                function D() {
                    h.removeAllChildren(!0);
                }
                function P() {
                    f.scale = 0;
                    m.scale = 0;
                    s.scale = 0;
                    l.scale = 0;
                    u.scale = 0;
                }
                function O() {
                    s.scale = 1;
                    l.scale = 1;
                    u.scale = 1;
                }
            },
            ifBeAttacked: function () {
                var t = e("scr_data").enemyId;
                t && this.fight(t);
            },
            onLoad: function () {
                this.ifBeAttacked();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_enemy: "scr_enemy",
        scr_public: "scr_public"
    }],
    scr_forwardButton: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "7e6b7ZHdulNI6LuPQKyXMkr", "scr_forwardButton");
        cc.Class({
            extends: cc.Component,
            properties: {},
            fight: function () {
                var t = this.getFigthId();
                e("scr_data").enemyId = t;
                e("scr_public").save();
                cc.find("Event/scr_fight").getComponent("scr_fight").fight(t);
            },
            getFigthId: function () {
                for (var e = this.getEnemyRate(), t = 100 * Math.random(), n = e.length, a = 0; a <= n - 2; a++) if (t > e[a][0] && t <= e[a + 1][0]) return e[a + 1][1];
            },
            getEnemyRate: function () {
                e("scr_data");
                var t = [], n = e("scr_public").regionId();
                1e3 == n ? t = [[0, 0], [20, 1], [21, 902], [35, 2], [60, 3], [70, 4], [85, 100001], [95, 100002], [100, 706]] : 2e3 == n ? t = [[0, 0], [15, 21], [30, 22], [40, 29], [50, 23], [60, 24], [70, 25], [80, 26], [90, 28], [99, 100001], [100, 27]] : 3e3 == n ? t = [[0, 0], [15, 31], [25, 37], [40, 32], [50, 33], [60, 34], [70, 35], [80, 36], [88, 300001], [95, 300002], [100, 100001]] : 4e3 == n && (t = [[0, 0], [20, 41], [30, 42], [43, 46], [60, 43], [70, 44], [85, 45], [95, 400001], [100, 100001]]);
                return t;
            },
            getItemNum: function () {
                return 2;
            },
            getItem: function () {
                e("scr_public").regionId();
                var t = e("scr_data"), n = this.getDrop(), a = cc.find("Event/scr_fight").getComponent("scr_fight").getItem(n), i = function () {
                    var t = e("scr_data"), a = t.itemNum2[17] + t.publicVar3[9], i = 100 * Math.random(), c = "";
                    i < a && (c = "没发现道具" != (c = cc.find("Event/scr_fight").getComponent("scr_fight").getItem(n)) ? "\n【贤明·正直：发现" + c + "】" : "\n【贤明·正直：什么也没有发现！】");
                    return c;
                }(), z = function () {
                    var t = e("scr_data"), a = t.itemNum2[52], z = 1 * Math.random(), c = "";
                    z < a && (z = "没发现道具" != (z = cc.find("Event/scr_fight").getComponent("scr_fight").getItem(n)) ? "\n【神降：发现" + z + "】" : "\n【神降：什么也没有发现！】");
                    return z;
                }(), c = function () {
                    var t = e("scr_data"), a = "";
                    if (1 == t.publicVar[1]) {
                        var i = t.day + 20, c = 100 * Math.random();
                        c < i && (a = "没发现道具" != (a = cc.find("Event/scr_fight").getComponent("scr_fight").getItem(n)) ? "\n【修罗：发现" + a + "】" : "\n【修罗：什么也没有发现！】");
                    }
                    return a;
                }();
                if ("没发现道具" != a) a = i + c + "发现" + a + z; else {
                    var o = function () {
                        var t = e("scr_data"), a = 5 * (t.itemNum2[27] + t.publicVar3[17]), i = 100 * Math.random(), c = "";
                        if (i < a) if ("没发现道具" != (c = cc.find("Event/scr_fight").getComponent("scr_fight").getItem(n))) c = "\n【爱丽丝手链：发现" + c + "】"; else {
                            t.money += 1;
                            c = "\n【爱丽丝手链：发现0.1元！】";
                        }
                        return c;
                    }();
                    t.publicVar2[1] += 1;
                    a = o + i + c + "什么也没有找到！" + z;
                    if (t.skillLv[23] > 0) {
                        t.money += 1;
                        a += "【逆袭：p值+0.1】";
                    }
                    if (t.day <= 3) {
                        t.itemNum[5] += 2;
                        a += "【作者的呵护：获得「艾草」*2（游戏前3天有效）】";
                    }
                }
                e("scr_effect").playText("Canvas/Text/txt_notify", a, 60);
            },
            getDrop: function () {
                var t = [], n = this.getItemNum(), a = e("scr_public").regionId();
                1e3 == a && (t = [[20, 0, n, 1], [30, 1, n, 1], [30, 4, n, 1], [20, 5, n, 1], [7, 6, n, 1], [2, 8, 1, 1]]);
                2e3 == a && (t = [[75, 2, n, 1], [22, 99, n, 3], [15, 10, n, 1], [16, 7, n, 1]]);
                3e3 == a && (t = [[15, 0, n, 1], [35, 1, n, 1], [35, 4, n, 1], [15, 5, n, 1], [5, 6, n, 1], [2, 8, 1, 1]]);
                4e3 == a && (t = [[75, 2, n, 1], [25, 99, n, 3], [20, 10, n, 1], [10, 99, 2, 3]]);
                return t;
            },
            randomId: function (e) {
                for (var t = 100 * Math.random(), n = e.length, a = 0; a <= n - 2; a++) if (t > e[a] && t <= e[a + 1]) return a + 1;
            },
            event: function () {
                var e = 1;
                e = 100 * Math.random() <= this.eventPartitionRate() ? this.randomId([0, 10, 20, 25, 35, 45, 60, 70, 80, 90, 100]) : this.regionEventId();
                cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent").startEvent(e);
            },
            eventPartitionRate: function () {
                var t = e("scr_public").regionId();
                return 1e3 == t ? 60 : 2e3 == t ? 30 : 3e3 == t ? 50 : 4e3 == t ? 50 : void 0;
            },
            regionEventId: function () {
                var t = 1, n = e("scr_public").regionId();
                1e3 == n && (t = 1e3 + this.randomId([0, 25, 50, 75, 100]));
                2e3 == n && (t = 2e3 + this.randomId([0, 10, 20, 40, 50, 90, 100]));
                3e3 == n && (t = 3e3 + this.randomId([0, 15, 25, 35, 50, 65, 80, 100]));
                4e3 == n && (t = 4e3 + this.randomId([0, 10, 25, 55, 75, 100]));
                return t;
            },
            forward: function () {
                var t = 100 * Math.random(), n = e("scr_data");
                this.reduceRes();
                this.recoveryHp();
                this.reduceHealth();
                if (t <= 20) if (n.distance <= 3) {
                    n.publicVar2[3] += 1;
                    this.getItem();
                } else {
                    n.publicVar2[2] += 1;
                    this.fight();
                } else if (t <= 80) {
                    n.publicVar2[3] += 1;
                    this.getItem();
                } else if (n.distance <= 5) {
                    n.publicVar2[3] += 1;
                    this.getItem();
                } else {
                    n.publicVar2[4] += 1;
                    this.event();
                }
            },
            reduceHealth: function () {
                var t = e("scr_data");
                if (e("scr_public").autoEat() && t.hunger <= 0) {
                    if (100 * Math.random() < 50) {
                        t.health -= 1;
                        e("scr_effect").textZoon("Canvas/Text/txt_health");
                    }
                }
            },
            recoveryHp: function () {
                var t = e("scr_data"), n = e("scr_public"), a = (1 + 4 * t.skillLv[3] + 1 * t.itemNum2[6] + 36 * t.skillLv[17] + 5 * t.itemNum2[39] + 2 * t.itemNum2[23]) * (1 + t.skillLv[21]), i = n.role.maxHp();
                t.role.hp += a;
                t.role.hp > i && (t.role.hp = i);
            },
            reduceRes: function () {
                var t = e("scr_data");
                e("scr_effect");
                this.addDistance();
                this.switchForwardButton();
                t.energy -= this.Energy;
                t.hunger > 0 && (t.hunger -= 7);
            },
            addDistance: function () {
                e("scr_data").distance += 1;
                e("scr_effect").textZoon("Canvas/Text/txt_distance");
            },
            switchForwardButton: function () {
                var t = e("scr_data"), n = (e("scr_effect"), e("scr_public"));
                if (100 == t.distance && 1 == t.stayDay[1]) {
                    t.button[0] = !1;
                    t.button[1] = !0;
                    t.button[2] = !0;
                    n.ifNotify = !0;
                }
                101 == t.distance && (t.button[1] = !1);
            },
            playBGM: function () {
                cc.audioEngine.stopAll();
                var e = cc.game._persistRootNodes;
                for (var t in e) var n = e[t].getComponent("scr_BGM").BGM4;
                cc.audioEngine.play(n, !1, 1);
            },
            callBack: function () {
                var t = e("scr_data"), n = e("scr_effect"), a = e("scr_public"), i = this.dryUp();
                a.ifGameOver();
                this.Energy = 10;
                if (t.energy >= this.Energy && 0 == i) if (t.day >= 180) this.end(); else if (290 == t.distance && 1 == t.ifFollow[0]) {
                    t.plotId = 1;
                    t.enemyId = 108;
                    a.save();
                    cc.director.loadScene("plot");
                } else if (299 == t.distance) if (1 == t.ifFollow[0]) {
                    t.button[0] = !1;
                    t.button[1] = !0;
                    t.button[2] = !0;
                    a.init();
                    t.ifFollow[0];
                    t.plotId = 5;
                    a.save();
                    cc.director.loadScene("plot");
                } else {
                    t.button[0] = !1;
                    t.button[1] = !0;
                    t.button[2] = !0;
                    t.distance += 1;
                    a.save();
                    a.init();
                    n.playText("Canvas/Text/txt_notify", "你已到达月都！", 60);
                } else this.forward(); else if (t.energy < this.Energy) n.playText("Canvas/Text/txt_notify", "精力不足！", 60); else if (100 == t.distance) {
                    t.button[0] = !0;
                    n.playText("Canvas/Text/txt_notify", "再待下去迟早会被发现，还是去月都看看吧！", 60);
                } else t.distance < 300 && t.distance > 100 && n.playText("Canvas/Text/txt_notify", "还是先去月都整顿一下吧！", 60);
                t.distance < 100 ? cc.find("Game/scr_mainUIinit").getComponent("scr_mainUIinit").showButton() : a.init();
                t.distance > 300 && (t.distance = 300);
                a.autoEat();
                a.init();
                a.save();
                this.shieldButton();
            },
            end: function () {
                var t = e("scr_effect"), n = e("scr_data"), a = e("scr_public");
                ({
                    0: function () {
                        n.energy = 1e3;
                        n.publicVar[13] = 2;
                        n.publicVar3[3] += 1;
                        a.save();
                        t.playText("Canvas/Text/txt_notify", "整个城市被大雾笼罩，身边的人影开始慢慢消失，周围没有一点声音...", 60);
                    },
                    1: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "一个男人的身影缓缓浮现，一步步向我走了过来...", 60);
                    },
                    2: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“欢迎你的到来，我的朋友；这里是游戏的终点，我是这个游戏的作者”", 60);
                    },
                    3: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“虽然你可能有很多疑问，但是我并不想在这里回答你；我到这里来，只是想收获我的游戏成果”", 60);
                    },
                    4: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“但是在此之前，有些东西我需要向你交代一下。”", 60);
                    },
                    5: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“首先，在这个游戏里，只有两个真正的角色————你和我”", 60);
                    },
                    6: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“其他角色，只不过是我所创造的虚拟角色”", 60);
                    },
                    7: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“这个世界中既不存在「父亲」，也没有「刀疤男」和「通缉犯」”", 60);
                    },
                    8: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“我并不关心这些虚拟角色的「命运」，我只在意你体验完游戏后，获得了什么”", 60);
                    },
                    9: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“希望你能认真的回答我几个问题，我将根据问题的答案、和你在游戏中的所有选择，给出我的个人评价”", 60);
                    },
                    10: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“如果评价没有达到我的预期，你的游戏存档将会被我删除，那么请开始答题吧~”", 60);
                    },
                    11: function () {
                        cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent").startEvent(10001);
                    },
                    111: function () {
                        cc.find("Canvas/Text/txt_notify").y = 277;
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“你的答题评分为" + n.publicVar[11] + "（满分30，与刚才十个题目有关）。\n这部分设计目的、只是想引导你去思考这些问题，你随便怎么选都可以，我不会去要求你必须怎么样”", 60);
                    },
                    112: function () {
                        var e = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent");
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“游戏评分为" + e.gamePoint + "（满分52，与你在游戏中的选择有关）。\n这部分是考察你游戏的策略性和你的性格（游戏性格，不必较真（对了，你应该没买咸鱼道具和楼观剑吧（笑）”", 60);
                    },
                    113: function () {
                        cc.find("Canvas/Text/txt_notify").y = 577;
                        var e = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent");
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“属性评分为" + e.attPoint + "（满分18，攻防血属性越「低」分数越高！）\n这里很有必要解释下为何、要这么设计：\n第一，我想让你注重培养女主、被动技和某些道具，而不仅是仅用属性碾压 \n第二，低属性通关比可能比高属性通关更具挑战性！”", 60);
                    },
                    114: function () {
                        var a = 59 - 10 * e("scr_data2").gameData[4];
                        cc.find("Canvas/Text/txt_notify").y = 77;
                        var i = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent");
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“总分为" + i.totalPoint + "，低于通关所需分数（" + a + "分）。”", 60);
                    },
                    115: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“你的存档即将被我删除。”", 60);
                    },
                    116: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“但是，被我删档后，重新开始游戏，会有部分NPC保留对你的记忆，并且通关所需评分将至49分。”", 60);
                    },
                    117: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“我会在这里等着你，再会吧~”", 60);
                    },
                    118: function () {
                        e("scr_data2").gameData[4] = 1;
                        e("scr_public").save2();
                        JSON.parse(cc.sys.localStorage.getItem("userData")) && cc.sys.localStorage.removeItem("userData");
                        cc.director.loadScene("start");
                    },
                    211: function () {
                        cc.find("Canvas/Text/txt_notify").y = 277;
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“你的答题评分为" + n.publicVar[11] + "（满分30，与刚才十个题目有关）。\n这部分设计目的、只是想引导你去思考这些问题，你随便怎么选都可以，我不会去要求你必须怎么样”", 60);
                    },
                    212: function () {
                        var e = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent");
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“游戏评分为" + e.gamePoint + "（满分52，与你在游戏中的选择有关）。\n这部分是考察你游戏的策略性和你的性格（游戏性格，不必较真）”", 60);
                    },
                    213: function () {
                        cc.find("Canvas/Text/txt_notify").y = 577;
                        var e = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent");
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“属性评分为" + e.attPoint + "（满分18，攻防血属性越「低」分数越高！）\n这里很有必要解释下为何、要这么设计：\n第一，我想让你注重培养女主、被动技和某些道具，而不仅是仅用属性碾压 \n第二，低属性通关比可能比高属性通关更具挑战性！”", 60);
                    },
                    214: function () {
                        var a = 59 - 10 * e("scr_data2").gameData[4];
                        cc.find("Canvas/Text/txt_notify").y = 77;
                        var i = cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent");
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“总分为" + i.totalPoint + "，高于通关所需分数（" + a + "分）。你可以过关啦~”", 60);
                    },
                    215: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“不过你想看到一个什么样的结局，将由你自己去选择。我需要指出的是，无论你如何选择，游戏都将结束。请做出你的选择。”", 60);
                    },
                    216: function () {
                        cc.find("Event/scr_mainUIEvent").getComponent("scr_mainUIEvent").startEvent(20001);
                    },
                    311: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "听说射命丸文还是没有成为具有极大影响力的新闻记者（地点：妖怪之山。结局：无奈的文文）", 60);
                    },
                    312: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "落满枫叶的小路上，爱丽丝正和几位朋友手舞足蹈的说着些什么，似乎在说着自己曾经与泽诺的经历（地点：爱丽丝家。结局：两个世界）", 60);
                    },
                    313: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "再次碰到秋穰子时，她一见到你就拜了下来，说着异变让她发狂打秋静叶的事，并表达自己已经悔过...”（地点：月都。结局：知错就改）", 60);
                    },
                    314: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "我出面解决了露西的事，虽然让我变得身无分文，勇仪原谅了我（不对啊，不是勇仪想打劫你的吗）（算了，就这样吧），露西显得很开心”（人物：水桥帕露西。结局：解决矛盾（知错就改）（注：既定结局）", 60);
                    },
                    315: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "我把妖魔书还给了小铃，小铃表示很感谢，并送了我一个？？？防撞桶？？？（地点：铃奈庵。结果：防撞桶？？？）", 60);
                    },
                    316: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "乡长拿着草薙剑出去闯荡，还说着要成为比妖梦更厉害的剑士，但是才出去一天，魔理沙来香霖堂是发现找不到乡长，就找灵梦，最后灵梦通知紫，当紫发现乡长的时候，被妖梦打败导致心情抑郁，被抓回来看店（地点：香霖堂。结局：你还是老实看店吧）", 60);
                    },
                    317: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "河童的河童精神干扰装置终于发明出来了，但是没两天就被饭纲丸龙给发现报道了...，之后引来了灵梦，被八方鬼缚阵给拆了（地点：妖怪之山。结局：叫你一天天动歪脑筋）", 60);
                    },
                    318: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "在你的影响下，地月停战协议终于签订，但是有一个人不像其他人那么高兴，纯狐。（事件：地月和平。结局：一个人的绝望）", 60);
                    },
                    319: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "囧仙的房子前已长满杂草，房内早已空荡荡...（地点：妖怪之山。结局：幻想乡的流星）", 60);
                    },
                    320: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "紫苑终于吃得饱了，因为.........没有人抢垃圾桶了？（地点：垃圾桶。结局：？）", 60);
                    },
                    321: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "市中心的妹子卸下了伪装，人家不是四季（想想也是，毕竟四季喜欢说教你）她是          打了多份工的....... 赤蛮奇？（地点：市中心。结局：？）", 60);
                    },
                    322: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "你回到县城，找到当时送糖的毛玉，你给了它500p值（地点：人间之里。结局：美好的人生？）", 60);
                    },
                    323: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "幽幽子和妖梦回到了冥界，人里的人们又回到了短暂的和平之中，虽然他们不知道到底发生什么了...（地点：人间之里。结局：短暂的和平）", 60);
                    },
                    324: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "所有呆在月都的人都回来了，每个人都很健康（永琳治好的，铃仙试的药）...（地点：幻想乡。结局：可怜的工具兔）", 60);
                    },
                    325: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "推开栅栏，院子里长满了杂草，似乎很久没人居住...（地点：？的家）", 60);
                    },
                    326: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "门是开着的，屋里没有灯火，静悄悄的；青灰色的屋顶、几颗新绿色的嫩芽，在夕阳的余晖下，显得格外的安静。纯狐在默默等候一个人（地点：纯狐家）", 60);
                    },
                    327: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "“按照约定...我们在一起吧”“嗯”（地点：家。结局：放下仇恨）", 60);
                    },
                    328: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "...全剧终...", 60);
                    },
                    329: function () {
                        n.publicVar3[3] += 1;
                        t.playText("Canvas/Text/txt_notify", "「感谢您能陪我看到最后！我是晓风，再会啦~」", 60);
                    },
                    330: function () {
                        e("scr_data2").gameData[4] = 0;
                        e("scr_public").save2();
                        cc.director.loadScene("end");
                    },
                    411: function () {
                        n.plotId = 1001;
                        a.save();
                        cc.director.loadScene("plot");
                    },
                    412: function () {
                        n.plotId = 1002;
                        a.save();
                        cc.director.loadScene("plot");
                    },
                    413: function () {
                        n.plotId = 1003;
                        a.save();
                        cc.director.loadScene("plot");
                    }
                })[n.publicVar3[3]]();
                a.save();
                a.init();
            },
            dryUp: function () {
                return !1;
            },
            shieldButton: function () {
                this.node.off("touchstart", this.callBack, this);
                this.node.runAction(cc.tintTo(.3, 114, 199, 255));
                this.scheduleOnce(this.onLoad, .07);
            },
            autoEat: function () {
                var t = e("scr_data"), n = e("scr_public");
                if (t.hunger <= 0) {
                    if (t.itemNum[0] >= 1) {
                        t.itemNum[0] -= 1;
                        t.orderTimes[5] += 1;
                        t.hunger += 20;
                        100 * Math.random() < 15 && (t.health += 1);
                        n.save();
                        n.textZoon("Canvas/Button/txt_state");
                        return !0;
                    }
                    if (t.itemNum2[0] >= 1) {
                        t.itemNum2[0] -= 1;
                        t.orderTimes[2] += 1;
                        t.hunger += 70;
                        n.save();
                        n.textZoon("Canvas/Button/txt_state");
                        return !0;
                    }
                    return !0;
                }
                return !1;
            },
            onLoad: function () {
                this.endActionId = 0;
                this.node.runAction(cc.tintTo(.3, 255, 255, 255));
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_friendSkillJudge1: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "fc5f8Ub5xdFcbVtSTj8STEm", "scr_friendSkillJudge1");
        cc.Class({
            extends: cc.Component,
            properties: {},
            skillJugge: function () {
                var t = e("scr_data"), n = e("scr_public"), a = t.friendSkill1, i = {
                    1: function () {
                        0 == a[1] && t.choice[5] >= 30 && (a[1] = 1);
                    },
                    2: function () {
                        0 == a[2] && t.choice[5] >= 60 && (a[2] = 1);
                    },
                    3: function () {
                        0 == a[3] && t.choice[5] >= 2000 && (a[3] = 1);
                    },
                    4: function () {
                        0 == a[4] && t.choice[5] >= 240 && (a[4] = 1);
                    }
                };
                for (var c in i) i[c]();
                n.save();
            },
            onLoad: function () {
                this.skillJugge();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_friendSkillUI1: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "0992cbWpqJNPIJFvroUyU98", "scr_friendSkillUI1");
        cc.Class({
            extends: cc.Component,
            properties: {},
            skillDes: function () {
                var t = e("scr_data"), n = ["【上海之力】给主角增加" + parseInt(t.choice[5] / 4 + 10) + "点攻击，增加幅度与好感有关。天生自带，无需激活！", "【可爱】精力上限+20，好感达到30激活！", "【蓬莱之力】每回合，" + Math.min(parseInt(t.choice[5] / 4), 100) + "%几率给主角恢复10%残机，并增加主角3%攻击（可无限叠加），触发概率与好感相关，好感达到60激活！", "【搜刮】胜利后，100%几率再获得一次奖励，全怪物有效，好感达到？？？？激活！", "【爱丽丝！爱丽丝！】睡觉时，健康恢复效果翻倍，残机恢复效果翻倍，精力额外再恢复20！好感达到240激活！"];
                return n;
            },
            showDes: function () {
                for (var t = e("scr_data"), n = e("scr_public"), a = t.friendSkill1, i = this.skillDes(), c = i.length, o = cc.find("Canvas/Show"), r = 0; r <= c - 1; r++) {
                    n.showText2(o, "skill" + r, i[r], 60);
                    a[r] > 0 && (o.getChildByName("skill" + r).color = new cc.Color(0, 255, 255));
                }
            },
            onLoad: function () {
                this.showDes();
                cc.find("Canvas/back").on("touchstart", function () {
                    cc.director.loadScene("friend1");
                }, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_friendSkillUI2: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "d0387ZXPPtJs4Lfy6jPllmL", "scr_friendSkillUI2");
        cc.Class({
            extends: cc.Component,
            properties: {},
            skillDes: function () {
                var t = e("scr_data"), n = ["【独立】露西会与主角并肩作战（攻击" + parseInt(t.publicVar[7] * 3 + 1000) + "，随好感提升）", "【暗杀】露西每次攻击暴击提高5%！需30好感", "【爱心】每天" + Math.max(parseInt(t.publicVar[7] / 20 + 25), 25) + "%几率获得露西总存款的2%（露西存款为" + (t.publicVar2[18] / 10).toFixed(1) + "元，你能到手的零p值为" + (.02 * t.publicVar2[18] / 10).toFixed(1) + "元），触发几率随好感提升。需60好感", "【刺杀】露西暴击后，附加给目标一层流血效果，降低目标10%防御。需100好感", "【保护】露西暴击后，伤害的50%用于治疗主角。需160好感", "【冷静】露西基础暴击率+25%。需240好感", "【双飞】露西暴击后，主角下次攻击必定触发暴击！需340好感", "【监督】每天" + Math.max(parseInt(t.publicVar[7] / 20 + 20), 20) + "%几率降低主角1%网瘾，触发几率随好感提升。需460好感", "【终结】露西每间隔两次攻击，触发一次「终结」技。需600好感"];
                return n;
            },
            showDes: function () {
                for (var t = e("scr_data"), n = e("scr_public"), a = t.friendSkill, i = this.skillDes(), c = i.length, o = cc.find("Canvas/Show"), r = 0; r <= c - 1; r++) {
                    n.showText2(o, "skill" + r, i[r], 50);
                    a[r] > 0 && (o.getChildByName("skill" + r).color = new cc.Color(0, 255, 0));
                }
            },
            onLoad: function () {
                this.showDes();
                cc.find("Canvas/goods").getComponent("cc.Label").string = "当前好感：" + e("scr_data").publicVar[7];
                cc.find("Canvas/back").on("touchstart", function () {
                    cc.director.loadScene("main");
                }, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_friendUI1: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "871fc61bpBNRLPJHo54vOLw", "scr_friendUI1");
        cc.Class({
            extends: cc.Component,
            properties: {},
            dialog: function () {
                return ["“我叫爱丽丝.玛格特罗伊德，我从家里逃出来了”", "“在家魔理沙灵梦和帕琪堵着我”", "“弄得我都没有什么隐私了。\n╮(╯﹏╰）╭”", "“甚至她们都要和我在一张床上睡觉，那睡觉有啥意思呢？对吧。”", "“我就想着没意思，想着出来做一个女侠，(•̀⌄•́)”", "“我半夜逃出来了，然后跑累了。\n(*´・ｖ・)”", "“然后我自由了。\n︿(￣︶￣)︿”", "“差点就饿死了。\n(;´༎ຶД༎ຶ`)”", "“早知道我就不出来了。\n(ಥ_ಥ)”", "“我想随便采几个蘑菇充充饥，结果发现没带火（幸好没带...）。\n(｡･ω･｡)”", "“不过呢，我聪明啊，我沿着路，捡到几罐喝剩的皮⑨。\n︿(￣︶￣)︿”", "“我躲在路边，暗中观察那些路人，准备拦一个可靠点的。\n( • ̀ω•́ )✧”", "“结果，选中了你，你说我选得对吗？\n(*/ω＼*)”", "“其实哇，你打招呼后，我已经跟踪你一天了，嘿嘿~\n(｡･ω･｡)”"];
            },
            randomDialog: function () {
                return ["“(ಡωಡ)hiahiahia....嗝~”", "“跟你讲我可是很厉害的哦ｸﾞｯ!\n(๑•̀ㅂ•́)و✧”", "“游戏里都是骗人的，哪有什么土块、野兔，全是荆棘和虫子\n(╥╯^╰╥)”", "“偷偷告诉你...这个游戏作者没有女朋友\n(ಡωಡ)hiahiahia”", "“偷偷告诉你...长得漂亮的女孩子大多都平胸，但是反过来，就不好说啦╮(╯﹏╰）╭”", "“我跟你讲哈！那些一个人、背着双肩包旅游的女孩子，最好别去搭讪=￣ω￣=”", "“啊嘞嘞~这样真让人头疼呢╮(￣▽￣)╭”", "“人家天生就不怎么会撒娇呢\n(ಡωಡ)hiahiahia”", "“嘿嘿(º﹃º )，放心放心姐姐不是什么好人~”", "“听说这个游戏的最终BOSS是个酒鬼╮(￣▽￣)╭”"];
            },
            initUI: function () {
                var t = e("scr_data");
                cc.find("Canvas/inf/good").getComponent("cc.Label").string = "爱丽丝好感：" + t.choice[5];
            },
            initUI2: function () {
                var t = e("scr_data");
                cc.find("Canvas/inf/good").getComponent("cc.Label").string = "露西好感：" + t.publicVar[7];
            },
            eat: function () {
                var t = e("scr_data"), n = e("scr_effect"), a = e("scr_public");
                if (t.itemNum[0] > 0 || t.itemNum2[0] > 0) {
                    if (t.itemNum[0] > 0) {
                        t.publicVar2[10] = 0;
                        t.publicVar[2] = 1;
                        t.itemNum[0] -= 1;
                        t.choice[5] += 1;
                        this.initUI();
                        cc.find("Canvas/Show").removeAllChildren();
                        n.playText("Canvas/notify", "土块-1，爱丽丝好感+1", 80);
                    } else if (t.itemNum2[0] > 0) {
                        t.publicVar2[10] = 0;
                        t.publicVar[2] = 1;
                        t.itemNum2[0] -= 1;
                        t.choice[5] += 3;
                        this.initUI();
                        cc.find("Canvas/Show").removeAllChildren();
                        n.playText("Canvas/notify", "高级土-1，爱丽丝好感+3", 80);
                    }
                    a.save();
                } else {
                    cc.find("Canvas/Show").removeAllChildren();
                    n.playText("Canvas/notify", "吃光光啦！", 80);
                }
            },
            takePill: function () {
                var t = e("scr_data"), n = e("scr_effect"), a = e("scr_public");
                if (t.itemNum2[1] > 0) {
                    t.choice[5] += 2;
                    t.itemNum2[1] -= 1;
                    this.initUI();
                    a.save();
                    cc.find("Canvas/Show").removeAllChildren();
                    n.playText("Canvas/notify", "“张嘴，吃急支糖浆~”\n“啊~~~~emmmmm~”\n爱丽丝好感+2", 80);
                } else {
                    cc.find("Canvas/Show").removeAllChildren();
                    n.playText("Canvas/notify", "没急支糖浆啦~！", 80);
                }
            },
            talk: function () {
                var t = e("scr_data"), n = e("scr_effect");
                if (t.energy >= 10) {
                    var a = this.dialog(), i = e("scr_public"), c = t.talkTimes[0], o = cc.find("Canvas/Show"), r = a[c];
                    if ("undefined" == typeof r) {
                        var s = this.randomDialog(), l = s.length;
                        r = s[parseInt(Math.max(Math.random() * l - .1))];
                    }
                    c % 3 == 0 && o.removeAllChildren();
                    i.showText(o, "plot" + c, r, 60);
                    t.talkTimes[0] += 1;
                    t.energy -= 10;
                    t.choice[5] += 1;
                    this.initUI();
                    i.save();
                } else {
                    cc.find("Canvas/Show").removeAllChildren();
                    n.playText("Canvas/notify", "精力不足！", 80);
                }
            },
            onLoad: function () {
                e("scr_data"), e("scr_public");
                var t = cc.find("Canvas/button");
                cc.find("Canvas/close").on("touchstart", function () {
                    e("scr_public").save();
                    cc.director.loadScene("main");
                }, this);
                this.initUI();
                t.getChildByName("button1").on("touchstart", this.talk, this);
                t.getChildByName("button2").on("touchstart", this.eat, this);
                t.getChildByName("button4").on("touchstart", this.takePill, this);
                t.getChildByName("button3").on("touchstart", function () {
                    cc.director.loadScene("friendSkill1");
                }, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_home: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "82a35cQvNJE9LzHff6utW/P", "scr_home");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_effect"), a = e("scr_public"), i = cc.find("Canvas/UI1"), c = cc.find("Canvas/UI2"), o = cc.find("Canvas/UI3"), r = cc.find("Canvas/UI4"), s = cc.find("Canvas/UI5"), l = i.getChildByName("choice1"), u = i.getChildByName("choice2"), p = i.getChildByName("choice3"), f = i.getChildByName("choice4"), d = i.getChildByName("choice5"), m = i.getChildByName("choice6"), h = t.publicVar2[23] + t.publicVar2[24] + t.publicVar2[25] + t.publicVar2[26] + t.publicVar2[27] + t.publicVar2[28] + t.publicVar2[29];
                (function () {
                    i.getChildByName("back").on("touchstart", function () {
                        e("scr_public").save();
                        cc.director.loadScene("main");
                    }, this);
                    t.publicVar2[17] > 0 ? l.on("touchstart", v, l) : l.on("touchstart", J, l);
                    u.on("touchstart", function () {
                        e("scr_data").energy >= 10 ? cc.director.loadScene("notice2") : cc.director.loadScene("diary");
                    }, this);
                    p.on("touchstart", y, this);
                    f.on("touchstart", g, this);
                    h > 0 ? d.on("touchstart", b, this) : d.on("touchstart", J, this);
                    t.stayDay[3] > 12 ? m.on("touchstart", _, this) : m.on("touchstart", J, this);
                    c.getChildByName("choice1").on("touchstart", x, this);
                    c.getChildByName("choice2").on("touchstart", C, this);
                    c.getChildByName("choice3").on("touchstart", E, this);
                    o.getChildByName("choice1").on("touchstart", I, this);
                    o.getChildByName("choice2").on("touchstart", V, this);
                    o.getChildByName("choice3").on("touchstart", N, this);
                    0 != t.publicVar2[23] && r.getChildByName("choice7").on("touchstart", T, this);
                    0 != t.publicVar2[24] && r.getChildByName("choice6").on("touchstart", k, this);
                    0 != t.publicVar2[25] && r.getChildByName("choice5").on("touchstart", S, this);
                    0 != t.publicVar2[26] && r.getChildByName("choice4").on("touchstart", H, this);
                    0 != t.publicVar2[27] && r.getChildByName("choice3").on("touchstart", R, this);
                    0 != t.publicVar2[28] && r.getChildByName("choice2").on("touchstart", w, this);
                    0 != t.publicVar2[29] && r.getChildByName("choice1").on("touchstart", M, this);
                    s.getChildByName("choice1").on("touchstart", L, this);
                    s.getChildByName("choice2").on("touchstart", B, this);
                    t.stayDay[3] < 30 || s.getChildByName("choice3").on("touchstart", U, this);
                    0 != t.publicVar2[21] && s.getChildByName("choice4").on("touchstart", F, this);
                    1 == t.publicVar[9] ? s.getChildByName("choice5").on("touchstart", A, this) : 2 == t.publicVar[9] && s.getChildByName("choice5").on("touchstart", D, this);
                    c.getChildByName("back").on("touchstart", function () {
                        (function () {
                            a.save();
                            c.runAction(cc.scaleTo(.3, 0));
                        })();
                        K();
                    }, this);
                    o.getChildByName("back").on("touchstart", function () {
                        (function () {
                            a.save();
                            o.runAction(cc.scaleTo(.3, 0));
                        })();
                        K();
                    }, this);
                    r.getChildByName("back").on("touchstart", function () {
                        (function () {
                            a.save();
                            r.runAction(cc.scaleTo(.3, 0));
                        })();
                        K();
                    }, this);
                    s.getChildByName("back").on("touchstart", function () {
                        (function () {
                            a.save();
                            s.runAction(cc.scaleTo(.3, 0));
                        })();
                        K();
                    }, this);
                })();
                O();
                (function () {
                    i.active = !0;
                    c.active = !0;
                    o.active = !0;
                    r.active = !0;
                    s.active = !0;
                    c.scale = 0;
                    o.scale = 0;
                    r.scale = 0;
                    s.scale = 0;
                    0 == h && (d.getChildByName("text").getComponent("cc.Label").string = "？？？？");
                    t.stayDay[3] > 12 && (m.getChildByName("text").getComponent("cc.Label").string = "外出");
                })();
                (function () {
                    if (t.publicVar[7] > 0 && 0 == t.publicVar[8]) {
                        t.plotId = 98;
                        a.save();
                        cc.director.loadScene("plot");
                    }
                })();
                function v() {
                    t.energy >= 10 ? function () {
                        t.publicVar[7];
                        var e = parseInt(t.publicVar2[20] + 2 * t.publicVar[20]), a = 100 * Math.random();
                        if (a < e) {
                            var i = parseInt(7.9 * Math.random()), c = ["liao ♂ 得不错", "“露西酱~今天也要元气满满喔~”", "“嘿~嘿嘿~”", "“(｡･∀･)ﾉﾞ嗨！~上午好呀！”", "一波调戏", "一波求教", "“早上好呀！”", "“卡哇咿滴斯勒” “？”"];
                            t.publicVar[7] += 1;
                            t.publicVar2[20] += parseInt(3 * Math.random() + 1);
                            n.playText("Canvas/notify", c[i] + "，好感+1\n（当前好感：" + t.publicVar[7] + "）\n（下次成功率为" + t.publicVar2[20] + "%+" + 2 * t.publicVar[20] + "）", 60);
                        } else {
                            var i = parseInt(5.9 * Math.random()), c = ["寒暄", "吹逼", "赞美", "沉默", "鸡汤", "分析"];
                            t.publicVar2[20] -= parseInt(3 * Math.random() + 1);
                            n.playText("Canvas/notify", "一顿" + c[i] + "，好感+0\n（下次聊天成功率" + t.publicVar2[20] + "%+" + 2 * t.publicVar[20] + "%）", 60);
                        }
                        t.energy -= 10;
                        O();
                    }() : n.playText("Canvas/notify", "精力不足！", 60);
                }
                function y() {
                    Z();
                    (function () {
                        Q();
                        c.runAction(cc.scaleTo(.3, 1));
                    })();
                    q();
                }
                function g() {
                    Z();
                    (function () {
                        Q();
                        o.runAction(cc.scaleTo(.3, 1));
                    })();
                    G();
                }
                function b() {
                    Z();
                    (function () {
                        Q();
                        r.runAction(cc.scaleTo(.3, 1));
                    })();
                    z();
                }
                function _() {
                    Z();
                    (function () {
                        Q();
                        s.runAction(cc.scaleTo(.3, 1));
                    })();
                    (function () {
                        t.stayDay[3] < 30 && (cc.find("Canvas/UI5/choice3/text").getComponent("cc.Label").string = "？？？？");
                        0 == t.publicVar2[21] && (cc.find("Canvas/UI5/choice4/text").getComponent("cc.Label").string = "？？？？");
                        0 == t.publicVar[9] && (cc.find("Canvas/UI5/choice5/text").getComponent("cc.Label").string = "？？？？");
                    })();
                }
                function x() {
                    a.autoEat();
                    t.energy >= 10 && t.hunger >= 20 ? function () {
                        var e = t.publicVar[14] + t.publicVar[19];
                        if (100 * Math.random() < e) {
                            t.publicVar[15] += 20;
                            n.playText("Canvas/notify", "训练成功！最大残机值+2%！你感觉气血通畅，神清气爽！", 60);
                        } else n.playText("Canvas/notify", "训练失败！你感觉头晕眼花，四肢无力！怕是要升天喽~", 60);
                        t.energy -= 10;
                        t.hunger -= 20;
                        t.publicVar[14] -= 5;
                        O();
                        q();
                    }() : t.energy < 10 ? n.playText("Canvas/notify", "精力不足！", 60) : n.playText("Canvas/notify", "饥饿值不足！", 60);
                }
                function C() {
                    a.autoEat();
                    t.energy >= 10 && t.hunger >= 20 ? function () {
                        var e = t.publicVar[14] + t.publicVar[19];
                        if (100 * Math.random() < e) {
                            t.publicVar[16] += 20;
                            n.playText("Canvas/notify", "训练成功！防御提高2%！你感觉气身体变得更加柔软了呢(ಡωಡ)！再也不怕挨揍啦！", 60);
                        } else n.playText("Canvas/notify", "训练失败！“哎呀！扭到腰了~(´థ౪థ)σ”。", 60);
                        t.energy -= 10;
                        t.hunger -= 20;
                        t.publicVar[14] -= 5;
                        O();
                        q();
                    }() : t.energy < 10 ? n.playText("Canvas/notify", "精力不足！", 60) : n.playText("Canvas/notify", "饥饿值不足！", 60);
                }
                function E() {
                    a.autoEat();
                    t.energy >= 10 && t.hunger >= 20 ? function () {
                        var e = t.publicVar[14] + t.publicVar[19];
                        if (100 * Math.random() < e) {
                            t.publicVar[17] += 10;
                            n.playText("Canvas/notify", "训练成功！攻击提高1%！“哇！~乌拉————！”。", 60);
                        } else n.playText("Canvas/notify", "训练失败！“哎呦~砸到了脚啦！”。", 60);
                        t.energy -= 10;
                        t.hunger -= 20;
                        t.publicVar[14] -= 5;
                        O();
                        q();
                    }() : t.energy < 10 ? n.playText("Canvas/notify", "精力不足！", 60) : n.playText("Canvas/notify", "饥饿值不足！需20点", 60);
                }
                function I() {
                    var e = 3 * t.publicVar[18] + 40;
                    if (t.money >= e) {
                        t.publicVar[18] += 1;
                        t.money -= e;
                        n.playText("Canvas/notify", "升级成功！最大精力+10（累计增加" + 10 * t.publicVar[18] + "）", 60);
                    } else n.playText("Canvas/notify", "没p值！", 60);
                    G();
                }
                function V() {
                    var e = 2 * t.publicVar[19] + 2;
                    if (t.money >= e) {
                        t.publicVar[19] += 1;
                        t.money -= e;
                        n.playText("Canvas/notify", "升级成功！锻炼成功率永久增加1%（累计增加" + t.publicVar[19] + "%）", 60);
                    } else n.playText("Canvas/notify", "没p值！", 60);
                    G();
                }
                function N() {
                    var e = 1 * t.publicVar[20] + 1;
                    if (t.money >= e) {
                        t.publicVar[20] += 1;
                        t.money -= e;
                        n.playText("Canvas/notify", "升级成功！露西对话成功率永久增加2%（累计增加" + 2 * t.publicVar[20] + "%）", 60);
                    } else n.playText("Canvas/notify", "没p值！", 60);
                    G();
                }
                function T() {
                    a.autoEat();
                    if (0 == t.publicVar2[23]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[23] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.energy >= 10 && t.hunger >= 10) {
                        t.energy -= 10;
                        t.hunger -= 10;
                        t.publicVar2[23] += 1;
                        t.publicVar2[30] += 1;
                        P();
                        z();
                        n.playText("Canvas/notify", "“搜嘎~搜嘎~”。阅历+1！\n（阅历用于提高基础工资）", 60);
                    } else n.playText("Canvas/notify", "状态不好，学不进去！（需10点精力，10点饥饿）", 60);
                }
                function k() {
                    if (0 == t.publicVar2[24]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[24] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.hunger >= 5) {
                        var e = ["【长期负性情绪会导致大脑功能或结构改变】", "【睡眠是一个极为复杂的大脑活动，任何一个环节出现问题，都会导致睡眠障碍】", "【抑郁症发病原因，1/3为自身性格，1/3为客观环境，1/3为遗传】", "【慢性失眠的本质是大脑功能或者结构出现紊乱】", "【户外活动可能能够缓解负性情绪，并帮助大脑功能的缓慢修复】", "【抑郁症终身患病率为8%（中国），女性患病几率为男性两倍】", "【失眠/早醒、食欲下降/体重减轻、头晕头痛/便秘/腰肩酸痛、思想迟缓/易疲劳，可能是抑郁的危险信号】", "【大量随机对照试验证实、认知行为疗法对多种心理疾病有效】", "【接受思想——无条件接受自身缺陷——可能是一种快速治疗的方法】", "【外貌、身高、性取向是父母给的，既不用自卑也无需炫耀】", "【无论你多么「垃圾」，总会存在适合自己的目标，只是极为隐蔽】", "【获得成就感（哪怕只是打扫卫生、起床走走），可能是行为疗法的核心】", "【旅游、美食、打游戏，不能治疗心理问题（即便是用来分散注意，也有限，并且可能导致新的问题）】", "【任何让你感到痛苦的事，都可以找到对应的不合理认知————认知疗法】"], i = e.length, c = parseInt(Math.random() * (i - 1.01)), o = 10 * parseInt(a.maxEnergy() / 20);
                        t.hunger -= 10;
                        t.publicVar2[24] += 10;
                        t.energy += o;
                        P();
                        z();
                        n.playText("Canvas/notify", "精力+" + o + "！" + e[c], 60);
                    } else n.playText("Canvas/notify", "肚子饿了，不想看！（需10点饥饿）", 60);
                }
                function S() {
                    if (0 == t.publicVar2[25]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[25] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.energy >= 10) {
                        t.publicVar2[25] += 1;
                        t.energy -= 10;
                        if (3 == t.publicVar2[25]) {
                            t.publicVar[7] += 6;
                            n.playText("Canvas/notify", "研发出「辣激蘑菇汤」。露西：“咕噜噜~咕噜噜~”。露西好感+6！", 60);
                        } else if (7 == t.publicVar2[25]) {
                            t.role.hp += a.role.maxHp();
                            t.hunger += a.maxHunger();
                            n.playText("Canvas/notify", "研发出「急支糖浆拌饭」。“美滋滋~美滋滋~”。饥饿/残机爆满！", 60);
                        } else if (17 == t.publicVar2[25]) {
                            t.maxHunger += 30;
                            n.playText("Canvas/notify", "研发出「神风牌健胃片」。“嘎吱~嘎吱~”。饥饿值上限提高30点！", 60);
                        } else if (33 == t.publicVar2[25]) {
                            t.maxEnergy += 10;
                            n.playText("Canvas/notify", "研发出「兴奋剂」。“哇~乌拉——！”。精力上限提高10点！", 60);
                        } else if (55 == t.publicVar2[25]) {
                            t.itemNum[11] += 4;
                            n.playText("Canvas/notify", "研发出「私房p值」。获得【神炎的私房p值】*4！", 60);
                        } else if (101 == t.publicVar2[25]) {
                            t.role.att += 30;
                            t.role.def += 15;
                            t.role.maxHp += 150;
                            n.playText("Canvas/notify", "研发出「生长激素」！攻击+40，防御+20，残机+200！（以上属性为永久性增加）", 60);
                        } else n.playText("Canvas/notify", "一脸懵逼，啥也没学会！", 60);
                        P();
                        z();
                    } else n.playText("Canvas/notify", "精力不足（需10点）！", 60);
                }
                function H() {
                    a.autoEat();
                    if (0 == t.publicVar2[26]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[26] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.energy >= 10 && t.hunger >= 10) {
                        var e = parseInt(5 * (2.99 * Math.random() + 1)), i = ["【每日限制红肉摄入（不高于100g）】", "【每日推荐主食摄入量250~400g】", "【每日推荐蔬果摄入量500~850g】", "【每日推荐鱼禽蛋奶摄入量150~250g】", "【每日食盐摄入不超过6g】", "【每日推荐6000步，或等量活动】", "【每周推荐150分钟以上运动】", "【每日饮水不低于1500ml（7杯）】", "【一瓶可乐215大卡（相当于一碗饭或两斤蔬菜的能量）】", "【在各年龄阶段都应避免超重】", "【肥胖，是隐藏在心血管疾病、癌症背后的真凶】", "【中国44%死于心脑血管疾病，22%死于癌症】", "【90%心脑血管疾病可以通过改变生活习惯预防】", "【70%癌症可以通过改变生活习惯预防】", "【对于超重的人，哪怕丢失少量体重，也可使健康获益】", "【在日常生活中额外做些活动，不管强度如何，都将获益】", "【选择全谷类食物而不是精加工食物】", "【学会阅读食品标签】", "【减肥必须运动+饮食，单独一项很难成功（容易反弹）】", "【100g薯片能量相当于两大碗饭，或者跑步一小时】", "【蔬果的健康获益机制主要在于、可以帮助我们减少能量摄入...】", "【健康人补充复合维生素片，并不能使健康获益】", "【没有证据证明补充抗氧化剂可以预防癌症】", "【终身维持健康体重极为重要】"], c = i.length, o = parseInt(Math.random() * (c - 1.01));
                        t.energy -= 10;
                        t.hunger -= 10;
                        t.publicVar2[26] += 2;
                        t.role.maxHp += e;
                        P();
                        z();
                        n.playText("Canvas/notify", "最大残机值提高" + e + "！" + i[o], 60);
                    } else n.playText("Canvas/notify", "状态不够！（需10点精力，10点饥饿）", 60);
                }
                function R() {
                    a.autoEat();
                    if (0 == t.publicVar2[27]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[27] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.energy >= 10 && t.hunger >= 10) {
                        var e = parseInt(2.99 * Math.random() + 1);
                        t.energy -= 10;
                        t.hunger -= 10;
                        t.publicVar2[27] += 2;
                        t.role.def += e;
                        P();
                        z();
                        n.playText("Canvas/notify", "防御提高" + e + "！", 60);
                    } else n.playText("Canvas/notify", "状态不够！（需10点精力，10点饥饿）", 60);
                }
                function w() {
                    a.autoEat();
                    if (0 == t.publicVar2[28]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[28] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.energy >= 10 && t.hunger >= 10) {
                        var e = parseInt(2.99 * Math.random() + 1);
                        t.energy -= 10;
                        t.hunger -= 10;
                        t.publicVar2[28] += 2;
                        t.role.att += e;
                        P();
                        z();
                        n.playText("Canvas/notify", "攻击提高" + e + "！", 60);
                    } else n.playText("Canvas/notify", "状态不够！（需10点精力，10点饥饿）", 60);
                }
                function M() {
                    if (0 == t.publicVar2[29]) n.playText("Canvas/notify", "你还没有获得本书！", 60); else if (t.publicVar2[29] >= 101) n.playText("Canvas/notify", "本书已看完！", 60); else if (t.publicVar3[15] >= 3) n.playText("Canvas/notify", "适当怡情，沉迷伤身呐~", 60); else {
                        t.publicVar2[29] += 5;
                        t.publicVar3[4] += 80;
                        t.publicVar3[15] += 1;
                        t.role.hp = a.role.maxHp();
                        a.save();
                        z();
                        n.playText("Canvas/notify", "脸红耳燥，血脉膨胀。残机值全恢复！攻击+80！（睡觉后加攻状态消失）", 60);
                    }
                }
                function L() {
                    t.publicVar[13] = 0;
                    a.save();
                    cc.director.loadScene("main", function () {
                        e("scr_effect").playText("Canvas/Text/txt_notify", "你已到达月都外围，可以开始探索啦~", 60);
                    });
                }
                function B() {
                    if (t.energy >= 10) {
                        t.publicVar[13] = 1;
                        t.energy -= 10;
                        a.save();
                        cc.director.loadScene("main", function () {
                            e("scr_effect").playText("Canvas/Text/txt_notify", "你已到达玉兔园林，可以开始探索啦~", 60);
                        });
                    } else n.playText("Canvas/notify", "精力不足！", 60);
                }
                function U() {
                    if (t.energy >= 20) {
                        t.publicVar[13] = 2;
                        t.energy -= 20;
                        a.save();
                        cc.director.loadScene("main", function () {
                            e("scr_effect").playText("Canvas/Text/txt_notify", "你已到达市中心，可以开始探索啦~", 60);
                        });
                    } else n.playText("Canvas/notify", "精力不足！", 60);
                }
                function F() {
                    if (t.energy >= 30) {
                        t.publicVar[13] = 3;
                        t.energy -= 30;
                        a.save();
                        cc.director.loadScene("main", function () {
                            e("scr_effect").playText("Canvas/Text/txt_notify", "你已到达山洞，可以开始探索啦~", 60);
                        });
                    } else n.playText("Canvas/notify", "精力不足！", 60);
                }
                function A() {
                    if (t.energy >= 10) if (t.chioce2[7] <= 5) {
                        var e = t.chioce2[7];
                        t.energy -= 10;
                        t.enemyId = [501, 502, 503, 504, 505, 506][e];
                        a.save();
                        cc.director.loadScene("main");
                    } else {
                        t.plotId = 99;
                        a.save();
                        cc.director.loadScene("plot");
                    } else n.playText("Canvas/notify", "精力不足！", 60);
                }
                function D() {
                    if (0 == t.ifFollow[0]) {
                        t.plotId = 99;
                        a.save();
                        cc.director.loadScene("plot");
                    } else 1 == t.ifFollow[0] && n.playText("Canvas/notify", "爱丽丝已成为女主！", 60);
                }
                function P() {
                    cc.find("Canvas/energy").getComponent("cc.Label").string = "精力 " + t.energy;
                }
                function O() {
                    t.publicVar2[17] > 0 ? l.getChildByName("text").getComponent("cc.Label").string = "找露西唠嗑（成功率" + (t.publicVar2[20] + 2 * t.publicVar[20]) + "%）" : l.getChildByName("text").getComponent("cc.Label").string = "？？？？";
                    p.getChildByName("text").getComponent("cc.Label").string = "锻炼（成功率" + (t.publicVar[14] + t.publicVar[19]) + "%）";
                    cc.find("Canvas/energy").getComponent("cc.Label").string = "精力 " + t.energy;
                }
                function q() {
                    cc.find("Canvas/UI2/hunger").getComponent("cc.Label").string = "饥饿 " + t.hunger;
                    cc.find("Canvas/UI2/rate").getComponent("cc.Label").string = "成功率 " + (t.publicVar[14] + t.publicVar[19]) + "%（" + t.publicVar[14] + "%+" + t.publicVar[19] + "%）";
                    cc.find("Canvas/UI2/choice1/text").getComponent("cc.Label").string = "修仙（残机上限+" + (t.publicVar[15] / 10).toFixed(0) + "%）";
                    cc.find("Canvas/UI2/choice2/text").getComponent("cc.Label").string = "第八套广播体操（防御+" + (t.publicVar[16] / 10).toFixed(0) + "%）";
                    cc.find("Canvas/UI2/choice3/text").getComponent("cc.Label").string = "举轮胎（攻击+" + (t.publicVar[17] / 10).toFixed(0) + "%）";
                }
                function G() {
                    cc.find("Canvas/UI3/money").getComponent("cc.Label").string = "p值 " + (t.money / 10).toFixed(1);
                    cc.find("Canvas/UI3/choice1/text").getComponent("cc.Label").string = "居住区（LV" + t.publicVar[18] + " 提升需" + ((3 * t.publicVar[18] + 40) / 10).toFixed(1) + "元）";
                    cc.find("Canvas/UI3/choice2/text").getComponent("cc.Label").string = "运动区（LV" + t.publicVar[19] + " 提升需" + ((2 * t.publicVar[19] + 2) / 10).toFixed(1) + "元）";
                    cc.find("Canvas/UI3/choice3/text").getComponent("cc.Label").string = "流浪猫篷（LV" + t.publicVar[20] + " 提升需" + ((1 * t.publicVar[20] + 1) / 10).toFixed(1) + "元）";
                }
                function z() {
                    var e = r.getChildByName("choice7").getChildByName("text").getComponent("cc.Label"), n = r.getChildByName("choice6").getChildByName("text").getComponent("cc.Label"), a = r.getChildByName("choice5").getChildByName("text").getComponent("cc.Label"), i = r.getChildByName("choice4").getChildByName("text").getComponent("cc.Label"), c = r.getChildByName("choice3").getChildByName("text").getComponent("cc.Label"), o = r.getChildByName("choice2").getChildByName("text").getComponent("cc.Label"), s = r.getChildByName("choice1").getChildByName("text").getComponent("cc.Label");
                    0 == t.publicVar2[23] ? e.string = "？？？？" : e.string = "《搬砖，从开始到暴毙》（已看" + Math.max(t.publicVar2[23] - 1) + "%，阅历" + t.publicVar2[30] + "）";
                    0 == t.publicVar2[24] ? n.string = "？？？？" : n.string = "《神炎的歌声》（已看" + Math.max(t.publicVar2[24] - 1) + "%）";
                    0 == t.publicVar2[25] ? a.string = "？？？？" : a.string = "《儿童手工DIY》（已看" + Math.max(t.publicVar2[25] - 1) + "%）";
                    0 == t.publicVar2[26] ? i.string = "？？？？" : i.string = "《如何吃能更加抗揍》（已看" + Math.max(t.publicVar2[26] - 1) + "%）";
                    0 == t.publicVar2[27] ? c.string = "？？？？" : c.string = "《哲♂学的奥秘》（已看" + Math.max(t.publicVar2[27] - 1) + "%）";
                    0 == t.publicVar2[28] ? o.string = "？？？？" : o.string = "《无面剑豪的秘技》（已看" + Math.max(t.publicVar2[28] - 1) + "%）";
                    0 == t.publicVar2[29] ? s.string = "？？？？" : s.string = "《哲♂学》（已看" + Math.max(t.publicVar2[29] - 1) + "%）";
                    cc.find("Canvas/UI4/hunger").getComponent("cc.Label").string = "饥饿 " + t.hunger;
                }
                function J() {
                    n.playText("Canvas/notify", "暂未满足开启条件！加油吧~", 60);
                }
                function Z() {
                    i.runAction(cc.scaleTo(.3, 0));
                }
                function K() {
                    Q();
                    i.runAction(cc.scaleTo(.3, 1));
                }
                function Q() {
                    cc.find("Canvas/notify").getComponent("cc.Label").string = "";
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_initData: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "c335afOsddDPoVdzNq+7r/A", "scr_initData");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_data2");
                "undefined" == typeof t.itemNum2[18] && (t.itemNum2[18] = 0);
                "undefined" == typeof t.itemNum2[19] && (t.itemNum2[19] = 0);
                "undefined" == typeof t.itemNum2[20] && (t.itemNum2[20] = 0);
                "undefined" == typeof t.itemNum2[21] && (t.itemNum2[21] = 0);
                "undefined" == typeof t.itemNum2[22] && (t.itemNum2[22] = 0);
                "undefined" == typeof t.itemNum2[23] && (t.itemNum2[23] = 0);
                "undefined" == typeof t.itemNum2[24] && (t.itemNum2[24] = 0);
                "undefined" == typeof t.itemNum2[25] && (t.itemNum2[25] = 0);
                "undefined" == typeof t.itemNum2[26] && (t.itemNum2[26] = 0);
                "undefined" == typeof t.itemNum2[27] && (t.itemNum2[27] = 0);
                "undefined" == typeof t.itemNum2[30] && (t.itemNum2[30] = 0);
                "undefined" == typeof t.itemNum2[31] && (t.itemNum2[31] = 0);
                "undefined" == typeof t.itemNum2[32] && (t.itemNum2[32] = 0);
                "undefined" == typeof t.itemNum2[33] && (t.itemNum2[33] = 0);
                "undefined" == typeof t.itemNum2[34] && (t.itemNum2[34] = 0);
                "undefined" == typeof t.itemNum2[35] && (t.itemNum2[35] = 0);
                "undefined" == typeof t.itemNum2[36] && (t.itemNum2[36] = 0);
                "undefined" == typeof t.itemNum2[37] && (t.itemNum2[37] = 0);
                "undefined" == typeof t.itemNum2[38] && (t.itemNum2[38] = 0);
                "undefined" == typeof t.itemNum2[39] && (t.itemNum2[39] = 0);
                "undefined" == typeof t.itemNum2[40] && (t.itemNum2[40] = 0);
                "undefined" == typeof t.itemNum2[41] && (t.itemNum2[41] = 0);
                "undefined" == typeof t.itemNum2[42] && (t.itemNum2[42] = 0);
                "undefined" == typeof t.itemNum2[43] && (t.itemNum2[43] = 0);
                "undefined" == typeof t.itemNum2[44] && (t.itemNum2[44] = 0);
                "undefined" == typeof t.itemNum2[45] && (t.itemNum2[45] = 0);
                "undefined" == typeof t.itemNum2[46] && (t.itemNum2[46] = 0);
                "undefined" == typeof t.itemNum2[47] && (t.itemNum2[47] = 0);
                "undefined" == typeof t.itemNum2[48] && (t.itemNum2[48] = 0);
                "undefined" == typeof t.itemNum2[49] && (t.itemNum2[49] = 0);
                "undefined" == typeof t.itemNum2[50] && (t.itemNum2[50] = 0);
                "undefined" == typeof t.itemNum2[51] && (t.itemNum2[51] = 0);
                "undefined" == typeof t.itemNum2[52] && (t.itemNum2[52] = 0);
                "undefined" == typeof t.itemNum2[53] && (t.itemNum2[53] = 0);
                "undefined" == typeof t.itemNum2[54] && (t.itemNum2[54] = 0);
                "undefined" == typeof t.itemNum2[55] && (t.itemNum2[55] = 0);
                "undefined" == typeof t.itemNum2[56] && (t.itemNum2[56] = 0);
                "undefined" == typeof t.itemNum2[57] && (t.itemNum2[57] = 0);
                "undefined" == typeof t.itemNum2[58] && (t.itemNum2[58] = 0);
                "undefined" == typeof t.itemNum2[59] && (t.itemNum2[59] = 0);
                "undefined" == typeof t.itemNum2[60] && (t.itemNum2[60] = 0);
                "undefined" == typeof t.itemNum2[61] && (t.itemNum2[61] = 0);
                "undefined" == typeof t.itemNum2[62] && (t.itemNum2[62] = 0);
                "undefined" == typeof t.itemNum2[63] && (t.itemNum2[63] = 0);
                "undefined" == typeof t.itemNum2[64] && (t.itemNum2[64] = 0);
                "undefined" == typeof t.itemNum2[65] && (t.itemNum2[65] = 0);
                "undefined" == typeof t.itemNum2[66] && (t.itemNum2[66] = 0);
                "undefined" == typeof t.itemNum2[1000] && (t.itemNum2[1000] = 0);
                "undefined" == typeof t.itemNum2[1001] && (t.itemNum2[1001] = 0);
                "undefined" == typeof t.itemNum2[10086] && (t.itemNum2[10086] = 0);
                "undefined" == typeof t.itemNum2[29] && (t.itemNum2[29] = 0);
                "undefined" == typeof t.ifFollow && (t.ifFollow = [0, 0]);
                "undefined" == typeof t.talkTimes && (t.talkTimes = [0, 0]);
                "undefined" == typeof t.friendSkill1 && (t.friendSkill1 = [1, 0, 0, 0, 0]);
                "undefined" == typeof t.friendSkill2 && (t.friendSkill2 = [1, 0, 0, 0, 0]);
                "undefined" == typeof t.friendSkill && (t.friendSkill = [1, 0, 0, 0, 0, 0, 0, 0]);
                "undefined" == typeof t.choice[6] && (t.choice[6] = 0);
                "undefined" == typeof t.choice[7] && (t.choice[7] = 0);
                "undefined" == typeof t.choice[8] && (t.choice[8] = 0);
                "undefined" == typeof t.chioce2 && (t.chioce2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                "undefined" == typeof t.plotId && (t.plotId = 0);
                "undefined" == typeof t.escapeExp && (t.escapeExp = 0);
                "undefined" == typeof t.randomEvent[11] && (t.randomEvent[11] = 0);
                "undefined" == typeof t.randomEvent[12] && (t.randomEvent[12] = 0);
                "undefined" == typeof t.randomEvent[13] && (t.randomEvent[13] = 0);
                "undefined" == typeof t.publicVar && (t.publicVar = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                "undefined" == typeof t.publicVar2 && (t.publicVar2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                "undefined" == typeof t.publicVar3 && (t.publicVar3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                "undefined" == typeof t.specialEnemy[300001] && (t.specialEnemy[300001] = {
                    lv: 20,
                    hp: 710,
                    maxHp: 710,
                    att: 0,
                    def: 20
                });
                "undefined" == typeof t.specialEnemy[300002] && (t.specialEnemy[300002] = {
                    lv: 45,
                    hp: 2470,
                    maxHp: 2470,
                    att: 0,
                    def: 40
                });
                "undefined" == typeof t.specialEnemy[300003] && (t.specialEnemy[300003] = {
                    lv: 35,
                    hp: 3270,
                    maxHp: 3270,
                    att: 0,
                    def: 0
                });
                "undefined" == typeof t.specialEnemy[400001] && (t.specialEnemy[400001] = {
                    lv: 100,
                    hp: 3345,
                    maxHp: 3345,
                    att: 0,
                    def: 234
                });
                "undefined" == typeof t.specialEnemy[400002] && (t.specialEnemy[400002] = {
                    lv: 199,
                    hp: 19999,
                    maxHp: 19999,
                    att: 0,
                    def: 20
                });
                "undefined" == typeof t.specialEnemy[400003] && (t.specialEnemy[400003] = {
                    lv: 60,
                    hp: 2050,
                    maxHp: 2050,
                    att: 310,
                    def: 121
                });
                "undefined" == typeof t.specialEnemy[900001] && (t.specialEnemy[900001] = {
                    lv: 15,
                    hp: 575,
                    maxHp: 575,
                    att: 59,
                    def: 16
                });
                "undefined" == typeof t.specialEnemy[900002] && (t.specialEnemy[900002] = {
                    lv: 20,
                    hp: 998,
                    maxHp: 998,
                    att: 50,
                    def: 36
                });
                "undefined" == typeof t.specialEnemy[900003] && (t.specialEnemy[900003] = {
                    lv: 500,
                    hp: 16500,
                    maxHp: 16500,
                    att: 1500,
                    def: 1150
                });
                "undefined" == typeof t.specialEnemy[900004] && (t.specialEnemy[900004] = {
                    lv: 1,
                    hp: 999999,
                    maxHp: 999999,
                    att: 999,
                    def: 0
                });
                "undefined" == typeof t.specialEnemy[900005] && (t.specialEnemy[900005] = {
                    lv: 500,
                    hp: 599999,
                    maxHp: 599999,
                    att: 0,
                    def: 0
                });
                "undefined" == typeof t.specialEnemy[900006] && (t.specialEnemy[900006] = {
                    lv: 200,
                    hp: 299999,
                    maxHp: 299999,
                    att: 0,
                    def: 0
                });
                "undefined" == typeof t.specialEnemy[900007] && (t.specialEnemy[900007] = {
                    lv: 40,
                    hp: 3900,
                    maxHp: 3900,
                    att: 90,
                    def: 50
                });
                "undefined" == typeof n.gameData && (n.gameData = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                "undefined" == typeof n.gameData2 && (n.gameData = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2"
    }],
    scr_initGame: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "6ef62YkKgVEPbATA/Rgpij9", "scr_initGame");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_data2"), a = e("scr_public");
                if (0 != n.initMoney) {
                    t.money += n.initMoney;
                    n.initMoney = 0;
                }
                if (n.gameData[2] < 9999) {
                    var i = new Date(), c = parseInt(i.getTime() / 36e5);
                    n.gameData[2] = c;
                }
                n.gameData[3] = 0;
                t.publicVar[6] = 2;
                a.save();
                a.save2();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_public: "scr_public"
    }],
    scr_liveModeMain: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "b3dbdX/PEZG2b06UXyCtd3Z", "scr_liveModeMain");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () { }
        });
        cc._RF.pop();
    }, {}],
    scr_mainUIEvent: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "449f7/pnslKIp1sHAfscrPC", "scr_mainUIEvent");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(1));
                a.color = new cc.Color(144, 199, 255);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 50;
                a.getComponent(cc.Label).fontSize = 40;
            },
            event: function () {
                var t = this, n = e("scr_data"), a = e("scr_public"), i = (e("scr_effect"), parseInt(9 * Math.random() + 1));
                this.randomItemNum = parseInt(7 * Math.random() + 1);
                this.stealMoney = parseInt(10 * Math.random() + 1);
                this.stealRate = parseInt(100 * Math.random());
                var c = [["骑士盾·残", 22, 1, 1], ["希望の花", 23, 1, 1], ["平安福", 25, 1, 1], ["幻想乡缘起", 24, 1, 1], ["爱丽丝手链", 27, 1, 1], ["理信·慎重", 26, 1, 1], ["骑士剑·残", 20, 1, 1], ["贤明·正直", 17, 1, 1], ["提灯小姐姐の胖次", 21, 1, 1]];
                t.drawDiscount = parseInt(9 * Math.random() + 1);
                this.changeItemId2 = parseInt(8.99 * Math.random());
                this.changeItemId3 = parseInt(3.99 * Math.random());
                var o = {
                    1: {
                        text: ["路上发现0.2元p值，是否要捡起来？", "捡", "不捡"],
                        choice1: function () {
                            if (100 * Math.random() < 25) {
                                n.randomEvent[0] += 1;
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(900001);
                            } else {
                                n.money += 2;
                                t.closeUI("获得0.2元！");
                            }
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    2: {
                        text: ["一只纯妈拦住了去路...", "你要怎么做？", "刚正面！", "和纯狐一起找找？"],
                        choice1: function () {
                            n.publicVar2[12] += 1;
                            t.closeUI();
                            cc.find("Canvas/Button").stopAllActions();
                            cc.find("Event/scr_fight").getComponent("scr_fight").fight(200001);
                        },
                        choice2: function () {
                            if (n.energy >= 80) {
                                var e = 100 * Math.random(), a = 100;
                                n.energy -= 80;
                                if (e < a) {
                                    (function () {
                                        var e = 100 * Math.random();
                                        if (e <= 10) {
                                            n.hunger += 300;
                                            n.itemNum2[10086] += 1;
                                            t.closeUI("没找到嫦娥，一路奔波，精力减80，纯狐好感度＋1，纯狐看你这么辛苦，给了你一个「茨木华扇的头饰？」好吃！饥饿+300");
                                        }
                                        if (e > 10 && e <= 20) {
                                            n.money += 10;
                                            n.itemNum2[10086] += 1;
                                            n.maxEnergy += 5;
                                            t.closeUI("没找到嫦娥，一路奔波，精力减80，但是锻炼了身体，精力上限+5，纯狐好感度＋1");
                                        }
                                        if (e > 20 && e <= 80) {
                                            n.itemNum2[10086] += 1;
                                            t.closeUI("没找到嫦娥，一路奔波，精力减80，纯狐好感度＋1");
                                        }
                                        if (e > 80 && e <= 90) {
                                            n.itemNum2[10086] += 1;
                                            n.itemNum2[65] += 1;
                                            t.closeUI("没找到嫦娥，找寻的路上意外捡到一颗「圣星石」，精力减80，纯狐好感度＋1");
                                        }
                                        if (e > 90 && e <= 95) {
                                            n.itemNum[8] += 10;
                                            n.itemNum2[10086] += 1;
                                            t.closeUI("没找到嫦娥，一路奔波，精力减80，纯狐好感度＋1，纯狐送了你一个盒子，打开一看，得到「黑曜石」*10");
                                        }
                                        if (e > 95) {
                                            n.itemNum2[10] += 1;
                                            n.itemNum2[10086] += 1;
                                            t.closeUI("没找到嫦娥，一路奔波，精力减80，纯狐好感度＋1，纯狐送了你一个盒子，打开一看，得到「暗影之剑」*1");
                                        }
                                    })();
                                } else {
                                    t.closeUI("阿巴阿巴");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没精力！";
                        }
                    },
                    3: {
                        text: ["“收急支糖浆惹~”，一位小贩喊道，是否过去瞄瞄？", "瞄瞄", "算了"],
                        choice1: function () {
                            cc.director.loadScene("shop4");
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还！）");
                        }
                    },
                    4: {
                        text: ["p值被贼抢啦！", "是否要追赶？", "追！", "算了..."],
                        choice1: function () {
                            var e = [810, 811, 812, 813, 814, 815, 816][n.randomEvent[10]];
                            n.publicVar2[0] += 1;
                            if ("undefined" == typeof e) {
                                n.money += 5;
                                t.closeUI("劫匪见你追来，吓晕了过去！你从身上搜得5毛p值！");
                            } else {
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(e);
                            }
                        },
                        choice2: function () {
                            n.publicVar2[0] += 1;
                            var e = 1 + n.randomEvent[3];
                            e > 3 && (e = 3);
                            n.money <= 0 && (e = 0);
                            n.money -= e;
                            n.money < 0 && (n.money = 0);
                            t.closeUI("损失" + (e / 10).toFixed(1) + "元");
                        }
                    },
                    5: {
                        text: ["前边一个大妖精，" + (this.stealMoney / 10).toFixed(1) + "元p值露出了裤袋，", "然鹅他似乎并没有觉察。是否顺走？", "顺走！活命要紧（成功率" + this.stealRate.toFixed(1) + "%）", "算了！名声要紧"],
                        choice1: function () {
                            if (100 * Math.random() < t.stealRate) {
                                n.money += t.stealMoney;
                                n.publicVar[0] += 10;
                                t.closeUI("偷窃成功！获得" + (t.stealMoney / 10).toFixed(1) + "元。罪恶+10（累计" + n.publicVar[0] + "，高罪恶值会导致失眠）");
                            } else {
                                n.role.hp = 1;
                                n.achieve -= 5;
                                t.closeUI("偷窃失败！你被吃瓜群众一顿狂殴，损失全部残机！声望减5！");
                            }
                            t.stealMoney = parseInt(10 * Math.random() + 1);
                            t.stealRate = parseInt(100 * Math.random());
                        },
                        choice2: function () {
                            t.stealMoney = parseInt(10 * Math.random() + 1);
                            t.stealRate = parseInt(100 * Math.random());
                            t.closeUI();
                        }
                    },
                    6: {
                        text: ["发现一个垃圾箱！", "是否开启？", "是", "算了"],
                        choice1: function () {
                            if (100 * Math.random() < 75) (function () {
                                var e = 100 * Math.random();
                                if (e <= 20) {
                                    var i = 5 * parseInt(a.maxHunger() / 10);
                                    n.hunger += i;
                                    t.closeUI("找到一些剩饭！饥饿恢复50%（" + i + "点）！");
                                }
                                if (e > 20) {
                                    var c = parseInt(1.9 * Math.random() + 1);
                                    n.itemNum2[1] += c;
                                    t.closeUI("找到一些急支糖浆！获得【急支糖浆】*" + c);
                                }
                            })(); else {
                                n.publicVar2[13] += 1;
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(900002);
                            }
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    7: {
                        text: ["提灯小姐姐摔倒了，", "是否打劫？", "打劫", "算了"],
                        choice1: function () {
                            n.randomEvent[6] += 1;
                            if (20 == n.randomEvent[6]) {
                                n.randomEvent[1] += 1;
                                t.closeUI("提灯小姐姐送给你一个「恶人卡」，你获得「恶人卡」*1");
                            } else {
                                if (100 * Math.random() <= 35) {
                                    n.publicVar2[5] += 1;
                                    if (n.money > 0) {
                                        n.money += 5;
                                        t.closeUI("你打劫成功了，得到0.5p！");
                                    } else t.closeUI("你没打劫到p值！！！");
                                } else {
                                    var e = 100 * Math.random();
                                    n.publicVar[0] -= 1;
                                    if (e <= 60) {
                                        n.itemNum[0] += 3;
                                        t.closeUI("提灯小姐姐瑟瑟发抖，提灯小姐姐给你【土块】*3，罪恶值减1（你目前罪恶" + n.publicVar[0] + "）");
                                    }
                                    if (e > 70 && e <= 80) {
                                        n.itemNum2[21] += 1;
                                        t.closeUI("提灯小姐姐瑟瑟发抖，提灯小姐姐给你【提灯小姐姐の胖次】*1，罪恶值减1（你目前罪恶" + n.publicVar[0] + "）");
                                    }
                                    if (e > 80) {
                                        n.itemNum[4] += 5;
                                        t.closeUI("提灯小姐姐瑟瑟发抖，提灯小姐姐给你【探女の羽毛】*5，罪恶值减1（你目前罪恶" + n.publicVar[0] + "）");
                                    }
                                }
                            }
                        },
                        choice2: function () {
                            t.closeUI("我要做个好人");
                        }
                    },
                    8: {
                        text: ["发现一个乘凉的神社", "小憩（精力+20）", "疗伤（残机全恢复）"],
                        choice1: function () {
                            n.energy += 20;
                            t.closeUI("精力恢复20点！");
                        },
                        choice2: function () {
                            n.role.hp += parseInt(a.role.maxHp());
                            t.closeUI("恢复全部残机值！");
                        }
                    },
                    9: {
                        text: ["“一个雷鼓对你说：小伙子，我看你印堂发黑，一看就是老网瘾，", "要不要来发电疗？酥酥麻麻的，很虚服哦~”", "来一发!（5毛，成功率" + Math.max(100 - 4 * n.orderTimes[3], 20) + "%）", "滚滚滚！"],
                        choice1: function () {
                            if (n.money >= 5) {
                                var e = 100 * Math.random(), a = Math.max(100 - 4 * n.orderTimes[3], 20);
                                n.money -= 5;
                                if (e < a) {
                                    n.orderTimes[4] += 1;
                                    n.orderTimes[3] += 1;
                                    t.closeUI("电疗成功！网瘾减少1%");
                                } else {
                                    n.role.hp = 1;
                                    t.closeUI("电疗失败！你损失全部残机！");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！( ¯▽¯；)";
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还！）");
                        }
                    },
                    10: {
                        text: ["“收电池喽~", c[t.changeItemId2][3] + "个电池换" + c[t.changeItemId2][2] + "个「" + c[t.changeItemId2][0] + "」”", "换换换！", "没电池(｀_´)"],
                        choice1: function () {
                            var e = c[t.changeItemId2][3];
                            if (n.itemNum2[7] >= e) {
                                var a = t.changeItemId2, i = c[a];
                                n.itemNum2[7] -= e;
                                n.itemNum2[i[1]] += i[2];
                                t.closeUI("获得【" + i[0] + "】*" + i[2] + "！");
                                t.changeItemId2 = parseInt(5.99 * Math.random());
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "确实没电池！( ¯▽¯；)";
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.changeItemId2 = parseInt(4.99 * Math.random());
                            t.closeUI("精力+10（消耗返还！）");
                        }
                    },
                    1001: {
                        text: ["一个旋转的转转，不小心把你擦了一下！", "你要怎么处理？", "要她肉偿！", "要她赔急支糖浆！"],
                        choice1: function () {
                            n.itemNum[3] += 1;
                            t.closeUI("转转扔给你一个生土之后就转着逃跑了，获得【生土】*1！");
                        },
                        choice2: function () {
                            n.itemNum2[1] += 1;
                            t.closeUI("获得【急支糖浆】*1！");
                        }
                    },
                    1002: {
                        text: ["前边出现两条路：", "右边是树林，左边是草地", "你走那边?", "树林", "草地"],
                        choice1: function () {
                            n.itemNum[1] += 2;
                            n.itemNum[4] += 2;
                            t.closeUI("获得【绯想碎片】*2【探女の羽毛】*2！");
                        },
                        choice2: function () {
                            n.itemNum[0] += 2;
                            n.itemNum[5] += 2;
                            t.closeUI("获得【土块】*2【艾草】*2！");
                        }
                    },
                    1003: {
                        text: ["灵梦正在吃棒棒糖...", "抢了赶紧溜！", "继续赶路"],
                        choice1: function () {
                            if (100 * Math.random() < 25) {
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(904);
                            } else {
                                e("scr_data").hunger += 40;
                                t.closeUI("恢复40点饥饿！");
                            }
                        },
                        choice2: function () {
                            t.closeUI("你拍了拍肚皮，继续赶路");
                        }
                    },
                    1004: {
                        text: ["你被一只阿吽穷追不舍，", "你要怎么做？", "正面刚！", "丢个土块？！"],
                        choice1: function () {
                            t.closeUI();
                            cc.find("Canvas/Button").stopAllActions();
                            cc.find("Event/scr_fight").getComponent("scr_fight").fight(903);
                        },
                        choice2: function () {
                            if (n.itemNum[0] >= 1) {
                                n.itemNum[0] -= 1;
                                t.closeUI("你丢了一个土块，阿吽高兴的捡土块去啦！");
                            } else cc.find("Canvas/Event/Choice/Choice2/choiceText").getComponent("cc.Label").string = "土块不够！( ¯▽¯；)";
                        }
                    },
                    2001: {
                        text: ["路上发现10毛p值！捡不捡？", "捡", "不捡"],
                        choice1: function () {
                            t.closeUI();
                            cc.find("Canvas/Button").stopAllActions();
                            cc.find("Event/scr_fight").getComponent("scr_fight").fight(907);
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    2002: {
                        text: ["覺、咲夜、永琳在树底下押宝，", "是否去试下手气？", "试", "不试"],
                        choice1: function () {
                            var n = e("scr_data");
                            if (n.money > 0) {
                                var a = 100 * Math.random(), i = Math.min(n.money, 100);
                                if (a < 45) {
                                    n.money += i;
                                    t.closeUI("手气不错，p值翻倍！");
                                } else {
                                    n.money = 0;
                                    t.closeUI("你输光了所有的p值！");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice2/choiceText").getComponent("cc.Label").string = "没p值！( ¯▽¯；)";
                        },
                        choice2: function () {
                            t.closeUI("");
                        }
                    },
                    2003: {
                        text: ["“好消息，好消息！本香霖堂即将拆迁，全场大抽奖", "每件" + i + "毛！件件" + i + "毛！", "抽不抽没关系，进来看一哈，瞧一哈。”", "路边一小贩拿着大喇叭喊道。", "试一试手气", "路过~"],
                        choice1: function () {
                            if (n.money >= i) {
                                var e = 100 * Math.random();
                                n.money -= i;
                                if (e <= 30) {
                                    n.itemNum2[1] += 1;
                                    t.closeUI("获得【急支糖浆】*1");
                                }
                                if (e > 30 && e <= 55) {
                                    n.itemNum2[12] += 1;
                                    t.closeUI("获得【皮⑨】*1");
                                }
                                if (e > 55 && e <= 80) {
                                    n.itemNum2[0] += 1;
                                    t.closeUI("获得【高级土】*1");
                                }
                                if (e > 80 && e <= 95) {
                                    n.itemNum2[22] += 1;
                                    t.closeUI("获得【骑士盾·残】*1");
                                }
                                if (e > 95 && e <= 100) {
                                    n.itemNum2[25] += 5;
                                    t.closeUI("抽中大奖获得【平安福】*5");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！( ¯▽¯；)";
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    2004: {
                        text: ["一位蓝色头发，衣服上全是补丁的女子，", "身旁立着一把寒光凛冽的黑色太刀", "地上一张白布上写道，", "“没p值吃饭，妹妹混蛋，现出售传家之宝，售价" + (n.randomEvent[7] / 10).toFixed(1) + "！”", "买了", "溜了溜了~"],
                        choice1: function () {
                            if (n.money >= n.randomEvent[7]) {
                                n.money -= n.randomEvent[7];
                                n.itemNum2[10] += 1;
                                n.choice[4] += 1;
                                t.closeUI("获得【暗影之剑】！");
                                n.randomEvent[7] = 99 + 100 * n.choice[4];
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！( ¯▽¯；)";
                        },
                        choice2: function () {
                            n.randomEvent[7] -= 10;
                            n.randomEvent[7] <= 59 && (n.randomEvent[7] = 59);
                            t.closeUI();
                        }
                    },
                    2005: {
                        text: ["发现一份当提灯女仆（LV.1）的零工，", "是否去试试？", "是（需20饥饿,成功率" + Math.min(70 + n.workExp, 100) + "%）", "算了"],
                        action: function () {
                            cc.find("Canvas/Event/Choice/label").getComponent("cc.Label").string = "【提示】如果饥饿不足，系统将自动使用食物哦^_^";
                        },
                        choice1: function () {
                            var a = e("scr_public");
                            s();
                            if (n.hunger >= 0) {
                                var i = n.workExp, c = 100 * Math.random(), o = 70 + i;
                                n.hunger -= 20;
                                a.autoEat();
                                if (c < o) {
                                    n.money += 4;
                                    n.workExp += 1;
                                    t.closeUI("提灯对你很满意，面试经验+1！\n获得" + .4.toFixed(1) + "元！");
                                } else {
                                    n.publicVar2[9] += 1;
                                    n.workExp += 1;
                                    t.closeUI("面试经验+1\n【“不好意思，我们可不敢乱用没身份证的小孩，你还是去找找其他工作吧”】");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "饥饿值不足！";
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    2006: {
                        text: ["发现一份做提灯高数老师（LV.2）的临时工，", "是否去试试？", "是（需20饥饿,成功率" + Math.min(20 + n.workExp, 100) + "%）", "算了"],
                        action: function () {
                            cc.find("Canvas/Event/Choice/label").getComponent("cc.Label").string = "【提示】如果饥饿不足，系统将自动使用食物哦^_^";
                        },
                        choice1: function () {
                            var a = e("scr_public");
                            s();
                            if (n.hunger >= 20) {
                                var i = n.workExp, c = 100 * Math.random(), o = 20 + i;
                                n.hunger -= 20;
                                a.autoEat();
                                if (c < o) {
                                    n.money += 6;
                                    n.workExp += 1;
                                    t.closeUI("提灯对你很满意，面试经验+1！获得" + .6.toFixed(1) + "元！");
                                } else {
                                    n.publicVar2[9] += 1;
                                    n.workExp += 1;
                                    t.closeUI("“面试经验+1\n【“你太内向，对别人评价又很敏感；\n我不建议你做这种需要频繁和各种人、打交道的工作，\n你还是找点体力活做做吧。”】");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "饥饿值不足！";
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    3001: {
                        text: ["远处有一个商店", "过去看看", "算啦，太累，还不如小睡一下呢"],
                        choice1: function () {
                            cc.director.loadScene("shop");
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10");
                        }
                    },
                    3002: {
                        text: [Math.min(n.randomEvent[5] + 1, 7) + "只流浪狗，眼巴巴的看着你，", "是否给点【土块？】？", "给！（需土块*" + Math.min(n.randomEvent[5] + 1, 7) + ")", "不给！"],
                        choice1: function () {
                            var e = Math.min(n.randomEvent[5] + 1, 7);
                            if (n.itemNum[0] >= e) {
                                var a = Math.max(Math.round(e / 2), 1);
                                n.randomEvent[5] += 1;
                                n.publicVar[0] -= a;
                                n.itemNum[0] -= e;
                                if (3 == n.randomEvent[5]) {
                                    n.itemNum2[26] += 1;
                                    t.closeUI("流浪狗把你带到一个地方，你找到一个「理信·慎重」。罪恶值减" + a + "（你目前罪恶" + n.publicVar[0] + "）");
                                } else if (7 == n.randomEvent[5]) {
                                    n.itemNum2[8] += 1;
                                    t.closeUI("流浪狗把你带到一堆白骨前，你找到一个「八卦炉」。罪恶值减" + a + "（你目前罪恶" + n.publicVar[0] + "）");
                                } else if (10 == n.randomEvent[5]) {
                                    n.randomEvent[1] += 1;
                                    t.closeUI("流浪狗送了你一张「恶人卡」（用于解锁特殊剧情）！罪恶值减" + a + "（你目前罪恶" + n.publicVar[0] + "）");
                                } else t.closeUI("流浪狗似乎从来没吃过这么好吃的东西...罪恶值减" + a + "（你目前罪恶" + n.publicVar[0] + "）");
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "道具不足！";
                        },
                        choice2: function () {
                            t.closeUI("你把流浪狗轰走了");
                        }
                    },
                    3003: {
                        text: ["前边有两条路，", "左边大道看起来很好走，", "右边小路看起来很危险！", "你走哪边?", "左边", "右边"],
                        choice1: function () {
                            n.itemNum[1] += 2;
                            n.itemNum[0] += 3;
                            t.closeUI("获得【绯想碎片】*2【土块】*3！");
                        },
                        choice2: function () {
                            n.enemyId = 300002;
                            t.closeUI();
                            cc.find("Canvas/Button").stopAllActions();
                            cc.find("Event/scr_fight").getComponent("scr_fight").fight(300002);
                        }
                    },
                    3004: {
                        text: ["“有奖套圈喽，", "小伙要不要试下手气，一个赤蛮奇对你说", "2毛一次！", "试试", "溜了溜了"],
                        choice1: function () {
                            if (n.money >= 2) {
                                var e = 100 * Math.random(), a = 20 + 10 * n.randomEvent[12];
                                n.money -= 2;
                                if (e < a) {
                                    n.randomEvent[12] += 1;
                                    (function () {
                                        var e = 100 * Math.random();
                                        if (e <= 40) {
                                            n.itemNum[0] += 5;
                                            t.closeUI("获得【土块】*4，扔圈熟练度+1");
                                        }
                                        if (e > 40 && e <= 50) {
                                            n.money += 10;
                                            t.closeUI("获得【1元】大奖！扔圈熟练度+1");
                                        }
                                        if (e > 50 && e <= 70) {
                                            n.itemNum2[12] += 1;
                                            t.closeUI("获得【皮⑨】*1，扔圈熟练度+1");
                                        }
                                        if (e > 70 && e <= 90) {
                                            n.itemNum2[7] += 1;
                                            t.closeUI("获得【电池】*1，扔圈熟练度+1");
                                        }
                                        if (e > 90 && e <= 95) {
                                            n.itemNum2[27] += 1;
                                            t.closeUI("获得【爱丽丝手链】*1，扔圈熟练度+1");
                                        }
                                        if (e > 95) {
                                            n.itemNum2[21] += 1;
                                            t.closeUI("获得【提灯小姐姐の胖次】*1，扔圈熟练度+1");
                                        }
                                    })();
                                } else {
                                    n.randomEvent[12] += 1;
                                    t.closeUI("你扔空了，啥也没圈到，扔圈熟练度+1");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！";
                        },
                        choice2: function () {
                            t.closeUI("");
                        }
                    },
                    3005: {
                        text: ["“地球人，", "你若能让我砍一刀，我就给你" + (2 * n.randomEvent[13] + 2) + "毛p值”", "一个赫卡提亚拉着你说道", "行，来呀！", "啊！！！我呸！"],
                        choice1: function () {
                            t.closeUI();
                            cc.find("Canvas/Button").stopAllActions();
                            cc.find("Event/scr_fight").getComponent("scr_fight").fight(900);
                        },
                        choice2: function () {
                            n.randomEvent[13] += 1;
                            t.closeUI("");
                        }
                    },
                    3006: {
                        text: ["前边有俩村子，", "东边辉夜和妹红结婚锣鼓喧天，鞭炮齐鸣;", "西边桂姬家被城管拆哭天喊地，神号鬼泣！", "你去哪边?", "东边", "西边"],
                        choice1: function () {
                            var e = 100 * Math.random();
                            if (e < 90) {
                                n.money += 3;
                                t.closeUI("抢到【0.3元】红包！");
                            }
                            if (e >= 90) {
                                n.money += 13;
                                t.closeUI("抢到【1.3元】红包！");
                            }
                        },
                        choice2: function () {
                            n.itemNum2[0] += 2;
                            t.closeUI("获得【高级土】*2！");
                        }
                    },
                    3007: {
                        text: ["发现一个可疑的宝箱，", "是否打开？", "是（需30饥饿,成功率" + (40 + 3 * n.randomEvent[11]) + "%）", "算了"],
                        choice1: function () {
                            var a = e("scr_public");
                            s();
                            if (n.hunger >= 20) {
                                var i = 100 * Math.random(), c = 40 + 3 * n.randomEvent[11];
                                n.hunger -= 30;
                                a.autoEat();
                                n.randomEvent[11] += 1;
                                i < c ? function () {
                                    var e = 100 * Math.random();
                                    if (e < 20) {
                                        n.itemNum[8] += 1;
                                        t.closeUI("得到【黑曜石】*1");
                                    } else if (e < 60) {
                                        n.itemNum[9] += 2;
                                        t.closeUI("打开一看，发现【神械残骸】*2");
                                    } else if (e < 63) {
                                        n.itemNum2[17] += 1;
                                        t.closeUI("打开一看，发现【贤明·正直】*1");
                                    } else if (e < 100) {
                                        var a = parseInt(5 * Math.random() + 1);
                                        n.money += a;
                                        t.closeUI("得到一些硬币，获得" + (a / 10).toFixed(1) + "元！");
                                    }
                                }() : t.closeUI("忙活半天，没打开，撬锁技术+1");
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "饥饿值不够！";
                        },
                        choice2: function () {
                            t.closeUI("");
                        }
                    },
                    4001: {
                        text: ["一位蓝色头发，衣服上全是补丁的女子，", "在地上写道，", "“没p值吃饭，妹妹混蛋，输光所有捐款，欠下万元巨债，现出售绝世武学一本，只要" + (Math.max(parseInt(n.day + n.publicVar2[28] * n.publicVar3[19] - 40), 29) / 10).toFixed(1) + "元，活动特价，仅此一本！”", "哇~活动价~赶紧买！", "......"],
                        choice1: function () {
                            var e = Math.max(parseInt(n.day + n.publicVar2[28] * n.publicVar3[19] - 40), 29);
                            if (n.money >= e) {
                                n.money -= e;
                                n.publicVar2[28] = 1;
                                n.publicVar3[19] += 1;
                                t.closeUI("获得《无面剑豪的秘技》！请到看书界面使用。如果再次购买此书，此书使用次数将重置，但贼贵！");
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！( ¯▽¯；)";
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力恢复10点（消耗返还！）");
                        }
                    },
                    4002: {
                        text: ["“兄弟，这儿有市场上买不到的东西，要不要过来看看？”", "过去看看", "算了~"],
                        choice1: function () {
                            cc.director.loadScene("shop2");
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还！）");
                        }
                    },
                    4003: {
                        text: ["博丽灵梦在招免费的仆人来干博丽神社的事务", "是（需100饥饿）", "算了"],
                        action: function () {
                            cc.find("Canvas/Event/Choice/label").getComponent("cc.Label").string = "【提示】如果饥饿不足，系统将自动使用食物哦^_^";
                        },
                        choice1: function () {
                            var a = e("scr_public");
                            s();
                            if (n.hunger >= 0) {
                                var i = parseInt(1 + n.publicVar2[30] / 50);
                                n.money += i;
                                n.hunger -= 100;
                                n.itemNum2[5] += 1;
                                n.itemNum[8] += 1;
                                a.autoEat();
                                t.closeUI("博丽灵梦送了你一个之前小老帝送的玩偶，得到「小老帝玩偶」*1，你干完活之后意外捡到一个黑曜石，得到黑曜石*1，获得报酬" + (i / 10).toFixed(1) + "元");
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "饥饿值不足！";
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    4004: {
                        text: ["碰到一位卖烧烤的小碎骨，是否买点尝尝？", "买（2毛）", "算了"],
                        choice1: function () {
                            if (n.money >= 2) {
                                var e = Math.min(3 * n.chioce2[4], 50), a = 100 * Math.random();
                                n.money -= 2;
                                if (a < e) {
                                    n.chioce2[4] += 1;
                                    n.hunger += 100;
                                    t.closeUI("“谢谢惠顾~”，小碎骨看你是熟客额外送了你一份，饥饿+100！");
                                } else {
                                    n.chioce2[4] += 1;
                                    n.hunger += 50;
                                    t.closeUI("香喷喷的烤串，饥饿+50");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！";
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    4005: {
                        text: ["路上发现" + t.randomItemNum + "个踩扁的p点，四周无人，捡不捡？", "捡", "不捡"],
                        choice1: function () {
                            if (100 * Math.random() < 50) {
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                n.enemyId = 900007;
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(900007);
                            } else {
                                n.itemNum[2] += t.randomItemNum;
                                t.closeUI("获得" + t.randomItemNum + "个p点！");
                            }
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    7001: {
                        text: ["又逛到那个可疑的地方，是否接着挖？", "是（需30饥饿，当前深度" + n.chioce2[3] + "）", "算了，留着肚子干点别的"],
                        choice1: function () {
                            var a = e("scr_public");
                            i();
                            i();
                            if (n.hunger >= 30) {
                                n.hunger -= 30;
                                a.autoEat();
                                n.chioce2[3] += 1;
                                (function () {
                                    var e = n.chioce2[3];
                                    if (2 == e) {
                                        n.money += 4;
                                        t.closeUI("挖到两枚银币，获得0.4元！");
                                    } else if (6 == e) {
                                        n.itemNum[8] += 2;
                                        t.closeUI("挖到两个黑色石头，获得【黑曜石】*2");
                                    } else if (12 == e) {
                                        n.itemNum2[26] += 2;
                                        t.closeUI("挖到两个理信·慎重，获得【理信·慎重】*2");
                                    } else if (20 == e) {
                                        n.itemNum[9] += 6;
                                        t.closeUI("挖到出一个宝箱，打开一看，发现神械残骸，获得【神械残骸】*6！");
                                    } else if (32 == e) {
                                        n.itemNum2[27] += 2;
                                        t.closeUI("挖到出一个宝箱，打开一看，发现爱丽丝手链，获得【爱丽丝手链】*2！");
                                    } else if (50 == e) {
                                        n.itemNum[8] += 10;
                                        t.closeUI("挖到大量黑色石头，获得【黑曜石】*10！！！");
                                    } else t.closeUI("啥也没挖到！");
                                })();
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "你怕是会晕死在洞底哦~";
                            function i() {
                                var t = e("scr_data");
                                if (t.hunger <= 30) if (t.itemNum2[0] >= 1) {
                                    t.itemNum2[0] -= 1;
                                    t.orderTimes[2] += 1;
                                    t.hunger += 80;
                                } else if (t.itemNum[0] >= 1) {
                                    t.itemNum[0] -= 1;
                                    t.orderTimes[5] += 1;
                                    t.hunger += 20;
                                }
                            }
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还！）");
                        }
                    },
                    7002: {
                        text: ["“我的梦想是成为天下第一科学家，所以能请你帮个忙个么？”，一个年轻河童真诚的问道。", "可以呀（报酬0.5元，但有风险）", "...我是sb？"],
                        choice1: function () {
                            var e = 100 * Math.random(), a = Math.min(20 + 5 * n.chioce2[5], 60);
                            n.chioce2[5] += 1;
                            if (e < a) {
                                n.money += 5;
                                t.closeUI("“走你！...蛤蛤！完美！”。获得0.5元报酬，河童科学技术提升！");
                            } else {
                                n.money += 10;
                                n.role.hp = 1;
                                n.health -= 3;
                                t.closeUI("“走你！...哎呀！不好意思，手滑了下...多给你5毛，拿去买些急支糖浆吧~”。残机全损失，健康-3，获得1元报酬，河童科学技术提升！");
                            }
                        },
                        choice2: function () {
                            n.chioce2[5] -= 1;
                            t.closeUI("由于河童迟迟没有训练，所以科学技术退化了...");
                        }
                    },
                    7003: {
                        text: ["你碰到" + parseInt(n.specialEnemy[400003].lv / 20) + "级的影狼，要怎么做？", "干！", "丢块生土..."],
                        choice1: function () {
                            t.closeUI();
                            cc.find("Canvas/Button").stopAllActions();
                            cc.find("Event/scr_fight").getComponent("scr_fight").fight(400003);
                        },
                        choice2: function () {
                            if (n.itemNum[3] >= 1) {
                                n.itemNum[3] -= 1;
                                t.closeUI("丢块生土，赶紧溜~(ง˙o˙)ว");
                            } else cc.find("Canvas/Event/Choice/Choice2/choiceText").getComponent("cc.Label").string = "没生土！( ¯▽¯；)";
                        }
                    },
                    7004: {
                        text: ["路过一片小河环绕的小树林，是弄点吃的还是捡点材料呢？", "弄吃的", "弄材料"],
                        choice1: function () {
                            var e = parseInt(4 * Math.random() + 1), a = parseInt(3 * Math.random() + 1);
                            n.itemNum[0] += e;
                            n.itemNum[3] += a;
                            t.closeUI("获得【土块】*" + e + "【生土】*" + a + "！");
                        },
                        choice2: function () {
                            var e = parseInt(4 * Math.random() + 1), a = parseInt(4 * Math.random() + 1);
                            n.itemNum[1] += e;
                            n.itemNum[4] += a;
                            t.closeUI("获得【绯想碎片】*" + e + "【探女の羽毛】*" + a + "！");
                        }
                    },
                    7005: {
                        text: ["“在下稀神探女，要不要来抽个话呀？现在月都搞活动，限时折扣价！咋样？”", "好呀（" + t.drawDiscount + "折，" + t.drawDiscount + "毛p值）", "你个奸商！"],
                        choice1: function () {
                            var e = t.drawDiscount;
                            if (n.money >= e) {
                                n.money -= e;
                                var a = 100 * Math.random();
                                if (a < 25) {
                                    n.publicVar3[9] += 30;
                                    t.closeUI("“嗯~今天你不容易捡到东西哟~”（再次获得道具几率+30%，持续1天）”");
                                } else if (a < 35) {
                                    n.publicVar3[4] += 99;
                                    t.closeUI("“嗯~今天不适合怼！怼！怼！~”（攻击+99，持续1天）”");
                                } else if (a < 45) {
                                    n.publicVar3[4] -= 990;
                                    t.closeUI("“嗯~今天最适合怼！怼！怼！~”（攻击-990，持续1天）”");
                                } else if (a < 55) {
                                    n.publicVar3[10] -= 990;
                                    t.closeUI("“嗯~今天最适合冈！冈！冈！~”（防御-990，持续1天）”");
                                } else if (a < 65) {
                                    n.publicVar3[10] += 99;
                                    t.closeUI("“嗯~今天不适合冈！冈！冈！~”（防御+99，持续1天）”");
                                } else {
                                    n.publicVar3[11] += 100;
                                    t.closeUI("“嗯~今天不适合装逼呢~”（逃跑率+100%，持续1天）”");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "“没p值！”";
                        },
                        choice2: function () {
                            if (100 * Math.random() < 10) {
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(2666);
                            } else {
                                n.itemNum[4] += 7;
                                t.closeUI("你拿着刀追着探女砍，虽然一刀也没有砍到，但是捡到了探女掉的羽毛，得到「探女的羽毛」*7");
                            }
                        }
                    },
                    8001: {
                        text: ["夜雀食堂在装修，要不要去帮忙呢", "帮（需40饥饿）", "算了"],
                        action: function () {
                            cc.find("Canvas/Event/Choice/label").getComponent("cc.Label").string = "【提示】如果饥饿不足，系统将自动使用食物哦^_^";
                        },
                        choice1: function () {
                            var a = e("scr_public");
                            s();
                            if (n.hunger >= 0) {
                                var i = parseInt(5 + n.publicVar2[30] / 15);
                                n.money += i;
                                n.hunger += 60;
                                n.health += 2;
                                n.energy -= 10;
                                a.autoEat();
                                t.closeUI("小碎骨看你这么卖力~请你吃了一顿「炸炊」，饥饿回复100，健康加2！由于吃了顿饭，精力减少10，获得报酬" + (i / 10).toFixed(1) + "元");
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "饥饿值不足！";
                        },
                        choice2: function () {
                            t.closeUI();
                        }
                    },
                    8002: {
                        text: ["一位绿色头发、外表清纯，手里拿着「断罪」的妹子，抱膝而坐，身旁几个清秀的粉笔字，“旅游至此，p值包手机被偷，求" + (2 + 2 * n.chioce2[6]) + "毛路费回家...”", "被骗了也值！给！", "这么可爱的妹子应该很温柔吧（靠近）~"],
                        choice1: function () {
                            var e = 2 + 2 * n.chioce2[6];
                            if (n.chioce2[6] > 10) {
                                var i = a.role.maxHp();
                                n.role.hp += parseInt(.5 * i);
                                n.role.hp > i && (n.role.hp = i);
                                n.energy += 20;
                                t.closeUI("妹子拒绝接受你的p值...并帮你清理伤口，得到了一个妹子的吻，面红耳赤，精神亢奋，血量回复50%，精力回复20");
                            } else if (n.money < e) cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值~"; else if (5 == n.chioce2[6]) {
                                t.closeUI();
                                cc.find("Canvas/Button").stopAllActions();
                                cc.find("Event/scr_fight").getComponent("scr_fight").fight(910);
                            } else if (10 == n.chioce2[6]) {
                                n.money -= e;
                                n.publicVar2[24] += 1;
                                n.chioce2[6] += 1;
                                n.randomEvent[1] += 1;
                                t.closeUI("妹子送给你一本书，小声说了句「对不起」，跑开了。获得《神炎的歌声》！「恶人卡」");
                            } else {
                                n.money -= e;
                                n.chioce2[6] += 1;
                                t.closeUI("妹子小声说了句谢谢...");
                            }
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（妹子让你枕膝，你睡了个好觉）");
                        }
                    },
                    8003: {
                        text: ["你又遇到了赤蛮奇“有奖套圈...咦？是你啊泽诺...", "7毛一次，要不要来一发？", "试试（" + Math.min(1 * n.randomEvent[12] + 20, 80) + "%套中）", "靠在赤蛮奇身上睡一小会"],
                        choice1: function () {
                            if (n.money >= 7) {
                                var e = 100 * Math.random(), a = Math.min(1 * n.randomEvent[12] + 20, 80);
                                n.money -= 7;
                                if (e < a) {
                                    n.randomEvent[12] += 1;
                                    (function () {
                                        var e = 100 * Math.random();
                                        if (e <= 40) {
                                            n.money += 25;
                                            t.closeUI("获得【2.5元】，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                        if (e > 40 && e <= 50) {
                                            n.itemNum2[12] += 2;
                                            t.closeUI("获得【皮⑨】*2，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                        if (e > 50 && e <= 70) {
                                            n.itemNum2[17] += 1;
                                            t.closeUI("获得【贤明·正直】*1，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                        if (e > 70 && e <= 90) {
                                            n.itemNum2[22] += 2;
                                            t.closeUI("获得【骑士盾·残】*2，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                        if (e > 90 && e <= 95) {
                                            n.itemNum2[27] += 1;
                                            t.closeUI("获得【爱丽丝手链】*1，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                        if (e > 95 && e <= 96) {
                                            n.randomEvent[1] += 1;
                                            t.closeUI("获得【恶人卡】*1，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                        if (e > 96) {
                                            n.itemNum2[26] += 1;
                                            t.closeUI("获得【理信·慎重】*1，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                        }
                                    })();
                                } else {
                                    n.randomEvent[12] += 1;
                                    t.closeUI("你扔空了，啥也没圈到，扔圈熟练度+1（累计" + n.randomEvent[12] + "）");
                                }
                            } else cc.find("Canvas/Event/Choice/Choice1/choiceText").getComponent("cc.Label").string = "没p值！";
                        },
                        choice2: function () {
                            n.energy += 20;
                            t.closeUI("精力+20（你被盖上了被子）");
                        }
                    },
                    8004: {
                        text: ["发现一个有点闪眼的大楼！要进去看看吗？", "去", "不去"],
                        choice1: function () {
                            cc.director.loadScene("shop3");
                        },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还）");
                        }
                    },
                    90001: {
                        text: ["“欢迎光临，你要做点什么呢？”", "找妹子", "喝点酒（1元）"],
                        choice1: function () { },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还）");
                        }
                    },
                    90002: {
                        text: ["请问你找哪位？", "", ""],
                        choice1: function () { },
                        choice2: function () {
                            n.energy += 10;
                            t.closeUI("精力+10（消耗返还）");
                        }
                    },
                    10001: {
                        text: ["在导致流浪的主要原因是：\n（这里仅对比这两类，不讨论身体缺陷问题）", "懒/愚蠢（自身因素）", "精神/心理疾病（客观因素）"],
                        choice1: function () {
                            n.publicVar[11] > 0 && (n.publicVar[11] = 0);
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10002);
                        },
                        choice2: function () {
                            n.publicVar[11] > 0 && (n.publicVar[11] = 0);
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10002);
                        }
                    },
                    10002: {
                        text: ["你是否认为内向是一种性格缺陷？", "是的", "不是的"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10003);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10003);
                        }
                    },
                    10003: {
                        text: ["你认为包容可以解决矛盾吗？", "可以", "不可以"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10004);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10004);
                        }
                    },
                    10004: {
                        text: ["你认为哪种东西更重要？", "个人能力和健康的身体", "良好的人际关系和美满的家庭"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10005);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10005);
                        }
                    },
                    10005: {
                        text: ["你认为那种想法更加不利于人际交往？", "“我有缺陷...我有问题...”", "“我身边的人都应该喜欢我！”"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10006);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10006);
                        }
                    },
                    10006: {
                        text: ["你更需要：", "自己认可自己", "别人认可自己"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10007);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10007);
                        }
                    },
                    10007: {
                        text: ["你认为人活着需要理由吗？", "需要", "不需要"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10008);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10008);
                        }
                    },
                    10008: {
                        text: ["你是否有想过愚蠢和缺乏自制力的人应该都死掉？", "想过", "没想过"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10009);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10009);
                        }
                    },
                    10009: {
                        text: ["在回答以上问题时，你是否有想过这些问题与游戏的联系、或者去揣测作者的意图？", "有", "没有"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10010);
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            t.startEvent(10010);
                        }
                    },
                    10010: {
                        text: ["以上问题你是如实回答的吗？（没有为了通关而去刻意选择答案）", "是的", "不是的"],
                        choice1: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            r();
                        },
                        choice2: function () {
                            n.publicVar[11] += 3;
                            t.closeUI();
                            r();
                        }
                    },
                    20001: {
                        text: ["你要告诉大家是你解决的异变吗？", "要（打赢最终boss结局）", "不要"],
                        choice1: function () {
                            n.publicVar3[3] = 311;
                            t.closeUI("“这是你自己的选择”");
                        },
                        choice2: function () {
                            if (n.ifFollow[0] > 0) {
                                n.publicVar3[3] = 412;
                                n.plotId = 1002;
                                a.save();
                                cc.director.loadScene("plot");
                            } else if (n.publicVar[7] >= 5000) {
                                n.publicVar3[3] = 413;
                                n.plotId = 1003;
                                a.save();
                                cc.director.loadScene("plot");
                            } else {
                                n.publicVar3[3] = 411;
                                n.plotId = 1001;
                                a.save();
                                cc.director.loadScene("plot");
                            }
                        }
                    }
                };
                function r() {
                    var i = 59 - 10 * e("scr_data2").gameData[4];
                    n.skillLv[4] = 0;
                    t.gamePoint = 3 * n.choice[2] + 6 * n.choice[7] + 6 * n.publicVar2[14] + 2 * (10 - n.publicVar2[21]) + 5 * n.publicVar[9] + 2 * n.itemNum2[29] - 40 * n.itemNum2[30] - 3 * n.itemNum2[1000] - 3 * n.itemNum2[1001] - 5 * n.itemNum2[61] + 10 * n.itemNum2[62] - Math.max(Math.min((4 * n.orderTimes[1] - n.orderTimes[4]) / 10, 10), 0);
                    t.gamePoint += parseInt(3 * n.publicVar2[19] / 50) + 3 * n.publicVar2[15];
                    t.attPoint = parseInt(21 - 6 * a.role.maxHp() / 1e4 - 6 * a.role.att() / 2e3 - 6 * a.role.def() / 1e3);
                    t.attPoint = Math.min(Math.max(t.attPoint, 0), 18);
                    t.totalPoint = t.gamePoint + t.attPoint + n.publicVar[11];
                    if (t.totalPoint < i) {
                        n.publicVar3[3] = 111;
                        t.closeUI("......");
                    } else {
                        n.publicVar3[3] = 211;
                        t.closeUI("......");
                    }
                }
                function s() {
                    var t = e("scr_data");
                    if (t.hunger <= 20) if (t.itemNum2[0] >= 1) {
                        t.itemNum2[0] -= 1;
                        t.orderTimes[2] += 1;
                        t.hunger += 80;
                    } else if (t.itemNum[0] >= 1) {
                        t.itemNum[0] -= 1;
                        t.orderTimes[5] += 1;
                        t.hunger += 20;
                    }
                }
                return o;
            },
            startEvent: function (e) {
                var t = this.event()[e], n = t.text, a = n.pop(), i = n.pop(), c = n.length, o = cc.find("Canvas/Event/Choice");
                cc.find("Canvas/Event/EventText").removeAllChildren();
                cc.find("Canvas/Event/Choice/label").getComponent("cc.Label").string = "你选择...";
                "undefined" != typeof t.action && t.action();
                this.showUI();
                this.printEventDes(n);
                this.scheduleOnce(function () {
                    o.runAction(cc.scaleTo(.5, 1));
                }, 1 * c);
                (function () {
                    var e = t.choice1, n = t.choice2, c = o.getChildByName("Choice1"), r = o.getChildByName("Choice2");
                    c.getChildByName("choiceText").getComponent("cc.Label").string = i;
                    r.getChildByName("choiceText").getComponent("cc.Label").string = a;
                    if ("" == i) {
                        c.opacity = 0;
                        o.getChildByName("label").opacity = 0;
                    }
                    c.on("touchstart", e, c);
                    r.on("touchstart", n, r);
                })();
            },
            printEventDes: function (e) {
                var t = e.length, n = 1, a = this, i = cc.find("Canvas/Event/EventText");
                cc.find("Event/scr_mainUIEvent");
                this.creatText(i, "plot0", e[0]);
                this.schedule(function () {
                    a.creatText(i, "plot" + n, e[n]);
                    n++;
                }, 1, t - 2);
            },
            showUI: function () {
                cc.find("Canvas/Text/txt_notify").opacity = 0;
                cc.find("Canvas/Text/txt_notify").getComponent("cc.Label").string = "";
                cc.find("Canvas/Event").scale = 1;
                cc.find("Canvas/Event/Choice").scale = 0;
                cc.find("Canvas/Button").runAction(cc.scaleTo(.3, 0));
            },
            closeUI: function (t) {
                var n = cc.find("Canvas/Button"), a = e("scr_public"), i = cc.find("Canvas/Event/Choice/Choice1"), c = cc.find("Canvas/Event/Choice/Choice2");
                cc.find("Canvas/Text/txt_notify").opacity = 255;
                cc.find("Canvas/Event/EventText").removeAllChildren();
                i.targetOff(i);
                c.targetOff(c);
                cc.find("Canvas/Event").scale = 0;
                n.runAction(cc.scaleTo(.3, 1));
                t = t || "";
                e("scr_effect").playText("Canvas/Text/txt_notify", t, 60);
                a.save();
                a.init();
            },
            onLoad: function () { }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_mainUIinit: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "63b63kuwo9N7JpekGEK/q7S", "scr_mainUIinit");
        cc.Class({
            extends: cc.Component,
            properties: {},
            skillShow: function () {
                var t = 0, n = e("scr_data").skillLv;
                for (var a in n) n[a] > 0 && t++;
                return t;
            },
            initSkillShow: function () {
                cc.find("Canvas/Text/txt_skillNum").getComponent("cc.Label").string = "特性  " + this.skillShow() + "/27";
            },
            whichShow: function (t, n) {
                for (var a = e("scr_data").distance, i = cc.find(n).children, c = t.length, o = 0; o <= c; o++) a >= t[o] ? i[o].active = !0 : i[o].active = !1;
            },
            showButton: function () {
                this.whichShow([6, 4, 7, 23], "Canvas/Button");
                e("scr_public").init();
            },
            showfriendButton: function () {
                var t = e("scr_data"), n = cc.find("Canvas/Button/button_friend");
                1 == t.ifFollow[0] || 1 == t.ifFollow[1] ? n.active = !0 : n.active = !1;
            },
            onButton: function () {
                var t = e("scr_data"), n = cc.find("Canvas/Button"), a = n.getChildByName("button_dekaron");
                t.day > 45 && t.publicVar[1] >= 0 ? a.on("touchstart", this.dekaronButton, this) : a.active = !1;
                1 == t.ifFollow[0] ? n.getChildByName("button_friend").on("touchstart", function () {
                    cc.director.loadScene("friend1");
                }, this) : 1 == t.ifFollow[1] && n.getChildByName("button_friend").on("touchstart", function () {
                    cc.director.loadScene("friendSkill2");
                }, this);
            },
            dekaronButton: function () {
                var t = e("scr_data"), n = e("scr_public"), a = e("scr_effect");
                t.energy >= 10 ? function () {
                    var e = [870, 871, 201, 202, 300003, 203, 204, 205, 206, 207, 900006, 209, 210, 211, 900005, 213, 214, 215, 216, 217, 218, 219, 20007, 20008, 20009][t.choice[6]];
                    if ("undefined" == typeof e) a.playText("Canvas/Text/txt_notify", "什么都没有...", 60); else {
                        t.energy -= 10;
                        n.save();
                        cc.find("Event/scr_fight").getComponent("scr_fight").fight(e);
                    }
                }() : a.playText("Canvas/Text/txt_notify", "挑战需10点精力！", 60);
            },
            hideUI: function () {
                var e = cc.find("Canvas/Button").children, t = cc.find("Canvas/Text").children, n = cc.find("Canvas/Button/button_explore");
                for (var a in e) e[a].active = !1;
                for (var i in t) t[i].active = !1;
                cc.find("Canvas/UI").active = !1;
                cc.find("Canvas/Text/txt_notify").active = !0;
                n.active = !0;
                n.x = 7;
                n.y = 164;
            },
            onLoad: function () {
                var t = e("scr_public"), n = e("scr_data");
                (function () {
                    if (300 == n.distance && n.stayDay[3] > 1 && 0 == n.publicVar3[2]) {
                        var t = cc.find("Canvas/Button/button_rest");
                        t.getChildByName("text").getComponent("cc.Label").string = "桥  洞";
                        t.on("touchstart", function () {
                            cc.director.loadScene("home");
                        }, t);
                    } else {
                        var t = cc.find("Canvas/Button/button_rest");
                        t.on("touchstart", function () {
                            e("scr_data").energy >= 10 ? cc.director.loadScene("notice2") : cc.director.loadScene("diary");
                        }, t);
                    }
                })();
                this.showButton();
                this.initSkillShow();
                this.onButton();
                this.showfriendButton();
                t.autoEat();
                n.role.hp < 0 && (n.role.hp = 1);
                t.init();
                cc.find("Canvas/Fight").active = !1;
                cc.find("Canvas/Button").active = !0;
                n.day >= 180 && this.hideUI();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_makeButton: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "fbf64sNmm5MYp/UrY57mFiI", "scr_makeButton");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("make");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_makeUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "65413JSLq1B/LWVXwKnjL2L", "scr_makeUI");
        cc.Class({
            extends: cc.Component,
            properties: {
                itemUI: {
                    default: null,
                    type: cc.Prefab
                }
            },
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, -300);
                a.color = new cc.Color(255, 255, 0);
                a.getComponent(cc.Label).overflow = 3;
                a.setContentSize(530, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 80;
                a.getComponent(cc.Label).fontSize = 40;
            },
            itemContent: function () {
                this.data = e("scr_data");
                var t = this, n = e("scr_effect"), a = {
                    0: {
                        itemName: " 高级土 ",
                        needDes: "※需【生土】" + this.data.itemNum[3] + "/1【绯想碎片】" + this.data.itemNum[1] + "/1",
                        des: "※获得【高级土】（已拥有" + this.data.itemNum2[0] + "）",
                        ifEnough: function (e) {
                            t.data.itemNum[3] >= 1 && t.data.itemNum[1] >= 1 && (cc.find("Canvas/Page/view/content/page_1/" + e + "/button/name").color = new cc.color(255, 153, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[3] >= 1 && n.itemNum[1] >= 1) {
                                n.itemNum[3] -= 1;
                                n.itemNum[1] -= 1;
                                n.itemNum2[0] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【高级土】*1", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    1: {
                        itemName: " 急支糖浆 ",
                        needDes: "※需【艾草】" + this.data.itemNum[5] + "/2",
                        des: "※获得【急支糖浆】（拥有" + this.data.itemNum2[1] + "）",
                        ifEnough: function (e) {
                            t.data.itemNum[5] >= 2 && (cc.find("Canvas/Page/view/content/page_1/" + e + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[5] >= 2) {
                                n.itemNum[5] -= 2;
                                n.itemNum2[1] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【急支糖浆】*1", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    2: {
                        itemName: "绯探羽睡袋LV" + this.data.itemNum2[2],
                        needDes: "※需【绯想碎片】" + this.data.itemNum[1] + "/" + (1 + this.data.itemNum2[2]) + "【探女の羽毛】" + this.data.itemNum[4] + "/" + (4 + 2 * this.data.itemNum2[2]),
                        des: "※精力上限增加" + 11 * this.data.itemNum2[2] + "点",
                        ifEnough: function (e) {
                            t.data.itemNum[1] >= 1 + t.data.itemNum2[2] && t.data.itemNum[4] >= 4 + 2 * t.data.itemNum2[2] && (cc.find("Canvas/Page/view/content/page_1/" + e + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 1 + n.itemNum2[2], o = n.itemNum[1], r = 4 + 2 * n.itemNum2[2], s = n.itemNum[4];
                            if (o >= c && s >= r) {
                                n.itemNum[1] -= c;
                                n.itemNum[4] -= r;
                                n.itemNum2[2] += 1;
                                i.save();
                                a.playText("Canvas/notify", "精力上限+11！也不知道为什么会需要羽毛，可能是更柔软吧/", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    3: {
                        itemName: "绯想剑LV" + this.data.itemNum2[3],
                        needDes: "※需【绯想碎片】" + this.data.itemNum[1] + "/" + (4 + 2 * this.data.itemNum2[3]),
                        des: "※增加" + 8 * this.data.itemNum2[3] + "点攻击。【暴击】" + 1.5 * this.data.itemNum2[3] + "%几率触发暴击，增加【穿透】" + (2 * this.data.itemNum2[38] + 30 * this.data.itemNum2[56] + 100 * this.data.itemNum2[58] + 30 * this.data.itemNum2[66] + 2 * this.data.itemNum2[15]) + "%，由不完全的碎片组成的仿制绯想剑",
                        ifEnough: function (e) {
                            t.data.itemNum[1] >= 4 + 2 * t.data.itemNum2[3] && (cc.find("Canvas/Page/view/content/page_1/" + e + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 4 + 2 * n.itemNum2[3];
                            if (n.itemNum[1] >= c) {
                                n.itemNum[1] -= c;
                                n.itemNum2[3] += 1;
                                i.save();
                                a.playText("Canvas/notify", "攻击+8！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    4: {
                        itemName: "天之羽衣LV" + this.data.itemNum2[4],
                        needDes: "※需【探女の羽毛】" + this.data.itemNum[4] + "/" + (4 + 2 * this.data.itemNum2[4]),
                        des: "※增加" + 40 * this.data.itemNum2[4] + "点残机上限。" + Math.min(2 * this.data.itemNum2[4] + 2 * this.data.itemNum2[36], 60 + 2 * this.data.itemNum2[36]) + "%几率触发【擦弹】，所以，天之羽衣和探女有关系吗，答：「完全没有」",
                        ifEnough: function (e) {
                            t.data.itemNum[4] >= 4 + 2 * t.data.itemNum2[4] && (cc.find("Canvas/Page/view/content/page_2/" + e + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 4 + 2 * n.itemNum2[4];
                            if (n.itemNum[4] >= c) {
                                n.itemNum[4] -= c;
                                n.itemNum2[4] += 1;
                                i.save();
                                a.playText("Canvas/notify", "残机上限+40！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    5: {
                        itemName: "自制风油精LV" + this.data.itemNum2[6],
                        needDes: "※需【艾草】" + this.data.itemNum[5] + "/" + (4 + 2 * this.data.itemNum2[6]),
                        des: "※睡觉时恢复" + 20 * this.data.itemNum2[6] + "点残机值，并且增加？前进（探索）回血",
                        ifEnough: function (t) {
                            var n = e("scr_data");
                            n.itemNum[5] >= 4 + 2 * n.itemNum2[6] && (cc.find("Canvas/Page/view/content/page_2/" + t + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 4 + 2 * n.itemNum2[6];
                            if (n.itemNum[5] >= c) {
                                n.itemNum[5] -= c;
                                n.itemNum2[6] += 1;
                                i.save();
                                a.playText("Canvas/notify", "讨厌的露米娅减少啦~", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    6: {
                        itemName: "小老帝玩偶LV" + this.data.itemNum2[5],
                        needDes: "※需【绯想碎片】" + this.data.itemNum[1] + "/" + (4 + 2 * this.data.itemNum2[5]),
                        des: "※每天30%几率随机获得一种素材，升级提升获得数量，听说小老帝玩偶可以给大家带来好运哦，推荐多升几级",
                        ifEnough: function (t) {
                            var n = e("scr_data");
                            n.itemNum[1] >= 4 + 2 * n.itemNum2[5] && (cc.find("Canvas/Page/view/content/page_2/" + t + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 4 + 2 * n.itemNum2[5];
                            if (n.itemNum[1] >= c) {
                                n.itemNum[1] -= c;
                                n.itemNum2[5] += 1;
                                i.save();
                                a.playText("Canvas/notify", "升级成功！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    7: {
                        itemName: "  电池  ",
                        needDes: "※需【电池碎片】" + this.data.itemNum[6] + "/4 或者【电池小碎片】" + this.data.itemNum[7] + "/8",
                        des: "※获得【电池】。游戏中重要的“软货币”，也可自己使用，由于你是一个网瘾少年，所以初始有5%网瘾",
                        ifEnough: function (t) {
                            var n = e("scr_data");
                            (n.itemNum[6] >= 4 || n.itemNum[7] >= 8) && (cc.find("Canvas/Page/view/content/page_2/" + t + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = n.itemNum[6], o = n.itemNum[7];
                            if (c >= 4) {
                                n.itemNum[6] -= 4;
                                n.itemNum2[7] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【电池】*1！", 100);
                                t.delayCreatItemUI();
                            } else if (o >= 8) {
                                n.itemNum[7] -= 8;
                                n.itemNum2[7] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【电池】*1！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    8: {
                        itemName: "皮⑨",
                        needDes: "※需【50ml皮⑨】" + this.data.itemNum[10] + "/5",
                        des: "※获得一罐【皮⑨】！听说喝了就可以变成最强的~嗝~~",
                        ifEnough: function (t) {
                            e("scr_data").itemNum[10] >= 5 && (cc.find("Canvas/Page/view/content/page_3/" + t + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[10] >= 5) {
                                n.itemNum[10] -= 5;
                                n.itemNum2[12] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【皮⑨】*1！", 100);
                                t.delayCreatItemUI3();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    9: {
                        itemName: "八卦炉LV" + this.data.itemNum2[8],
                        needDes: "※可通过购买，或者打怪掉落提高等级",
                        des: "※增加" + 17 * this.data.itemNum2[8] + "点攻击。【嗜血】攻击时，" + 2 * this.data.itemNum2[8] + "%概率恢复伤害10%的残机",
                        button: function () {
                            n.playText("Canvas/notify", "请去森助购买！", 100);
                        }
                    },
                    10: {
                        itemName: "巫女服LV" + this.data.itemNum2[9],
                        needDes: "※可通过购买，或者打怪掉落提高等级",
                        des: "※增加" + 8 * this.data.itemNum2[9] + "点防御。【反弹】受击时，" + 2 * this.data.itemNum2[9] + "%几率减免「250%*自身防御」点伤害，并且将伤害反弹给对方",
                        button: function () {
                            n.playText("Canvas/notify", "请去森助购买！", 100);
                        }
                    },
                    11: {
                        itemName: "ヾ(❀╹◡╹)ﾉ~LV" + this.data.itemNum2[13],
                        needDes: "※获得方法未知",
                        des: "※每天自动获得「0.1*LV」元",
                        button: function () {
                            n.playText("Canvas/notify", "喵~", 100);
                        }
                    },
                    12: {
                        itemName: "理信·慎重LV" + (this.data.itemNum2[26] + this.data.publicVar3[18]),
                        needDes: "※收集类道具",
                        des: "※增加" + (this.data.itemNum2[26] + this.data.publicVar3[18]) + "%的额外掉落奖励，泽诺的理信·慎重权杖的残片，",
                        button: function () { }
                    },
                    13: {
                        itemName: "爱丽丝手链LV" + (this.data.itemNum2[27] + this.data.publicVar3[17]),
                        needDes: "※收集类道具",
                        des: "※如果前进/探索时未发现道具，则有" + 5 * (this.data.itemNum2[27] + this.data.publicVar3[17]) + "%概率（LV*5%）再一次获得奖励",
                        button: function () {
                            n.playText("Canvas/notify", "爱丽丝手链触发时，必定获得奖励，且可以与「非酋逆袭」特性同时触发", 100);
                        }
                    },
                    14: {
                        itemName: "暗影之剑LV" + this.data.itemNum2[10],
                        needDes: "※需【黑曜石】" + this.data.itemNum[8] + "/" + (10 + 2 * this.data.itemNum2[10]),
                        des: "※增加" + 40 * this.data.itemNum2[10] + "点攻击。【割裂】每次攻击伤害提高" + 4 * this.data.itemNum2[10] + "%，最多叠加20次，出自作者以前玩过的游戏《暗影之剑》",
                        ifEnough: function (t) {
                            var n = e("scr_data");
                            n.itemNum[8] >= 10 + 2 * n.itemNum2[10] && (cc.find("Canvas/Page/view/content/page_4/" + t + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 10 + 2 * n.itemNum2[10];
                            if (n.itemNum[8] >= c) {
                                n.itemNum[8] -= c;
                                n.itemNum2[10] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【暗影之剑】*1！", 100);
                                t.delayCreatItemUI4();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    15: {
                        itemName: "银白色荣耀LV" + this.data.itemNum2[11],
                        needDes: "※需【神械残骸】" + this.data.itemNum[9] + "/" + (10 + 2 * this.data.itemNum2[11]),
                        des: "※增加" + 200 * this.data.itemNum2[11] + "点残机上限，" + 15 * this.data.itemNum2[11] + "点防御。【银白色荣耀！】受击时，" + (5 * this.data.itemNum2[11] + 20 * this.data.itemNum2[60]) + "%概率提高20%防御（最多叠加20次），并且恢复自身80%的残机，出自作者最喜欢的魔塔作品：《宿命的终曲》",
                        ifEnough: function (t) {
                            var n = e("scr_data");
                            n.itemNum[9] >= 10 + 2 * n.itemNum2[11] && (cc.find("Canvas/Page/view/content/page_4/" + t + "/button/name").color = new cc.color(0, 255, 0));
                        },
                        button: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 10 + 2 * n.itemNum2[11];
                            if (n.itemNum[9] >= c) {
                                n.itemNum[9] -= c;
                                n.itemNum2[11] += 1;
                                i.save();
                                a.playText("Canvas/notify", "获得【银白色荣耀】*1！", 100);
                                t.delayCreatItemUI4();
                            } else a.playText("Canvas/notify", "材料不足！", 100);
                        }
                    },
                    16: {
                        itemName: "圣德披肩LV" + this.data.itemNum2[15],
                        needDes: "※用于增加自信。",
                        des: "※每级增加1%全战斗属性（攻防血）。【帅呆】每级减少敌方2%防御！【拉风】每级减少敌方5%逃跑率！小伙子，你是喜欢蓝色披肩，还是红色呢",
                        button: function () {
                            n.playText("Canvas/notify", "听说穿上这件披肩的人，最后都被打死了...", 100);
                        }
                    },
                    17: {
                        itemName: "贤明·正直LV" + (this.data.itemNum2[17] + this.data.publicVar3[9]),
                        needDes: "※收集类道具",
                        des: "※前进/探索时，" + (this.data.itemNum2[17] + this.data.publicVar3[9]) + "%几率额外获得一次奖励！泽诺的贤明·正直权杖残片，含有极大潜力的权杖，可惜现在是残片",
                        button: function () {
                            n.playText("Canvas/notify", "(O_o)", 100);
                        }
                    },
                    18: {
                        itemName: "录像机LV" + this.data.itemNum2[18],
                        needDes: "※收集类道具",
                        des: "※逃跑技术增加速度+1！（你目前逃跑技术为" + this.data.escapeExp + "），你可以通过反复观看逃跑视频来总结经验/",
                        button: function () {
                            n.playText("Canvas/notify", "诶嘿嘿", 100);
                        }
                    },
                    19: {
                        itemName: "勇气·坚毅LV" + this.data.itemNum2[19],
                        needDes: "※神炎的私房p值（拥有" + this.data.itemNum[11] + "）兑换，可能会招来麻烦！",
                        des: "※造成「勇气·坚毅等级+1」倍伤害，每次消耗1颗神佑珠（已有" + this.data.itemNum2[14] + "）。点击战斗界面右下角文字可以打开/关闭权杖效果！",
                        button: function () {
                            e("scr_data").itemNum2[19] > 0 ? n.playText("Canvas/notify", "点击战斗界面右下角（逃跑率右边）【开/关】才会生效哦~", 100) : n.playText("Canvas/notify", "你还没有权杖！", 100);
                        }
                    },
                    20: {
                        itemName: "骑士剑·残LV" + this.data.itemNum2[20],
                        needDes: "※收集类道具",
                        des: "※每级增加5点攻击！",
                        button: function () {
                            n.playText("Canvas/notify", "听说集齐2100块可以变成终曲哦~", 100);
                        }
                    },
                    21: {
                        itemName: "提灯小姐姐の胖次LV" + this.data.itemNum2[21],
                        needDes: "※收集类道具",
                        des: "※每级增加6点防御！5点攻击！8点残机！可以在商店卖出高价，这个世界有大批人喜欢收集，出自b站up：微光提灯",
                        button: function () {
                            n.playText("Canvas/notify", "有股淡淡的清香呢~(ಡωಡ)~", 100);
                        }
                    },
                    22: {
                        itemName: "骑士盾·残LV" + this.data.itemNum2[22],
                        needDes: "※收集类道具",
                        des: "※每级增加25点残机和2点防御！泽诺的骑士盾的残片，在与各种怪物间的战斗破损，其他人拿到并没有什么用，但是到你手里可以增强自身属性",
                        button: function () {
                            n.playText("Canvas/notify", "听说集齐1800件可以召唤闷油瓶哦~", 100);
                        }
                    },
                    23: {
                        itemName: "希望の花LV" + this.data.itemNum2[23],
                        needDes: "※收集类道具",
                        des: "※每级提高2点前进/探索时残机回复量！",
                        button: function () {
                            n.playText("Canvas/notify", "“不要............停下来啊，只要不断前进（探索），道路就会不断延伸..........”", 100);
                        }
                    },
                    24: {
                        itemName: "幻想乡缘起LV" + this.data.itemNum2[24],
                        needDes: "※收集类道具",
                        des: "※每级增加2%逃跑几率！在敌人看到你身上携带这么多书的情况下，肯定会下意识数一数你到底有多少本，这样可以让敌人分心，并且敌人还有可能因为感觉没数清楚再数几遍",
                        button: function () {
                            var e = 100 * Math.random();
                            e < 30 ? n.playText("Canvas/notify", "(→_→) (↑_↑) (←_←) (↓_↓)", 100) : e < 60 ? n.playText("Canvas/notify", "(→_→) (←_←)(→_→)(←_←)", 100) : n.playText("Canvas/notify", "(↑_↑) (→_→) (↑_↑) (←_←)", 100);
                        }
                    },
                    25: {
                        itemName: "平安福LV" + this.data.itemNum2[25],
                        needDes: "※收集类道具",
                        des: "※战败后，保留" + parseInt(1 + 50 * this.data.itemNum2[25] + .03 * e("scr_public").role.maxHp() * this.data.itemNum2[25]) + "点残机！",
                        button: function () {
                            n.playText("Canvas/notify", "上边似乎画着一个性感的二次元妹子~", 100);
                        }
                    },
                    26: {
                        itemName: "黄铜级勇者身份牌LV" + this.data.itemNum2[29],
                        needDes: "※神器",
                        des: "※每级增加200点攻击！50防御！",
                        button: function () {
                            n.playText("Canvas/notify", "泽诺一生都会记住的过错", 100);
                        }
                    },
                    27: {
                        itemName: "楼观剑LV" + this.data.itemNum2[30],
                        needDes: "※被「诅咒」的神器",
                        des: "※每级增加496187点攻击！",
                        button: function () {
                            n.playText("Canvas/notify", "魂魄妖梦的神器", 100);
                        }
                    }



                };
                return a;
            },
            creatPrefab: function (e, t) {
                var n = cc.instantiate(this.itemUI), a = this.itemContent()[e], i = a.button, c = "item" + e;
                n.name = c;
                n.getChildByName("button").getChildByName("name").getComponent("cc.Label").string = a.itemName;
                n.getChildByName("need").getComponent("cc.Label").string = a.needDes;
                n.getChildByName("des").getComponent("cc.Label").string = a.des;
                n.getChildByName("button").getChildByName("name").getComponent("cc.Button").scheduleOnce(function () {
                    n.getChildByName("button").getChildByName("name").on("touchstart", i, this);
                }, .4);
                cc.find("Canvas/Page/view/content").getChildByName(t).addChild(n);
                "undefined" != typeof a.ifEnough && a.ifEnough(c);
            },
            creatItemUI1: function () {
                cc.find("Canvas/Page/view/content/page_1").removeAllChildren();
                for (var e = 0; e <= 3; e++) this.creatPrefab(e, "page_1");
            },
            creatItemUI2: function () {
                cc.find("Canvas/Page/view/content/page_2").removeAllChildren();
                for (var e = 4; e <= 7; e++) this.creatPrefab(e, "page_2");
            },
            creatItemUI3: function () {
                if (e("scr_data").distance >= 100) {
                    cc.find("Canvas/Page/view/content/page_3").removeAllChildren();
                    for (var t = 8; t <= 11; t++) this.creatPrefab(t, "page_3");
                } else this.creatText(cc.find("Canvas/Page/view/content/page_3"), "notify", "※第3页内容，将在到达人间之里后解锁！");
            },
            creatItemUI4: function () {
                if (e("scr_data").distance >= 100) {
                    cc.find("Canvas/Page/view/content/page_4").removeAllChildren();
                    for (var t = 12; t <= 15; t++) this.creatPrefab(t, "page_4");
                } else this.creatText(cc.find("Canvas/Page/view/content/page_4"), "notify", "※第4页内容，将在到达人间之里后解锁！");
            },
            creatItemUI5: function () {
                if (e("scr_data").distance >= 100) {
                    cc.find("Canvas/Page/view/content/page_5").removeAllChildren();
                    for (var t = 16; t <= 19; t++) this.creatPrefab(t, "page_5");
                } else this.creatText(cc.find("Canvas/Page/view/content/page_5"), "notify", "※第5页内容，将在到达人间之里后解锁！");
            },
            creatItemUI6: function () {
                if (e("scr_data").distance >= 100) {
                    cc.find("Canvas/Page/view/content/page_6").removeAllChildren();
                    for (var t = 20; t <= 23; t++) this.creatPrefab(t, "page_6");
                } else this.creatText(cc.find("Canvas/Page/view/content/page_6"), "notify", "※第6页内容，将在到达人间之里后解锁！");
            },
            creatItemUI7: function () {
                if (e("scr_data").distance >= 100) {
                    cc.find("Canvas/Page/view/content/page_7").removeAllChildren();
                    for (var t = 24; t <= 27; t++) this.creatPrefab(t, "page_7");
                } else this.creatText(cc.find("Canvas/Page/view/content/page_7"), "notify", "※第7页内容，将在到达人间之里后解锁！");
            },
            delayCreatItemUI: function () {
                var e = this;
                this.scheduleOnce(function () {
                    e.creatItemUI1();
                    e.creatItemUI2();
                }, .2);
            },
            delayCreatItemUI1: function () {
                this.scheduleOnce(this.creatItemUI1, .02);
            },
            delayCreatItemUI2: function () {
                this.scheduleOnce(this.creatItemUI2, .02);
            },
            delayCreatItemUI3: function () {
                this.scheduleOnce(this.creatItemUI3, .02);
            },
            delayCreatItemUI4: function () {
                this.scheduleOnce(this.creatItemUI4, .02);
            },
            delayCreatItemUI5: function () {
                this.scheduleOnce(this.creatItemUI5, .02);
            },
            delayCreatItemUI6: function () {
                this.scheduleOnce(this.creatItemUI6, .02);
            },
            delayCreatItemUI7: function () {
                this.scheduleOnce(this.creatItemUI7, .02);
            },
            onLoad: function () {
                this.creatItemUI1();
                this.creatItemUI2();
                this.creatItemUI3();
                this.creatItemUI4();
                this.creatItemUI5();
                this.creatItemUI6();
                this.creatItemUI7();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_newGame: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "116b0dQK4RNd6tA1hozVnWG", "scr_newGame");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                JSON.parse(cc.sys.localStorage.getItem("userData")) ? cc.director.loadScene("notice") : cc.director.loadScene("choice");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_notice2: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "5d6b1w/rEpC5bWSm2L4xLZt", "scr_notice2");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = cc.find("Canvas/button");
                cc.find("Canvas/button/button1").on("touchstart", function () {
                    cc.director.loadScene("main");
                }, this);
                cc.find("Canvas/button/button2").on("touchstart", function () {
                    cc.director.loadScene("diary");
                }, this);
                e("scr_effect").playText("Canvas/text", "系统检测到你还有没用完的精力，你确定要睡觉吗？", 80);
                t.opacity = 0;
                this.scheduleOnce(function () {
                    t.runAction(cc.fadeIn(2));
                }, 2);
            }
        });
        cc._RF.pop();
    }, {
        scr_effect: "scr_effect"
    }],
    scr_notice: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "8a8f3K8uShD74FI50VPMkWg", "scr_notice");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = cc.find("Canvas/button");
                cc.find("Canvas/button/button1").on("touchstart", function () {
                    cc.sys.localStorage.removeItem("userData");
                    cc.director.loadScene("choice");
                }, this);
                cc.find("Canvas/button/button2").on("touchstart", function () {
                    cc.director.loadScene("start");
                }, this);
                e("scr_effect").playText("Canvas/text", "新开会删除旧存档，你确定要新开吗？", 80);
                t.opacity = 0;
                this.scheduleOnce(function () {
                    t.runAction(cc.fadeIn(2));
                }, 2);
            }
        });
        cc._RF.pop();
    }, {
        scr_effect: "scr_effect"
    }],
    scr_open: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "72e60aF4atJaJ3b2ZL0hIlb", "scr_open");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(3));
                a.color = new cc.Color(235, 25, 25);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 50;
                a.getComponent(cc.Label).fontSize = 40;
            },
            onLoad: function () {
                var e = ["昨天，", "想通之后，", "我双手空空就冲了出来。", "我决定独自解决异变，", "成为英雄..."], t = (e.length,
                    this), n = 0, a = cc.find("Canvas/Layout"), i = cc.find("Canvas/skip");
                function c() {
                    t.creatText(a, "plot" + n, e[n]);
                    n++;
                }
                var o = window.setInterval(function () {
                    var e = {
                        500: function () {
                            c();
                        },
                        3500: function () {
                            c();
                        },
                        6500: function () {
                            c();
                        },
                        9500: function () {
                            c();
                        },
                        12500: function () {
                            c();
                        },
                        17500: function () {
                            var e = a.children;
                            for (var t in e) e[t].runAction(cc.fadeOut(2));
                        },
                        20000: function () {
                            window.clearInterval(o);
                            cc.director.loadScene("main");
                        }
                    };
                    "undefined" != typeof e[r += 500] && e[r]();
                }, 500), r = 0;
                i.on("touchstart", function () {
                    o && window.clearTimeout(o);
                    cc.director.loadScene("main");
                }, this);
                this.scheduleOnce(function () {
                    i.active = !0;
                    i.runAction(cc.fadeTo(3, 60));
                }, 2);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_over2_1: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "62e498iaclK8KXOlDUYWsAs", "scr_over2_1");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(3));
                a.color = new cc.Color(25, 255, 25);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 70;
                a.getComponent(cc.Label).fontSize = 40;
            },
            onLoad: function () {
                e("scr_data");
                var t = e("scr_data2"), n = e("scr_public"), a = ["很好，", "你可能有点轻微的强迫症，", "但是我还是决定给你一点补偿,", "虽然我认为你接受的可能性只有\n20%，", "但是，你也没办法寄刀片给我\n(｀・ω・´)", "因为我是一个虚拟现实角色！"];
                console.log(a);
                var i = a.length, c = 0, o = cc.find("Canvas/Show"), r = cc.find("Canvas/Determine"), s = this, l = Math.min(20 + 10 * t.dieChoice[3], 40);
                cc.find("Canvas/Determine/choice1/text").getComponent("cc.Label").string = "带着作者给的" + parseInt(l / 10) + "元p值，重新开始";
                r.active = !1;
                r.opacity = 0;
                this.schedule(function () {
                    s.creatText(o, "plot" + c, a[c]);
                    console.log(a[c]);
                    c++;
                }, 3, i - 1);
                this.scheduleOnce(function () {
                    r.active = !0;
                    r.runAction(cc.fadeIn(2));
                }, 3 * (i + 1));
                r.getChildByName("choice1").on("touchstart", function () {
                    t.initMoney = l;
                    t.dieChoice[3] += 0;
                    n.save2();
                    (function () {
                        JSON.parse(cc.sys.localStorage.getItem("userData")) && cc.sys.localStorage.removeItem("userData");
                        cc.director.loadScene("start");
                    })();
                }, this);
                r.getChildByName("choice2").on("touchstart", function () {
                    t.dieChoice[3] += 1;
                    n.save2();
                    cc.director.loadScene("over");
                }, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_public: "scr_public"
    }],
    scr_over2: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "aca905dFBlPoYq+iajnsZIA", "scr_over2");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(3));
                a.color = new cc.Color(25, 255, 25);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 60;
                a.getComponent(cc.Label).fontSize = 40;
            },
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_public"), a = ["泽诺....", "你怎么倒下了....", "这里不是旅途的终点啊！", "你艰难挣扎起身", "重新爬起（复活需要一些代价，请做出你的选择）"], i = a.length, c = 0, o = cc.find("Canvas/Show"), r = cc.find("Canvas/Determine"), s = this;
                r.active = !1;
                r.opacity = 0;
                this.schedule(function () {
                    s.creatText(o, "plot" + c, a[c]);
                    c++;
                }, 2.5, i - 1);
                this.scheduleOnce(function () {
                    r.active = !0;
                    r.runAction(cc.fadeIn(2));
                }, 2.5 * (i + 1));
                r.getChildByName("choice1").on("touchstart", function () {
                    var e = t.role;
                    e.maxHp -= parseInt(.2 * n.role.maxHp());
                    e.def -= parseInt(.2 * n.role.def());
                    e.att -= parseInt(.2 * n.role.att());
                    l();
                }, this);
                r.getChildByName("choice2").on("touchstart", function () {
                    t.maxEnergy -= 30;
                    l();
                }, this);
                r.getChildByName("choice3").on("touchstart", function () {
                    if (t.money >= 150 || t.itemNum2[7] >= 8 || t.itemNum2[12] >= 16) {
                        t.money >= 150 ? t.money -= 150 : t.itemNum2[7] >= 8 ? t.itemNum2[7] -= 8 : t.itemNum2[12] >= 16 && (t.itemNum2[12] -= 16);
                        l();
                    } else cc.find("Canvas/Determine/choice3/text").getComponent("cc.Label").string = "你怕是一个条件都不满足喔（笑）！";
                }, this);
                r.getChildByName("choice4").on("touchstart", function () {
                    cc.director.loadScene("over2_1");
                }, this);
                4e3 == n.regionId() && (r.getChildByName("choice4").active = !1);
                function l() {
                    t.health = 30;
                    t.role.hp = n.role.maxHp();
                    t.hunger = n.maxHunger();
                    n.save();
                    cc.director.loadScene("main");
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_over: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "6d161adbZhGOIo8GmNaz6i6", "scr_over");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(3));
                a.color = new cc.Color(125, 225, 85);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 50;
                a.getComponent(cc.Label).fontSize = 40;
            },
            onLoad: function () {
                var t = [["几天后，", "你在草丛中被人发现，", "全身浮肿，面目全非。", "结局——", "【客死他乡】"], ["几天后，", "你在草丛中被人发现，", "奄奄一息，身上散发着难闻的味道。", "你立刻被送往救助站。", "父亲当晚从老家赶来，", "你的流浪生涯就此结束。", "结局——", "【无奈的人生】"]], n = "", a = e("scr_public").regionId(), i = (n = a < 4e3 ? t[0] : t[1]).length, c = 0, o = cc.find("Canvas/Show"), r = cc.find("Canvas/Determine"), s = this;
                this.schedule(function () {
                    s.creatText(o, "plot" + c, n[c]);
                    c++;
                }, 2, i - 1);
                this.scheduleOnce(function () {
                    r.active = !0;
                    r.runAction(cc.fadeIn(2));
                }, 2 * (i + 1));
                r.on("touchstart", function () {
                    JSON.parse(cc.sys.localStorage.getItem("userData")) && cc.sys.localStorage.removeItem("userData");
                    cc.director.loadScene("start");
                }, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_public: "scr_public"
    }],
    scr_playAds: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "602f4GJE5dHeJbKWFm68u1y", "scr_playAds");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () { },
            onLoad: function () { },
            start: function () { }
        });
        cc._RF.pop();
    }, {}],
    scr_plot: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "22594SzhLdDFIhFu3G4ZURs", "scr_plot");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.opacity = 0;
                a.runAction(cc.fadeIn(2));
                a.color = new cc.Color(95, 55, 94);
                a.getComponent(cc.Label).overflow = 3;
                a.getComponent(cc.Label).horizontalAlign = 1;
                a.setContentSize(600, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 60;
                a.getComponent(cc.Label).fontSize = 40;
            },
            plotData: function () {
                var t = e("scr_data"), n = e("scr_public");
                e("scr_effect");
                return {
                    0: {
                        text: ["你好，我是本游戏作者，", "你可能现在一脸懵逼。", "我现在要给你两个选项，", "因为我想知道你接下来会怎么处理。", "回到认识爱丽丝之前", "不管她，把我复活，继续赶路"],
                        BGM: "",
                        choice1: function () { },
                        choice2: function () { }
                    },
                    1: {
                        text: ["安静的午后，", "一阵剧烈的尖叫声划破天际，", "我慌忙赶到，", "一个光膀子大汉正将爱丽丝按在身下！", "", "我要杀了他！"],
                        BGM: "",
                        choice1: function () { },
                        choice2: function () {
                            if (0 == e("scr_data2").gameData[4]) {
                                t.skillLv[4] = 0;
                                t.enemyId = 108;
                                t.role.hp = n.role.maxHp();
                                n.save();
                                cc.director.loadScene("main");
                            } else cc.director.loadScene("main", function () {
                                e("scr_data").itemNum2[10] += 1;
                                e("scr_public").save();
                                e("scr_effect").playText("Canvas/Text/txt_notify", "“美女没摔到吧~”，大汉担心的说道，“这荒郊野外的，走路也不当心点！摔伤倒是小事，你这么漂亮，要是碰到流氓可咋整？这样，我送你一把小刀，留着防身用哈~”。获得【暗影之剑】*1", 60);
                            });
                        }
                    },
                    2: {
                        text: ["你好，欢迎来到小黑屋，", "虽然你可能现在是一脸懵逼", "但是事实就是这么不讲道理——", "如果你无法通过挑战，你就不能拥有爱丽丝", "我要回到认识爱丽丝的前一天，我再试试", "我选择放弃爱丽丝"],
                        BGM: "",
                        choice1: function () {
                            var t = e("scr_data");
                            e("scr_data2").gameData[0] += 1;
                            t = JSON.parse(cc.sys.localStorage.getItem("dataCopy"));
                            cc.sys.localStorage.setItem("userData", JSON.stringify(t));
                            n.save2();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            t.health += 999;
                            t.distance += 1;
                            t.enemyId = 0;
                            t.role.hp = n.role.maxHp();
                            n.save();
                            cc.director.loadScene("main", function () {
                                e("scr_data").itemNum[12] += 1;
                                n.randomEvent[1] += 1;
                                e("scr_public").save();
                                e("scr_effect").playText("Canvas/Text/txt_notify", "爱丽丝在你背后，流下了一滴眼泪，获得【眼泪】*1「恶人卡」*1", 60);
                            });
                        }
                    },
                    3: {
                        text: ["“如果你不能给她呵护和未来，", "那么，请放手。”", "“也许，从一开始就选择不认识，才是对她真正的保护”", "回到认识爱丽丝之前", "好吧，我放弃"],
                        BGM: "",
                        choice1: function () {
                            var t = e("scr_data");
                            e("scr_data2").gameData[0] += 1;
                            t = JSON.parse(cc.sys.localStorage.getItem("dataCopy"));
                            cc.sys.localStorage.setItem("userData", JSON.stringify(t));
                            n.save2();
                            cc.director.loadScene("main", function () {
                                e("scr_data").itemNum[12] += 1;
                                e("scr_public").save();
                                e("scr_effect").playText("Canvas/Text/txt_notify", "爱丽丝在你背后，流下了一滴眼泪，获得【眼泪】*1", 60);
                            });
                        },
                        choice2: function () {
                            t.health += 999;
                            t.distance += 1;
                            t.enemyId = 0;
                            t.role.hp = n.role.maxHp();
                            n.save();
                            cc.director.loadScene("main", function () {
                                e("scr_data").itemNum[12] += 1;
                                e("scr_public").save();
                                e("scr_effect").playText("Canvas/Text/txt_notify", "爱丽丝在你背后，流下了一滴眼泪，获得【眼泪】*1", 60);
                            });
                        }
                    },
                    4: {
                        text: ["“不是你喜欢，", "所以就应该得到。”", "“你太过偏执，才容易遍体鳞伤”", "作者，我要杀了你", "把我复活"],
                        BGM: "",
                        choice1: function () {
                            t.enemyId = 998;
                            t.health += 999;
                            t.role.hp = n.role.maxHp();
                            n.save();
                            cc.director.loadScene("main");
                        },
                        choice2: function () {
                            t.health += 999;
                            t.distance += 1;
                            t.enemyId = 0;
                            t.role.hp = n.role.maxHp();
                            n.save();
                            cc.director.loadScene("main", function () {
                                e("scr_data").itemNum[12] += 1;
                                e("scr_public").save();
                                e("scr_effect").playText("Canvas/Text/txt_notify", "爱丽丝在你背后，流下了一滴眼泪，获得【眼泪】*1", 60);
                            });
                        }
                    },
                    5: {
                        text: ["虽然很不舍，", "但是爱丽丝也需要回家报告平安了...", "摸摸头，道别", "拍拍肩膀，道别"],
                        BGM: "",
                        choice1: function () {
                            t.distance += 1;
                            t.ifFollow[0] = 0;
                            n.save();
                            cc.director.loadScene("main", function () {
                                e("scr_effect").playText("Canvas/Text/txt_notify", "爱丽丝依依不舍的离开了", 60);
                            });
                        },
                        choice2: function () {
                            t.distance += 1;
                            t.choice[5] += 10;
                            t.ifFollow[0] = 0;
                            n.save();
                            cc.director.loadScene("main", function () {
                                e("scr_effect").playText("Canvas/Text/txt_notify", "“我还会来找你玩的！( • ̀ω•́ )✧”", 60);
                            });
                        }
                    },
                    98: {
                        text: ["帕露西好感已满足要求，是否邀请露西成为女主？（如果露西成为女主，其它女主将会被顶掉，且无法再邀请其它女主；如果你拒绝邀请，以后则不会再有机会邀请露西，请考虑清楚！）", "是", "算了"],
                        BGM: "",
                        choice1: function () {
                            t.ifFollow[0] = 0;
                            t.ifFollow[1] = 1;
                            t.publicVar[8] = 1;
                            n.save();
                            cc.director.loadScene("home", function () {
                                e("scr_effect").playText("Canvas/notify", "帕露西成为女主！请好好珍惜吧~", 60);
                            });
                        },
                        choice2: function () {
                            t.publicVar[8] = 1;
                            cc.director.loadScene("home");
                        }
                    },
                    99: {
                        text: ["是否邀请爱丽丝成为女主？（如果爱丽丝成为女主，其它女主将会被顶掉，且无法再邀请其它女主，请考虑清楚）", "是", "算了"],
                        BGM: "",
                        choice1: function () {
                            t.ifFollow[0] = 1;
                            t.ifFollow[1] = 0;
                            n.save();
                            cc.director.loadScene("home", function () {
                                e("scr_effect").playText("Canvas/notify", "爱丽丝成为女主！请好好珍惜吧~", 60);
                            });
                        },
                        choice2: function () {
                            cc.director.loadScene("home");
                        }
                    },
                    1001: {
                        text: ["你没有打败黑幕", "你自己也知道", "你自己浑浑噩噩地说“算了吧，我不是这条命”。“现在，该结束了”，说完，你走出了月都保护圈，在虚空中，一条生命结束了", "", "...全剧终..."],
                        BGM: "",
                        choice1: function () { },
                        choice2: function () {
                            cc.director.loadScene("end");
                        }
                    },
                    1002: {
                        text: ["一年后，在一座人迹罕至的深山中，一间新建的小木屋旁，淡青色的花朵在清晨的阳光下、轻盈地跳起了舞蹈。", "这是房子的男主人，给一位短发女孩精心修建的小花园。", "他对女孩说，“我们在这里相守一辈子吧~”", "...待续...", "", "本游戏已完结，后续待开发"],
                        BGM: "",
                        choice1: function () { },
                        choice2: function () {
                            cc.director.loadScene("end");
                        }
                    },
                    1003: {
                        text: ["半年后，冬日的夜幕悄悄降临；在一所大学门口，嬉笑的学生三三两两的走出校门。", "橘黄色的路灯下，一个穿着银白色荣耀的男孩安静地柱剑等在门口，旁人皆被他强大的气场震惊。", "不一会儿，一个干干净净、绿色眼镜的女孩，焦急的跑出校门，她停在男孩旁边，微笑着拉起他的手，一起消失在寒冬的夜幕中...", "...全剧终...", "", "本游戏已完结，后续待定..."],
                        BGM: "",
                        choice1: function () { },
                        choice2: function () {
                            cc.director.loadScene("end");
                        }
                    }
                };
            },
            startPlot: function () {
                var t = e("scr_data"), n = (e("scr_public"), this.plotId || t.plotId), a = this.plotData()[n], i = a.text, c = i.pop(), o = i.pop(), r = i.length, s = 0, l = cc.find("Canvas/EventText");
                (function () {
                    var e = cc.find("Canvas/Choice");
                    e.stopAllActions();
                    e.opacity = 0;
                    cc.find("Canvas/EventText").removeAllChildren();
                    e.getChildByName("Choice1").targetOff(this);
                    e.getChildByName("Choice2").targetOff(this);
                })();
                this.schedule(function () {
                    this.creatText(l, "plot" + s, i[s]);
                    s++;
                }, 2.5, r - 1);
                this.scheduleOnce(function () {
                    var e = a.choice1, t = a.choice2, n = cc.find("Canvas/Choice/Choice1"), i = cc.find("Canvas/Choice/Choice2");
                    n.getChildByName("choiceText").getComponent("cc.Label").string = o;
                    i.getChildByName("choiceText").getComponent("cc.Label").string = c;
                    if ("" == o) {
                        n.active = !1;
                        cc.find("Canvas/Choice/label").active = !1;
                    }
                    cc.find("Canvas/Choice").runAction(cc.fadeIn(2));
                    n.on("touchstart", e, this);
                    i.on("touchstart", t, this);
                }, 2.5 * (r + 1));
            },
            onLoad: function () {
                this.startPlot();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_public: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "4bdd0LrXWhLypzYw/KwkeQ9", "scr_public");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var n = {
                    itemName: ["土块", "绯想碎片", "p点", "生土", "探女の羽毛", "艾草", "电池碎片", "电池小碎片", "黑曜石", "神械残骸", "50ml皮⑨", "神炎的私房p值", "眼泪"],
                    itemName2: ["高级土", "急支糖浆", "绯探羽睡袋", "绯想剑", "天之羽衣", "小老帝玩偶", "自制风油精", "电池", "八卦炉", "巫女服", "暗影之剑", "银白色荣耀", "皮⑨", "ヾ(❀╹◡╹)ﾉ~", "神佑珠", "圣德披肩", "漂亮石头", "贤明·正直", "录像机", "勇气·坚毅", "骑士剑·残", "提灯小姐姐の胖次", "骑士盾·残", "希望の花", "幻想乡缘起", "平安福", "理信·慎重", "爱丽丝手链", "28号", "黄铜级勇者身份牌", "楼观剑", "悔悟棒", "梦魂", "灵梦的御币", "破碗", "露米娅的发饰", "灵异珠", "月饼", "破碎的天丛云剑", "桃子", "理性点", "真·天之羽衣", "《摄津国风土记逸文》", "狼牙", "捣锤", "石鬼面", "特硬月饼", "兔......兔耳？", "强力胶", "金耳环", "金手镯", "圆形方孔钱", "神降", "秘技「身法」", "神之血", "大洋", "骑士剑", "骑士盾", "终曲", "剑技「纯狐」", "稀有金属灵魂", "赤晶级勇者身份牌", "伤痛刻印", "真·天之羽衣·残", "天之羽衣·残", "圣星石", "贤者之心"],
                    ifNotify: !1,
                    init: function () {
                        var t = cc.find("Canvas/Text"), n = e("scr_data");
                        t.getChildByName("txt_day").getComponent("cc.Label").string = this.regionName() + n.day + "天";
                        t.getChildByName("txt_energy").getComponent("cc.Label").string = n.energy + "/" + this.maxEnergy();
                        t.getChildByName("txt_hunger").getComponent("cc.Label").string = n.hunger + "/" + this.maxHunger();
                        t.getChildByName("txt_health").getComponent("cc.Label").string = "健康  " + n.health;
                        t.getChildByName("txt_hp").getComponent("cc.Label").string = "残机  " + n.role.hp + "/" + this.role.maxHp();
                        t.getChildByName("txt_att").getComponent("cc.Label").string = "攻击  " + this.role.att();
                        t.getChildByName("txt_def").getComponent("cc.Label").string = "防御  " + this.role.def();
                        t.getChildByName("txt_money").getComponent("cc.Label").string = "p值  " + (n.money / 10).toFixed(1);
                        t.getChildByName("txt_distance").getComponent("cc.Label").string = "离家  " + n.distance + "km";
                        t.getChildByName("txt_item1").getComponent("cc.Label").string = "急支糖浆  " + n.itemNum2[1];
                        t.getChildByName("txt_item2").getComponent("cc.Label").string = "食物  " + n.itemNum[0] + "+" + n.itemNum2[0];
                        this.mainUITextColor();
                        this.buttonState();
                        this.showPlace();
                    },
                    mainUITextColor: function () {
                        var t = e("scr_data"), n = cc.find("Canvas/Button"), a = "";
                        t.hunger <= 0 && (a += "【饥饿】");
                        t.skillLv[4] >= 1 && (a += "【网瘾】");
                        t.buffState[0] >= 1 && (a += "【暴躁】");
                        n.getChildByName("txt_state").getComponent("cc.Label").string = a;
                    },
                    showPlace: function () {
                        var t = e("scr_data");
                        if (300 == t.distance) {
                            var n = cc.find("Canvas/Button/txt_place").getComponent("cc.Label");
                            0 == t.publicVar[13] ? n.string = "「月都外围」" : 1 == t.publicVar[13] ? n.string = "「玉兔园林」" : 2 == t.publicVar[13] ? n.string = "「市中心」" : 3 == t.publicVar[13] && (n.string = "「山洞" + t.publicVar3[1] + "米」");
                        }
                    },
                    buttonState: function () {
                        var t = e("scr_data"), n = cc.find("Canvas/Button"), a = n.getChildByName("button_forward"), i = n.getChildByName("button_shop"), c = n.getChildByName("button_explore");
                        t.button[0] ? a.active = !0 : a.active = !1;
                        t.button[1] && 0 == t.publicVar3[3] ? i.active = !0 : i.active = !1;
                        t.button[2] ? c.active = !0 : c.active = !1;
                    },
                    save: function () {
                        var t = e("scr_data");
                        cc.sys.localStorage.setItem("userData", JSON.stringify(t));
                    },
                    save2: function () {
                        var t = e("scr_data2");
                        cc.sys.localStorage.setItem("data2", JSON.stringify(t));
                    },
                    saveCopy: function () {
                        var t = e("scr_dataCopy");
                        cc.sys.localStorage.setItem("dataCopy", JSON.stringify(t));
                    },
                    creatText: function (e, t, n, a, i, c) {
                        var o = new cc.Node(t);
                        o.addComponent(cc.Label);
                        o.parent = e;
                        o.setPosition(n, a);
                        o.setContentSize(600, 300);
                        o.setAnchorPoint(.5, .5);
                        o.getComponent(cc.Label).overflow = 3;
                        o.getComponent(cc.Label).string = i;
                        o.getComponent(cc.Label).lineHeight = 60;
                        o.getComponent(cc.Label).fontSize = 40;
                    },
                    role: {
                        maxHp: function () {
                            var t = e("scr_data"), n = t.role.maxHp + 40 * t.itemNum2[4] + 1000 * t.itemNum2[1001] + 200 * t.itemNum2[11] - 20 * t.itemNum2[45] + 5000 * t.itemNum2[41] + 50 * t.skillLv[2] + 500 * t.itemNum2[62] + 500000 * t.itemNum2[57] + 5 * t.itemNum2[35] + 1 * t.itemNum2[31] + 20 * t.itemNum2[32] + 100 * t.skillLv[15] + 150 * t.skillLv[19] + 25 * t.itemNum2[22] + 8 * t.itemNum2[21] + t.publicVar3[16];
                            n = Math.round(n * (1 + t.publicVar[15] / 1e3 + t.itemNum2[42] / 100 + 20 * t.itemNum2[62] / 100 + t.itemNum2[15] / 100 - 20 * t.itemNum2[59] / 100 + t.itemNum2[49] / 50 + t.publicVar3[5] / 100));
                            return n;
                        },
                        att: function () {
                            var t = e("scr_data"), n = 1;
                            1 == t.publicVar && (n = 1);
                            var a = t.role.att + 8 * t.itemNum2[3] + 150000 * t.itemNum2[58] + 30 * t.itemNum2[46] + 17 * t.itemNum2[8] + 12 * t.itemNum2[44] + 200 * t.itemNum2[29] - 50 * t.itemNum2[1000] - 100 * t.itemNum2[1001] + 20 * t.itemNum2[38] - 5 * t.itemNum2[34] + 496187 * t.itemNum2[30] + 5000 * t.itemNum2[56] + 800 * t.itemNum2[57] + 2 * t.itemNum2[45] + 500 * t.itemNum2[62] + 1 * t.itemNum2[31] + 3 * t.itemNum2[33] + 40 * t.itemNum2[10] + 10 * t.skillLv[11] + 20 * t.skillLv[18] + 30 * t.skillLv[22] + 5 * t.itemNum2[20] + 5 * t.itemNum2[21] + t.publicVar3[4];
                            "undefined" != typeof t.ifFollow[0] && 1 == t.ifFollow[0] && (a += parseInt(t.choice[5] / 4 + 10));
                            a = Math.round(a * (1 - t.skillLv[4] * n) * (1 + t.publicVar[17] / 1e3 + t.itemNum2[42] / 100 + 6 * t.itemNum2[58] + 30 * t.itemNum2[59] / 100 + 20 * t.itemNum2[62] / 100 + t.itemNum2[15] / 100 + 10 * t.itemNum2[19] / 100 + t.publicVar3[5] / 100));
                            return a;
                        },
                        def: function () {
                            var t = e("scr_data"), n = 1;
                            1 == t.publicVar && (n = 1);
                            var a = t.role.def + 8 * t.itemNum2[9] + 50 * t.itemNum2[29] + 3 * t.itemNum2[36] + 1 * t.itemNum2[31] + 15 * t.itemNum2[11] + 500 * t.itemNum2[62] - 100 * t.itemNum2[1001] + 5 * t.itemNum2[34] + 6000 * t.itemNum2[57] + 100 * t.itemNum2[1000] + 2 * t.itemNum2[45] + 2 * t.itemNum2[22] + 10 * t.skillLv[8] + 20 * t.skillLv[16] + 30 * t.skillLv[20] + 6 * t.itemNum2[21] + t.publicVar3[10];
                            a = Math.round(a * (1 - t.skillLv[4] * n) * (1 + t.publicVar[16] / 1e3 + t.itemNum2[49] / 50 - 20 * t.itemNum2[59] / 100 + 20 * t.itemNum2[62] / 100 + t.itemNum2[15] / 100 + t.itemNum2[42] / 100 + t.publicVar3[5] / 100));
                            return a;
                        }
                    },
                    ifMaxHp: function () {
                        var t = e("scr_data"), n = this.role.maxHp();
                        t.role.hp > n && (t.role.hp = n);
                    },
                    creatNode: function () {
                        var e = this;
                        cc.loader.loadRes("button1", cc.SpriteFrame, function (t, n) {
                            var a = new cc.Node("NewSprite");
                            a.addComponent(cc.Sprite).spriteFrame = n;
                            a.parent = e.node;
                        });
                    },
                    regionId: function () {
                        var t = 0, n = [100, 300], a = e("scr_data").distance;
                        a < n[0] && (t = 1e3);
                        a == n[0] && (t = 2e3);
                        a > n[0] && a < n[1] && (t = 3e3);
                        a == n[1] && (t = 4e3);
                        return t;
                    },
                    regionName: function () {
                        var t = 0, n = [100, 300], a = e("scr_data").distance;
                        a < n[0] && (t = "荒野.");
                        a == n[0] && (t = "人间之里.");
                        a > n[0] && a < n[1] && (t = "妖怪之山.");
                        a == n[1] && (t = "月都.");
                        return t;
                    },
                    maxEnergy: function () {
                        var t = e("scr_data"), n = t.skillLv, a = t.maxEnergy + 10 * n[1] + 20 * n[7] + 30 * n[12] + 11 * t.itemNum2[2] + 200 * t.itemNum2[62] + 300 * t.itemNum2[61] + t.friendSkill1[1] * t.ifFollow[0] * 20 + 10 * t.publicVar[18];
                        return a;
                    },
                    maxHunger: function () {
                        var t = e("scr_data"), n = t.skillLv, a = t.maxHunger + 50 * n[13] + 20 * t.itemNum2[37];
                        return a;
                    },
                    autoEat: function () {
                        var t = e("scr_data");
                        if (t.hunger <= 0) {
                            if (t.itemNum[0] >= 1) {
                                t.itemNum[0] -= 1;
                                t.orderTimes[5] += 1;
                                t.hunger += 20;
                                100 * Math.random() < 15 && (t.health += 1);
                                this.save();
                                return !0;
                            }
                            if (t.itemNum2[0] >= 1) {
                                t.itemNum2[0] -= 1;
                                t.orderTimes[2] += 1;
                                t.hunger += 80;
                                this.save();
                                return !0;
                            }
                            return !0;
                        }
                        return !1;
                    },
                    playBGM: function (e) {
                        cc.audioEngine.stopAll();
                        var t = cc.game._persistRootNodes;
                        for (var n in t) var a = t[n].getComponent("scr_BGM")[e];
                        cc.audioEngine.play(a, !1, 1);
                    },
                    ifGameOver: function () {
                        if (e("scr_data").health <= 0) {
                            var t = this.regionId();
                            1e3 == t && cc.director.loadScene("over");
                            t > 1e3 && cc.director.loadScene("over2");
                        }
                    },
                    showText: function (e, t, n, a) {
                        var i = new cc.Node(t);
                        i.addComponent(cc.Label);
                        i.parent = e;
                        i.setPosition(0, 0);
                        i.opacity = 0;
                        i.runAction(cc.fadeIn(3));
                        i.color = new cc.Color(255, 255, 255);
                        i.getComponent(cc.Label).overflow = 3;
                        i.getComponent(cc.Label).horizontalAlign = 1;
                        i.setContentSize(600, 300);
                        i.getComponent(cc.Label).string = n;
                        i.getComponent(cc.Label).lineHeight = a || 40;
                        i.getComponent(cc.Label).fontSize = 40;
                    },
                    showText2: function (e, t, n, a) {
                        var i = new cc.Node(t);
                        i.addComponent(cc.Label);
                        i.parent = e;
                        i.setPosition(0, 0);
                        i.color = new cc.Color(115, 115, 115);
                        i.getComponent(cc.Label).overflow = 3;
                        i.setContentSize(630, 300);
                        i.getComponent(cc.Label).string = n;
                        i.getComponent(cc.Label).lineHeight = a;
                        i.getComponent(cc.Label).fontSize = 32;
                    }
                };
                t.exports = n;
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_dataCopy: "scr_dataCopy"
    }],
    scr_quitGame: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "b8981TVaLZEQZriw0Ikoosd", "scr_quitGame");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                cc.eventManager.addListener({
                    event: cc.EventListener.KEYBOARD,
                    onKeyPressed: function (e, t) {
                        e === cc.KEY.back && cc.director.end();
                    }
                }, this.node);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_readConfession: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "edbeey5ue9CDZU2M2ziBjld", "scr_readConfession");
        cc.Class({
            extends: cc.Component,
            properties: {},
            read: function () {
                var t = ["1111111", "我是个失败的人", "aaa", "bbb", "ccc"], n = e("scr_effect"), a = e("scr_data").achieve, i = Math.random(), c = t.length, o = parseInt(a / 100);
                o > c - 5 && (o = c - 5);
                var r = Math.round(4 * Math.random() + o);
                i > .5 ? n.playText("Canvas/Text/txt_confession", "我该做点什么呢？", 120) : n.playText("Canvas/Text/txt_confession", t[r], 120);
            },
            onLoad: function () {
                this.schedule(this.read, 30);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect"
    }],
    scr_restDetermine: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "64f6f/B7StMlZJx3Vgs0Rn/", "scr_restDetermine");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("event");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_rest: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "6fbc4dkoxJCWoP/GvoxW/9l", "scr_rest");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t) {
                var n = new cc.Node(e);
                n.addComponent(cc.Label);
                n.parent = cc.find("Canvas/SkillShow");
                n.setPosition(0, 0);
                n.color = new cc.Color(255, 255, 255);
                n.getComponent(cc.Label).overflow = 3;
                n.getComponent(cc.Label).horizontalAlign = 0;
                n.setContentSize(600, 300);
                n.getComponent(cc.Label).string = t;
                n.getComponent(cc.Label).lineHeight = 60;
                n.getComponent(cc.Label).fontSize = 40;
            },
            restMain: function () {
                var t = e("scr_data"), n = e("scr_public"), a = t.skillLv, i = this;
                (function () {
                    t.publicVar2[20] = parseInt(100 * Math.random() - 40);
                    t.publicVar[14] = parseInt(50 * Math.random());
                    t.publicVar3[4] = 0;
                    t.publicVar3[9] = 0;
                    t.publicVar3[10] = 0;
                    t.publicVar3[11] = 0;
                    t.publicVar3[16] = 0;
                    t.publicVar3[17] = 0;
                    t.publicVar3[18] = 0;
                    0 == t.publicVar3[2] ? t.publicVar[13] = 0 : t.publicVar[13] = 1;
                    t.publicVar3[15] = 0;
                    t.plotId = 0;
                })();
                (function () {
                    t.day += 1;
                    cc.find("Canvas/Day").getComponent("cc.Label").string = "第" + t.day + "天";
                })();
                n.autoEat();
                (function () {
                    var e = 3 * t.orderTimes[1] - t.orderTimes[4] + 5, n = 100 * Math.random();
                    1 == t.publicVar[1] && (e = 5 + t.orderTimes[1] - t.orderTimes[4]);
                    if (n < e) {
                        t.publicVar2[8] += 1;
                        t.skillLv[4] = 1;
                        i.creatText("smoke", "【网瘾】发作！");
                    } else t.skillLv[4] = 0;
                })();
                (function () {
                    cc.find("Canvas/energy/text");
                    var e = 0, a = n.maxEnergy();
                    t.energy += a;
                    t.energy > a && (t.energy = a);
                    if (c()) {
                        e = 20;
                        t.energy += e;
                    }
                    cc.find("Canvas/AttrShow/energy/text").getComponent("cc.Label").string = "精力 +" + (a + e) + "（" + t.energy + "/" + a + "）";
                })();
                (function () {
                    if (t.itemNum2[6] > 0) {
                        var e = 20 * t.itemNum2[6];
                        n.role.maxHp();
                        c() && (e *= 2);
                        t.role.hp += e;
                        n.ifMaxHp();
                        cc.find("Canvas/AttrShow/hp/text").getComponent("cc.Label").string = "残机 +" + e + "（" + t.role.hp + "/" + n.role.maxHp() + "）";
                    } else cc.find("Canvas/AttrShow/hp").active = !1;
                })();
                (function () {
                    var e = n.regionId();
                    1e3 == e && (t.stayDay[0] += 1);
                    2e3 == e && (t.stayDay[1] += 1);
                    3e3 == e && (t.stayDay[2] += 1);
                    4e3 == e && (t.stayDay[3] += 1);
                })();
                (function () {
                    if (100 * Math.random() < 20) {
                        var e = function () {
                            var e = 100 * Math.random(), a = n.regionId(), i = 800, c = 10 * (t.itemNum2[19] - 1) + 1;
                            if (e < 70) {
                                var o = t.randomEvent[3], r = [800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 881, 882, 0];
                                i = r[o];
                            } else if (4e3 == a) {
                                var o = t.randomEvent[3], r = [800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 881, 882, 0];
                                i = r[o];
                            } else s = t.randomEvent[4], i = [700, 701, 702, 703, 704, 705, 0][s];
                            var s;
                            t.day >= 21 && 1e3 == a && (i = 997);
                            t.day >= 83 && 3e3 == a && (i = 996);
                            e < c && (i = 900003);
                            t.day >= 178 && (i = 0);
                            return i;
                        }();
                        0 != e && (t.enemyId = e);
                    }
                })();
                !function () {
                    if (100 == t.distance && t.stayDay[1] >= 23) {
                        t.button[0] = !0;
                        t.button[1] = !0;
                    }
                }();
                (function () {
                    (function () {
                        if (t.hunger <= 0) {
                            t.health -= 5;
                            i.creatText("hunger", "【饥饿】健康值降低5点！");
                        }
                    })();
                    (function () {
                        var e = 100 * Math.random(), n = t.itemNum2[5];
                        if (t.itemNum2[5] > 0 && e < 30) {
                            var a = 100 * Math.random();
                            if (a <= 5) {
                                t.itemNum[3] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「生土」*" + n);
                                return !0;
                            }
                            if (a > 5 && a <= 10) {
                                t.itemNum[5] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「艾草」*" + n);
                                return !0;
                            }
                            if (a > 10 && a <= 15) {
                                t.itemNum[1] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「绯想碎片」*" + n);
                                return !0;
                            }
                            if (a > 15 && a <= 20) {
                                t.itemNum[2] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「p点」*" + n);
                                return !0;
                            }
                            if (a > 20 && a <= 30) {
                                t.itemNum[3] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「生肉」*" + n);
                                return !0;
                            }
                            if (a > 30 && a <= 40) {
                                t.itemNum[4] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「探女の羽毛」*" + n);
                                return !0;
                            }
                            if (a > 40 && a <= 50) {
                                t.itemNum[5] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「艾草」*" + n);
                                return !0;
                            }
                            if (a > 50 && a <= 60) {
                                t.itemNum[6] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「电池碎片」*" + n);
                                return !0;
                            }
                            if (a > 60 && a <= 80) {
                                t.itemNum[7] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「电池小碎片」*" + n);
                                return !0;
                            }
                            if (a > 80 && a <= 83) {
                                t.itemNum[8] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「黑曜石」*" + n);
                                return !0;
                            }
                            if (a > 83 && a <= 86) {
                                t.itemNum[9] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「神械残骸」*" + n);
                                return !0;
                            }
                            if (a > 86 && a <= 90) {
                                t.itemNum[10] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「50ml皮⑨」*" + n);
                                return !0;
                            }
                            if (a > 90) {
                                t.itemNum2[1] += n;
                                i.creatText("skill1", "【小老帝玩偶】获得「急支糖浆」*" + n);
                            }
                        }
                    })();
                    (function () {
                        if (a[10] > 0) {
                            var e = 100 * Math.random();
                            if (e < 40) {
                                var n = a[10];
                                c() && (n *= 2);
                                t.health += n;
                                i.creatText("skill2", "【自愈】健康值+" + n);
                            }
                        }
                    })();
                    (function () {
                        var e = 100 * Math.random();
                        if (a[6] > 0 && e < 40) {
                            var n = a[6] + parseInt(t.randomEvent[6] / 10);
                            t.money += n;
                            i.creatText("skill3", "【英雄】获得" + (n / 10).toFixed(1) + "元");
                        }
                    })();
                    (function () {
                        var e = t.itemNum2[13];
                        if (e > 0) {
                            var n = 2 * e;
                            t.money += n;
                            i.creatText("getMoney", "【ヾ(❀╹◡╹)ﾉ~】获得" + (n / 10).toFixed(1) + "元");
                        }
                    })();
                    (function () {
                        var e = 100 * Math.random();
                        if (t.skillLv[26] > 0 && e < 30) {
                            t.energy += parseInt(.3 * n.maxEnergy());
                            i.creatText("spirit", "【不屈的精神力】额外恢复30%精力！");
                        }
                    })();
                    (function () {
                        var e = 100 * Math.random(), n = t.publicVar[0] / 3;
                        if (e < n) {
                            t.energy -= parseInt(.5 * t.energy);
                            i.creatText("hunger", "【失眠】精力-50%！");
                        }
                    })();
                    (function () {
                        if (1 == t.ifFollow[0] && 0 == t.publicVar[2]) {
                            t.publicVar2[10] += 1;
                            t.choice[5] -= 1;
                            i.creatText("ifEat", "【不开森】爱丽丝好感-1（哼！）");
                        }
                        t.publicVar[2] = 0;
                    })();
                    (function () {
                        if (t.publicVar2[17] > 0) {
                            var e = 10 * Math.random() + 1;
                            t.publicVar2[18] += e;
                        }
                    })();
                    (function () {
                        if (t.publicVar2[17] > 0 && t.itemNum2[16] > 0) {
                            var e = t.itemNum2[16], n = 2 * e, a = parseInt(n * t.publicVar2[21] / 10), c = Math.max(parseInt(n - a + 7 - t.publicVar2[21] + 3), 0);
                            t.money += a;
                            t.publicVar2[18] += n - a;
                            t.itemNum2[16] = 0;
                            t.publicVar[7] += c;
                            i.creatText("sell", "【出售】漂亮石头" + e + "个，总售额" + (n / 10).toFixed(1) + "元，你分到" + (a / 10).toFixed(1) + "元！露西好感+" + c);
                        }
                    })();
                    (function () {
                        if (1 == t.ifFollow[1] && t.friendSkill[2] > 0) {
                            var e = 100 * Math.random(), n = Math.max(parseInt(t.publicVar[7] / 15 + 25), 25);
                            if (e < n) {
                                var a = parseInt(.02 * t.publicVar2[18]);
                                t.publicVar2[18] -= a;
                                t.money += a;
                                i.creatText("sell", "【爱心】露西给了你" + (a / 10).toFixed(1) + "元零p值！");
                            }
                        }
                    })();
                    (function () {
                        if (1 == t.ifFollow[1] && t.friendSkill[7]) {
                            var e = 100 * Math.random(), n = Math.max(parseInt(t.publicVar[7] / 10 + 20), 20);
                            if (e < n) {
                                t.orderTimes[4] += 1;
                                i.creatText("reduceSmoke", "【监督】网瘾降低1%！");
                            }
                        }
                    })();
                    (function () {
                        if (t.publicVar3[5] > 0) {
                            var e = parseInt(.2 * t.publicVar3[5] + 1);
                            t.publicVar3[5] -= e;
                            t.publicVar3[5] < 0 && (t.publicVar3[5] = 0);
                            i.creatText("gameBuff", "【兴奋消退】玩游戏获得的属性加成效果消退" + e + "%，还剩下" + t.publicVar3[5] + "%");
                        }
                    })();
                    (function () {
                        if (t.stayDay[3] > 3) {
                            t.publicVar3[7] += parseInt(15 * Math.random() + 5);
                            t.publicVar3[8] += 1;
                        }
                    })();
                })();
                (function () {
                    var e = 40;
                    Math.random();
                    t.hunger <= 0 && (e = 0);
                    t.hunger -= e;
                    cc.find("Canvas/AttrShow/hunger/text").getComponent("cc.Label").string = "饥饿 -" + e + "（" + t.hunger + "/" + n.maxHunger() + "）";
                })();
                (function () {
                    if (9 == t.stayDay[2]) {
                        var n = e("scr_dataCopy");
                        n = JSON.parse(cc.sys.localStorage.getItem("userData"));
                        cc.sys.localStorage.setItem("dataCopy", JSON.stringify(n));
                    }
                })();
                n.save();
                function c() {
                    return 1 == t.ifFollow[0] && 1 == t.friendSkill1[4];
                }
            },
            onLoad: function () {
                var t = 0;
                e("scr_data");
                this.restMain();
                cc.find("Canvas/Day").runAction(cc.fadeIn(1));
                this.schedule(function () {
                    var e = ["Canvas/AttrShow", "Canvas/SkillShow", "Canvas/Determine"];
                    "Canvas/Determine" == e[t] && (cc.find("Canvas/Determine").active = !0);
                    cc.find(e[t]).runAction(cc.fadeIn(1));
                    t++;
                }, 1, 2);
                e("scr_public").save();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_dataCopy: "scr_dataCopy",
        scr_public: "scr_public"
    }],
    scr_shop2: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "83a81yV4XxNdIIu5OySpYvE", "scr_shop2");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_effect"), a = e("scr_public"), i = cc.find("Canvas/UI1"), c = i.getChildByName("choice1"), o = i.getChildByName("choice2"), r = i.getChildByName("choice3"), s = i.getChildByName("choice4"), l = i.getChildByName("choice5"), u = i.getChildByName("choice6"), p = i.getChildByName("choice7");
                f();
                (function () {
                    c.on("touchstart", d, this);
                    o.on("touchstart", m, this);
                    r.on("touchstart", h, this);
                    s.on("touchstart", v, this);
                    l.on("touchstart", y, this);
                    u.on("touchstart", g, this);
                    p.on("touchstart", b, this);
                })();
                function f() {
                    cc.find("Canvas/money").getComponent("cc.Label").string = "神炎的私房p值：" + t.itemNum[11] + " / p值:" + (t.money / 10).toFixed(1);
                    cc.find("Canvas/UI1/choice5/text").getComponent("cc.Label").string = "勇气·坚毅（需" + (10 + 10 * t.itemNum2[19]) + "个神炎的私房p值）";
                    cc.find("Canvas/UI1/choice7/text").getComponent("cc.Label").string = "出售所有漂亮石头（每个1毛，已有" + t.itemNum2[16] + "个）";
                }
                function d() {
                    if (t.itemNum[11] >= 1) {
                        t.itemNum[11] -= 1;
                        t.money += 50;
                        a.save();
                        n.playText("Canvas/notify", "获得5元！", 60);
                        f();
                    } else n.playText("Canvas/notify", "神炎的私房p值不足！", 60);
                }
                function m() {
                    if (t.itemNum[11] >= 4 && 0 == t.publicVar2[29]) {
                        t.itemNum[11] -= 4;
                        t.publicVar2[29] = 1;
                        n.playText("Canvas/notify", "获得《哲♂学》！请到看书界面使用。", 60);
                        f();
                    } else t.itemNum[11] < 4 ? n.playText("Canvas/notify", "神炎的私房p值不足！", 60) : n.playText("Canvas/notify", "你已拥有此书！", 60);
                }
                function h() {
                    if (t.money >= 60 && 0 == t.publicVar2[23]) {
                        t.money -= 60;
                        t.publicVar2[23] = 1;
                        n.playText("Canvas/notify", "获得《搬砖，从开始到暴毙》！请到看书界面使用。", 60);
                        f();
                    } else t.money < 60 ? n.playText("Canvas/notify", "p值不足！", 60) : n.playText("Canvas/notify", "你已拥有此书！", 60);
                }
                function v() {
                    if (t.money >= 60 && 0 == t.publicVar2[26]) {
                        t.money -= 60;
                        t.publicVar2[26] = 1;
                        n.playText("Canvas/notify", "获得《如何吃能更加抗揍》！请到看书界面使用。", 60);
                        f();
                    } else t.money < 60 ? n.playText("Canvas/notify", "p值不足！", 60) : n.playText("Canvas/notify", "你已拥有此书！", 60);
                }
                function y() {
                    var e = 10 + 10 * t.itemNum2[19];
                    if (t.itemNum[11] >= e) {
                        t.itemNum[11] -= e;
                        t.itemNum2[19] += 1;
                        n.playText("Canvas/notify", "获得「勇气·坚毅」！", 60);
                        f();
                    } else n.playText("Canvas/notify", "神炎的私房p值不足！", 60);
                }
                function g() {
                    if (t.money >= 50) {
                        t.money -= 50;
                        t.itemNum2[14] += 1;
                        n.playText("Canvas/notify", "获得「神佑珠」*1", 60);
                        f();
                    } else n.playText("Canvas/notify", "p值不够！", 60);
                }
                function b() {
                    if (t.itemNum2[16] > 0) {
                        var e = t.itemNum2[16];
                        t.money += e;
                        t.itemNum2[16] -= e;
                        n.playText("Canvas/notify", "出售「漂亮石头」*" + e + "，获得" + (e / 10).toFixed(1) + "元！", 60);
                        f();
                    } else n.playText("Canvas/notify", "你身上没有漂亮石头~", 60);
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_shop3: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "bddbc1AxUZNv63YXc4kCfkQ", "scr_shop3");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = this, n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = cc.find("Canvas/UI1"), o = cc.find("Canvas/UI2"), r = c.getChildByName("choice1"), s = c.getChildByName("choice2"), l = c.getChildByName("choice3"), u = c.getChildByName("choice4"), p = c.getChildByName("choice5"), f = (c.getChildByName("choice6"),
                    [70, 70, 70, 70, 50]), d = [["披风", 15, 1, 100], ["提灯小姐姐の胖次", 21, 1, 20], ["爱丽丝手链", 27, 1, 20], ["理信·慎重", 26, 1, 20], ["骑士剑·残", 20, 1, 20], ["幻想乡缘起", 24, 1, 20]];
                (function () {
                    c.active = !0;
                    o.active = !0;
                    o.scale = 0;
                    t.cureTimes = 0;
                    t.gameTime1 = n.publicVar3[6];
                    t.gameTime2 = n.publicVar3[6];
                    t.r1 = 100 * Math.random();
                    t.r2 = 100 * Math.random();
                    t.r3 = 100 * Math.random();
                    t.r4 = 100 * Math.random();
                    t.r5 = 100 * Math.random();
                    t.makeMoneyRate = (50 * Math.random() + 25).toFixed(1);
                    t.makeMoneyProfit = (50 * Math.random()).toFixed(1);
                    t.r3 < f[2] && (l.getChildByName("text").getComponent("cc.Label").string = "三楼：炎酱料理");
                    t.itemId = parseInt(5.99 * Math.random());
                    t.itemDiscount = parseInt(30 * Math.random() + 60);
                    t.itemName = d[t.itemId][0];
                    t.itemPrice = d[t.itemId][3];
                    t.finalPrice = parseInt(t.itemPrice * t.itemDiscount / 100);
                })();
                C();
                (function () {
                    c.getChildByName("back").on("touchstart", function () {
                        e("scr_public").save();
                        cc.director.loadScene("main");
                    }, this);
                    t.r1 < f[0] ? r.on("touchstart", b, r) : r.on("touchstart", I, r);
                    t.r2 < f[1] ? s.on("touchstart", _, s) : s.on("touchstart", I, s);
                    t.r3 < f[2] ? l.on("touchstart", v, l) : l.on("touchstart", I, l);
                    t.r4 < f[3] ? u.on("touchstart", h, u) : u.on("touchstart", I, u);
                    n.publicVar3[7] > 800 ? p.on("touchstart", E, p) : t.r5 < f[4] ? p.on("touchstart", V, p) : p.on("touchstart", m, p);
                    o.getChildByName("choice1").on("touchstart", y, this);
                    o.getChildByName("choice2").on("touchstart", g, this);
                    o.getChildByName("back").on("touchstart", function () {
                        o.runAction(cc.scaleTo(.3, 0));
                        (function () {
                            N();
                            c.runAction(cc.scaleTo(.3, 1));
                        })();
                    }, this);
                })();
                x();
                function m() {
                    if (t.cureTimes >= 3) a.playText("Canvas/notify", "“啊哈哈哈哈哈~有些累了...下次再来哈~”", 60); else if (n.money >= 30) {
                        var e = Math.max(100 - n.publicVar3[8], 0), i = 100 * Math.random();
                        n.publicVar3[7] -= 30;
                        t.cureTimes += 1;
                        n.money -= 30;
                        if (i < e) {
                            n.orderTimes[4] += 2;
                            a.playText("Canvas/notify", "按摩成功！网瘾减少2%，按摩店总资产+3元", 60);
                        } else {
                            n.health -= 2;
                            a.playText("Canvas/notify", "按摩失败...健康减2点...按摩店总资产+3元", 60);
                        }
                        C();
                    } else a.playText("Canvas/notify", "没p值！", 60);
                }
                function h() {
                    if (t.gameTime2 - t.gameTime1 > 30) a.playText("Canvas/notify", "“小兄弟，没身份证的人只能临时上机两小时哦，我怕警察来查，请下次再玩吧~”", 60); else if (20 == n.publicVar3[6]) {
                        n.money += 1;
                        n.publicVar3[6] += 1;
                        a.playText("Canvas/notify", "你玩游戏的热情让网吧老板很是感动，老板鼓励你坚持梦想，并奖励你0.1元，~", 60);
                    } else if (50 == n.publicVar3[6]) {
                        n.money += 5;
                        n.publicVar3[6] += 1;
                        a.playText("Canvas/notify", "你成功晋级青铜段位，老板流出喜悦的泪水，并奖励你0.5元~", 60);
                    } else if (90 == n.publicVar3[6]) {
                        n.hunger = i.maxHunger();
                        n.publicVar3[6] += 1;
                        a.playText("Canvas/notify", "你成功晋级白银段位，老板高兴的请你吃了一顿麻辣烫，饥饿全恢复！", 60);
                    } else if (140 == n.publicVar3[6]) {
                        n.money += 20;
                        n.itemNum2[25] += 1;
                        n.publicVar3[6] += 1;
                        C();
                        a.playText("Canvas/notify", "你成功晋级黄金段位，老板奖励你2元p值，和一件个平安福~", 60);
                    } else if (200 == n.publicVar3[6]) {
                        n.itemNum2[21] += 1;
                        n.itemNum2[22] += 1;
                        n.publicVar3[6] += 1;
                        a.playText("Canvas/notify", "你成功晋级白金段位，老板赠送你她的珍藏，获得【骑士盾·残】*1和【提灯小姐姐の胖次】*1！", 60);
                    } else if (300 == n.publicVar3[6]) {
                        n.hunger = i.maxHunger();
                        n.publicVar3[6] += 1;
                        C();
                        a.playText("Canvas/notify", "你成功晋级砖石段位，老板兴奋的邀你去吃饭，饥饿全恢复！", 60);
                    } else if (450 == n.publicVar3[6]) {
                        n.itemNum2[17] += 1;
                        n.itemNum2[26] += 1;
                        n.itemNum2[27] += 1;
                        n.publicVar3[6] += 1;
                        a.playText("Canvas/notify", "你成功晋级大师段位，老板赠送你一些收集品，获得【爱丽丝手链】*1【理信·慎重】*1【贤明·正直】*1！", 60);
                    } else if (700 == n.publicVar3[6]) {
                        n.role.att += 50;
                        n.role.def += 25;
                        n.role.maxHp += 250;
                        n.publicVar3[6] += 1;
                        i.save();
                        a.playText("Canvas/notify", "你成功晋级王者段位，老板授予你「王的男人」称号，攻击永久+50，防御永久+25，残机永久+250！", 60);
                    } else if (n.money >= 1) {
                        var e = Math.min((40 + n.publicVar3[6] / 10).toFixed(1), 75), c = 100 * Math.random();
                        n.money -= 1;
                        if (c < e) {
                            n.publicVar3[5] < 99 && (n.publicVar3[5] += 1);
                            n.publicVar3[6] += 1;
                            t.gameTime2 += 1;
                            a.playText("Canvas/notify", "游戏胜利！炒开森~攻防血提高1%（临时效果，随天数缓慢衰减）。游戏技术+1", 60);
                            C();
                        } else {
                            n.publicVar3[5] = 0;
                            n.publicVar3[6] += 1;
                            t.gameTime2 += 1;
                            a.playText("Canvas/notify", "游戏失败！不开心~属性加成消失...游戏技术+1", 60);
                            C();
                        }
                    } else a.playText("Canvas/notify", "没p值...", 60);
                }
                function v() {
                    c.runAction(cc.scaleTo(.3, 0));
                    (function () {
                        N();
                        o.runAction(cc.scaleTo(.3, 1));
                    })();
                }
                function y() {
                    if (n.hunger > i.maxHunger()) a.playText("Canvas/notify", "已经吃不下啦...", 60); else if (n.itemNum[3] >= 4 && n.itemNum[0] >= 5) {
                        n.hunger += 350;
                        n.maxHunger += 5;
                        n.itemNum[3] -= 4;
                        n.itemNum[0] -= 5;
                        n.publicVar3[13] += 1;
                        a.playText("Canvas/notify", "饥饿+350，最大饥饿值提高5点！", 60);
                        C();
                    } else a.playText("Canvas/notify", "食材不足~", 60);
                }
                function g() {
                    if (n.hunger > i.maxHunger()) a.playText("Canvas/notify", "已经吃不下啦...", 60); else if (n.itemNum[0] >= 5) {
                        n.hunger += 100;
                        n.health += 1;
                        n.itemNum[0] -= 5;
                        a.playText("Canvas/notify", "饥饿+100，健康值+1！", 60);
                        C();
                    } else a.playText("Canvas/notify", "食材不足~", 60);
                }
                function b() {
                    var e = 100 * Math.random();
                    if (0 == t.makeMoneyRate) a.playText("Canvas/notify", "“今日已投资，请明日再来吧~”", 60); else if (0 == n.money) a.playText("Canvas/notify", "“不好意思，请你出去~”", 60); else if (n.money > 500) a.playText("Canvas/notify", "“不好意思，你已超过国家监管限定金额，请你去实体银行吧，我们只是网上的小银行~”", 60); else if (e < t.makeMoneyRate) {
                        var i = parseInt(n.money * t.makeMoneyProfit / 100);
                        n.money += i;
                        a.playText("Canvas/notify", "投资成功！p值增加" + t.makeMoneyProfit + "%(+" + (i / 10).toFixed(1) + ")", 60);
                        t.makeMoneyRate = 0;
                        C();
                    } else {
                        i = parseInt(n.money * t.makeMoneyProfit / 100);
                        n.money -= i;
                        a.playText("Canvas/notify", "投资失败...p值缩水" + t.makeMoneyProfit + "%(-" + (i / 10).toFixed(1) + ")", 60);
                        t.makeMoneyRate = 0;
                        C();
                    }
                }
                function _() {
                    if (t.itemDiscount >= 9999) a.playText("Canvas/notify", "商品已售罄~", 60); else if (n.money >= t.finalPrice) {
                        var e = d[t.itemId][1], i = d[t.itemId][2];
                        n.money -= t.finalPrice;
                        n.itemNum2[e] += i;
                        a.playText("Canvas/notify", "获得【" + t.itemName + "】*" + i, 60);
                        t.itemDiscount = 9999;
                        C();
                        x();
                    } else a.playText("Canvas/notify", "p值不足！", 60);
                }
                function x() {
                    t.itemDiscount >= 9999 ? s.getChildByName("text").getComponent("cc.Label").string = "二楼：晓风服饰（已售罄~）" : t.r2 < f[1] ? s.getChildByName("text").getComponent("cc.Label").string = "二楼：晓风服饰（" + t.itemName + "," + t.itemDiscount + "折," + (t.finalPrice / 10).toFixed(1) + "元）" : s.getChildByName("text").getComponent("cc.Label").string = "？？？？（放假中...）";
                }
                function C() {
                    t.r1 < f[0] ? r.getChildByName("text").getComponent("cc.Label").string = "一楼：晓风金融（赢p值概率" + t.makeMoneyRate + "%）" : r.getChildByName("text").getComponent("cc.Label").string = "？？？？（放假中...）";
                    t.r4 < f[3] ? u.getChildByName("text").getComponent("cc.Label").string = "四楼：晓风网咖（属性+" + n.publicVar3[5] + "%,胜率" + Math.min((40 + n.publicVar3[6] / 10).toFixed(1), 75) + "%）" : u.getChildByName("text").getComponent("cc.Label").string = "？？？？（放假中...）";
                    cc.find("Canvas/UI2/hunger").getComponent("cc.Label").string = "饥饿 " + n.hunger + "/" + i.maxHunger();
                    cc.find("Canvas/money").getComponent("cc.Label").string = "p值 " + (n.money / 10).toFixed(1);
                    n.publicVar3[7] > 800 ? p.getChildByName("text").getComponent("cc.Label").string = "关门大吉！转行啦~" : t.r5 < f[4] ? p.getChildByName("text").getComponent("cc.Label").string = "？？？？（心情不好，外出旅游啦~）" : p.getChildByName("text").getComponent("cc.Label").string = "五楼：炎酱按摩（资产" + ((800 - n.publicVar3[7]) / 10).toFixed(1) + "元,成功率" + Math.max(100 - n.publicVar3[8], 0) + "%）";
                    i.save();
                }
                function E() {
                    a.playText("Canvas/notify", "由于经济不景气，公司倒闭，老板转行卖土鸡蛋去啦~", 60);
                }
                function I() {
                    a.playText("Canvas/notify", "“放假啦！哈哈哈哈哈！”", 60);
                }
                function V() {
                    a.playText("Canvas/notify", "“再为难~也不能耽误放假呀！哈哈哈哈哈！”", 60);
                }
                function N() {
                    cc.find("Canvas/notify").getComponent("cc.Label").string = "";
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_shop4: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "981fdTWKwRAN6F2FBk0OJHn", "scr_shop4");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = this, n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = cc.find("Canvas/UI1"), o = c.getChildByName("choice2"), r = c.getChildByName("choice3"), s = c.getChildByName("choice4"), l = [["贤明·正直*1", 17, 1, 50], ["高级土*3", 0, 3, 12], ["爱丽丝手链*1", 27, 1, 50], ["理信·慎重*1", 26, 1, 50], ["皮⑨*1", 12, 1, 30], ["急支糖浆*4", 1, 4, 12]];
                t.itemId = parseInt(5.99 * Math.random());
                t.itemDiscount = Math.random();
                t.ifSellOut = 0;
                var u = parseInt(l[t.itemId][3] * t.itemDiscount), p = l[t.itemId][0], f = l[t.itemId][1], d = l[t.itemId][2];
                m();
                (function () {
                    o.on("touchstart", h, this);
                    r.on("touchstart", v, this);
                    s.on("touchstart", y, this);
                })();
                function m() {
                    cc.find("Canvas/money").getComponent("cc.Label").string = "p值：" + (n.money / 10).toFixed(1);
                    cc.find("Canvas/UI1/choice2/text").getComponent("cc.Label").string = "出售急支糖浆（每个1毛，已拥有" + n.itemNum2[1] + "）";
                    cc.find("Canvas/UI1/choice3/text").getComponent("cc.Label").string = "出售电池（每个6毛，已拥有" + n.itemNum2[7] + "）";
                    cc.find("Canvas/UI1/choice4/text").getComponent("cc.Label").string = p + "（活动价" + (u / 10).toFixed(1) + "元，限购！！！）";
                }
                function h() {
                    if (n.itemNum2[1] > 0) {
                        var e = parseInt(.5 * n.itemNum2[1] + 1);
                        n.money += e;
                        n.itemNum2[1] -= e;
                        i.save();
                        a.playText("Canvas/notify", "出售【急支糖浆】*" + e + "，获得" + e + "毛", 100);
                        m();
                    } else a.playText("Canvas/notify", "道具不足！", 100);
                }
                function v() {
                    if (n.itemNum2[7] > 0) {
                        n.money += 6;
                        n.itemNum2[7] -= 1;
                        i.save();
                        a.playText("Canvas/notify", "出售【电池】*1，获得6毛", 100);
                        m();
                    } else a.playText("Canvas/notify", "道具不足！", 100);
                }
                function y() {
                    if (1 == t.ifSellOut) a.playText("Canvas/notify", "本次活动每人只能购买一次哦，下次再来吧~", 100); else if (n.money >= u) {
                        n.money -= u;
                        n.itemNum2[f] += d;
                        t.ifSellOut = 1;
                        i.save();
                        a.playText("Canvas/notify", "获得【" + p + "】！", 100);
                        m();
                    } else a.playText("Canvas/notify", "余额不足...", 100);
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_shopButton: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "46243Z6bxNGuK5lVJQiKZD4", "scr_shopButton");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("shop");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_shopUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "ca1d33wMc1MzoV4yHqs7mr9", "scr_shopUI");
        cc.Class({
            extends: cc.Component,
            properties: {
                itemUI: {
                    default: null,
                    type: cc.Prefab
                }
            },
            itemContent: function () {
                var t = this;
                this.data = e("scr_data");
                var n = {
                    0: {
                        itemName: " 绯想碎片*10（拥有" + this.data.itemNum[1] + ")",
                        needDes: "购买/出售：1元/0.1元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 10 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/name").color = new cc.color(220, 20, 60));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 10) {
                                n.money -= 10;
                                n.itemNum[1] += 10;
                                n.shopPoint += 10;
                                i.save();
                                a.playText("Canvas/notify", "获得【绯想碎片】*10！积分*10！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[1] >= 10) {
                                n.money += 5;
                                n.itemNum[1] -= 10;
                                i.save();
                                a.playText("Canvas/notify", "失去【绯想碎片】*10，获得0.5元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    1: {
                        itemName: " 探女の羽毛*10（拥有" + this.data.itemNum[4] + ")",
                        needDes: "购买/出售：1元/0.5元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 10 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/name").color = new cc.color(192, 192, 192));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 5) {
                                n.money -= 10;
                                n.itemNum[4] += 10;
                                n.shopPoint += 10;
                                i.save();
                                a.playText("Canvas/notify", "获得【探女の羽毛】*10！积分*10！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[4] >= 10) {
                                n.money += 5;
                                n.itemNum[4] -= 10;
                                i.save();
                                a.playText("Canvas/notify", "失去【探女の羽毛】*10，获得0.5元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    2: {
                        itemName: " 土块*5（拥有" + this.data.itemNum[0] + ")",
                        needDes: "购买/出售：0.5元/0.2元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 5 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/name").color = new cc.color(153, 204, 0));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 5) {
                                n.money -= 5;
                                n.itemNum[0] += 5;
                                n.shopPoint += 5;
                                i.save();
                                a.playText("Canvas/notify", "获得【土块】*5！积分*5！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[0] >= 5) {
                                n.money += 2;
                                n.itemNum[0] -= 5;
                                i.save();
                                a.playText("Canvas/notify", "失去【土块】*5，获得0.2元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    3: {
                        itemName: " p点（拥有" + this.data.itemNum[2] + ")",
                        needDes: "售价：每只1毛~",
                        ifEnough: function (t) {
                            e("scr_data").itemNum[2] > 0 && (cc.find("Canvas/Page/view/content/page_1/" + t + "/name").color = new cc.color(0, 255, 0));
                        },
                        button1: void 0,
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = n.itemNum[2];
                            if (c > 0) {
                                n.money += c * 1;
                                n.itemNum[2] -= c;
                                n.shopPoint += c * 1;
                                i.save();
                                a.playText("Canvas/notify", "失去【p点】*" + c + "，获得" + c * 1 + "毛p值，积分+" + c * 1, 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    4: {
                        itemName: " 生土*2（拥有" + this.data.itemNum[3] + ")",
                        needDes: "购买/出售：0.4元/0.2元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 4 && (cc.find("Canvas/Page/view/content/page_2/" + t + "/name").color = new cc.color(105, 105, 105));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 4) {
                                n.money -= 4;
                                n.itemNum[3] += 2;
                                n.shopPoint += 4;
                                i.save();
                                a.playText("Canvas/notify", "获得【生土】*2！积分*4！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[3] >= 2) {
                                n.money += 2;
                                n.itemNum[3] -= 2;
                                i.save();
                                a.playText("Canvas/notify", "失去【生土】*2，获得0.2元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    5: {
                        itemName: " 艾草*4（拥有" + this.data.itemNum[5] + ")",
                        needDes: "购买/出售：0.4元/0.2元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 4 && (cc.find("Canvas/Page/view/content/page_2/" + t + "/name").color = new cc.color(0, 255, 0));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 4) {
                                n.money -= 4;
                                n.itemNum[5] += 4;
                                n.shopPoint += 4;
                                i.save();
                                a.playText("Canvas/notify", "获得【艾草】*4！积分*4！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum[5] >= 4) {
                                n.money += 2;
                                n.itemNum[5] -= 4;
                                i.save();
                                a.playText("Canvas/notify", "失去【艾草】*4，获得0.2元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    6: {
                        itemName: " 八卦炉（当前等级" + this.data.itemNum2[8] + ")",
                        needDes: "价格：" + (3.2 + .3 * this.data.itemNum2[8]).toFixed(1) + "元",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_2/" + t + "/button1/text").getComponent("cc.Label").string = "升级";
                            var n = e("scr_data");
                            n.money >= 32 + 3 * n.itemNum2[8] && (cc.find("Canvas/Page/view/content/page_2/" + t + "/name").color = new cc.color(246, 202, 43));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 32 + 3 * n.itemNum2[8], o = n.money, r = 32 + 3 * n.itemNum2[8];
                            if (o >= c) {
                                n.money -= c;
                                n.itemNum2[8] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "八卦炉等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: void 0
                    },
                    7: {
                        itemName: " 巫女服（当前等级" + this.data.itemNum2[9] + ")",
                        needDes: "价格：" + (2 + .2 * this.data.itemNum2[9]).toFixed(1) + "元",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_2/" + t + "/button1/text").getComponent("cc.Label").string = "升级";
                            var n = e("scr_data");
                            n.money >= 20 + 2 * n.itemNum2[9] && (cc.find("Canvas/Page/view/content/page_2/" + t + "/name").color = new cc.color(235, 38, 26));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 20 + 2 * n.itemNum2[9], o = n.money, r = 20 + 2 * n.itemNum2[9];
                            if (o >= c) {
                                n.money -= c;
                                n.itemNum2[9] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "巫女服等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: void 0
                    },
                    9: {
                        itemName: " 暗影之剑（当前等级" + this.data.itemNum2[10] + ")",
                        needDes: "价格：" + (20 + 5 * this.data.itemNum2[10]).toFixed(1) + "元",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_3/" + t + "/button1/text").getComponent("cc.Label").string = "升级";
                            var n = e("scr_data");
                            n.money >= 200 + 50 * n.itemNum2[10] && (cc.find("Canvas/Page/view/content/page_3/" + t + "/name").color = new cc.color(86, 152, 195));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 200 + 50 * n.itemNum2[10], o = n.money, r = 200 + 50 * n.itemNum2[10];
                            if (o >= c) {
                                n.money -= c;
                                n.itemNum2[10] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "暗影之剑等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: void 0
                    },
                    15: {
                        itemName: " 贤明·正直特殊转换（等级" + this.data.itemNum2[1000] + ")",
                        needDes: "价格：" + (5 + 0 * this.data.itemNum2[1000]).toFixed(1) + "元",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_4/" + t + "/button1/text").getComponent("cc.Label").string = "升级";
                            var n = e("scr_data");
                            n.money >= 50 + 0 * n.itemNum2[1000] && (cc.find("Canvas/Page/view/content/page_4/" + t + "/name").color = new cc.color(255, 255, 0));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 50 + 0 * n.itemNum2[1000], o = n.money, r = 50 + 0 * n.itemNum2[1000];
                            if (o >= c) {
                                n.money -= c;
                                n.itemNum2[1000] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "贤明·正直转换等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: void 0
                    },
                    10: {
                        itemName: " 银白色荣耀（当前等级" + this.data.itemNum2[11] + ")",
                        needDes: "价格：" + (20 + 5 * this.data.itemNum2[11]).toFixed(1) + "元",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_3/" + t + "/button1/text").getComponent("cc.Label").string = "升级";
                            var n = e("scr_data");
                            n.money >= 200 + 50 * n.itemNum2[11] && (cc.find("Canvas/Page/view/content/page_3/" + t + "/name").color = new cc.color(241, 240, 237));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 200 + 50 * n.itemNum2[11], o = n.money, r = 200 + 50 * n.itemNum2[11];
                            if (o >= c) {
                                n.money -= c;
                                n.itemNum2[11] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "银白色荣耀等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: void 0
                    },
                    11: {
                        itemName: " 楼观剑（当前等级" + this.data.itemNum2[30] + ")",
                        needDes: "价格：" + (60 + 5000000 * this.data.itemNum2[30]).toFixed(1) + "理性点",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_3/" + t + "/button1/text").getComponent("cc.Label").string = "兑换";
                            var n = e("scr_data");
                            n.itemNum2[40] >= 60 + 5000000 * n.itemNum2[30] && (cc.find("Canvas/Page/view/content/page_3/" + t + "/name").color = new cc.color(0, 255, 0));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 60 + 500000 * n.itemNum2[30], o = n.itemNum2[40], r = 60 + 500000 * n.itemNum2[30];
                            if (o >= c) {
                                n.itemNum2[40] -= c;
                                n.itemNum2[30] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "楼观剑等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "理性点不足！现有*" + n.itemNum2[40] + "！", 100);
                        },
                        button2: void 0
                    },
                    12: {
                        itemName: " 理性·慎重特殊转换（等级" + this.data.itemNum2[1001] + ")",
                        needDes: "价格：" + (5 + 0 * this.data.itemNum2[1001]).toFixed(1) + "元",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_4/" + t + "/button1/text").getComponent("cc.Label").string = "升级";
                            var n = e("scr_data");
                            n.money >= 50 + 0 * n.itemNum2[1001] && (cc.find("Canvas/Page/view/content/page_4/" + t + "/name").color = new cc.color(0, 0, 0));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public"), c = 50 + 0 * n.itemNum2[1001], o = n.money, r = 50 + 0 * n.itemNum2[1001];
                            if (o >= c) {
                                n.money -= c;
                                n.itemNum2[1001] += 1;
                                n.shopPoint += r;
                                i.save();
                                a.playText("Canvas/notify", "理性·慎重转换等级提高1级！积分*" + r + "！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: void 0
                    },
                    13: {
                        itemName: " 爱丽丝手链*1（拥有" + this.data.itemNum2[27] + ")",
                        needDes: "购买/出售：2元/1元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 20 && (cc.find("Canvas/Page/view/content/page_4/" + t + "/name").color = new cc.color(255, 201, 12));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 20) {
                                n.money -= 20;
                                n.itemNum2[27] += 1;
                                n.shopPoint += 20;
                                i.save();
                                a.playText("Canvas/notify", "获得【爱丽丝手链】*1！积分*20！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum2[27] >= 1) {
                                n.money += 10;
                                n.itemNum2[27] -= 1;
                                i.save();
                                a.playText("Canvas/notify", "失去【爱丽丝手链】*1，获得1元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    14: {
                        itemName: " 提灯小姐姐の胖次*1（拥有" + this.data.itemNum2[21] + ")",
                        needDes: "购买/出售：10元/2.5元",
                        ifEnough: function (t) {
                            e("scr_data").money >= 100 && (cc.find("Canvas/Page/view/content/page_4/" + t + "/name").color = new cc.color(55, 119, 184));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.money >= 100) {
                                n.money -= 100;
                                n.itemNum2[21] += 1;
                                n.shopPoint += 100;
                                i.save();
                                a.playText("Canvas/notify", "获得【提灯小姐姐の胖次】*1！积分*100！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "p值不够！", 100);
                        },
                        button2: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.itemNum2[21] >= 1) {
                                n.money += 25;
                                n.itemNum2[21] -= 1;
                                i.save();
                                a.playText("Canvas/notify", "失去【提灯小姐姐の胖次】*1，获得2.5元！", 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "道具不足！", 100);
                        }
                    },
                    8: {
                        itemName: "  抽奖  ",
                        needDes: "价格：100积分，随机获得一份奖励！",
                        ifEnough: function (t) {
                            cc.find("Canvas/Page/view/content/page_3/" + t + "/button1/text").getComponent("cc.Label").string = "抽奖";
                            e("scr_data").shopPoint >= 100 && (cc.find("Canvas/Page/view/content/page_3/" + t + "/name").color = new cc.color(0, 255, 0));
                        },
                        button1: function () {
                            var n = e("scr_data"), a = e("scr_effect"), i = e("scr_public");
                            if (n.shopPoint >= 100) {
                                n.shopPoint -= 100;
                                var c = function () {
                                    var t = "", n = 100 * Math.random(), a = e("scr_data");
                                    if (n <= 60) {
                                        a.money += 10;
                                        t = "1元p值！";
                                    }
                                    if (n > 60 && n <= 70) {
                                        a.itemNum2[23] += 1;
                                        t = "【希望の花】*1！";
                                    }
                                    if (n > 70 && n <= 75) {
                                        a.itemNum2[21] += 1;
                                        t = "【提灯小姐姐の胖次】*1！";
                                    }
                                    if (n > 75 && n <= 80) {
                                        a.itemNum2[20] += 1;
                                        t = "【骑士剑·残】*1！";
                                    }
                                    if (n > 80 && n <= 85) {
                                        a.itemNum2[26] += 1;
                                        t = "【理信·慎重】*1！";
                                    }
                                    if (n > 85 && n <= 90) {
                                        a.itemNum2[27] += 1;
                                        t = "【爱丽丝手链】*1！";
                                    }
                                    if (n > 90 && n <= 100) {
                                        a.itemNum2[24] += 1;
                                        t = "【幻想乡缘起】*1！";
                                    }
                                    return t;
                                }();
                                i.save();
                                a.playText("Canvas/notify", "恭喜获得，" + c, 100);
                                t.delayCreatItemUI();
                            } else a.playText("Canvas/notify", "积分不够！", 100);
                        },
                        button2: void 0
                    }
                };
                return n;
            },
            creatPrefab: function (e, t) {
                var n = cc.instantiate(this.itemUI), a = this.itemContent()[e], i = a.button1, c = a.button2, o = "item" + e;
                n.name = o;
                n.getChildByName("name").getComponent("cc.Label").string = a.itemName;
                n.getChildByName("need").getComponent("cc.Label").string = a.needDes;
                "undefined" != typeof i ? n.getChildByName("button1").getComponent("cc.Button").scheduleOnce(function () {
                    n.getChildByName("button1").on("touchstart", i, this);
                }, .4) : n.getChildByName("button1").active = !1;
                "undefined" != typeof c ? n.getChildByName("button2").getComponent("cc.Button").scheduleOnce(function () {
                    n.getChildByName("button2").on("touchstart", c, this);
                }, .6) : n.getChildByName("button2").active = !1;
                cc.find("Canvas/Page/view/content").getChildByName(t).addChild(n);
                "undefined" != typeof a.ifEnough && a.ifEnough(o);
            },
            creatItemUI1: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_1").removeAllChildren();
                for (var e = 0; e <= 3; e++) this.creatPrefab(e, "page_1");
            },
            creatItemUI2: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_2").removeAllChildren();
                for (var e = 4; e <= 7; e++) this.creatPrefab(e, "page_2");
            },
            creatItemUI3: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_3").removeAllChildren();
                for (var e = 8; e <= 11; e++) this.creatPrefab(e, "page_3");
            },
            creatItemUI4: function () {
                this.initText();
                cc.find("Canvas/Page/view/content/page_4").removeAllChildren();
                for (var e = 12; e <= 15; e++) this.creatPrefab(e, "page_4");
            },
            initText: function () {
                var t = e("scr_data");
                cc.find("Canvas/money").getComponent("cc.Label").string = "p值：" + (t.money / 10).toFixed(1) + "元";
                cc.find("Canvas/point").getComponent("cc.Label").string = "积分：" + t.shopPoint;
            },
            delayCreatItemUI: function () {
                var e = this;
                this.scheduleOnce(function () {
                    e.creatItemUI1();
                    e.creatItemUI2();
                    e.creatItemUI3();
                    e.creatItemUI4();
                }, .2);
            },
            delayCreatItemUI1: function () {
                this.scheduleOnce(this.creatItemUI1, .02);
            },
            delayCreatItemUI2: function () {
                this.scheduleOnce(this.creatItemUI2, .02);
            },
            delayCreatItemUI3: function () {
                this.scheduleOnce(this.creatItemUI3, .02);
            },
            delayCreatItemUI4: function () {
                this.scheduleOnce(this.creatItemUI4, .02);
            },
            onLoad: function () {
                this.creatItemUI1();
                this.creatItemUI2();
                this.creatItemUI3();
                this.creatItemUI4();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_skillButton: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "46028T60zdCgZQPViIBJA6V", "scr_skillButton");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("skill");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    scr_skillJudge2: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "fbb08mI2F9N/4eaXqX0Gf87", "scr_skillJudge2");
        cc.Class({
            extends: cc.Component,
            properties: {},
            skillJugge: function () {
                var t = e("scr_data"), n = e("scr_public"), a = t.friendSkill, i = {
                    1: function () {
                        0 == a[1] && t.publicVar[7] >= 30 && (a[1] = 1);
                    },
                    2: function () {
                        0 == a[2] && t.publicVar[7] >= 60 && (a[2] = 1);
                    },
                    3: function () {
                        0 == a[3] && t.publicVar[7] >= 100 && (a[3] = 1);
                    },
                    4: function () {
                        0 == a[4] && t.publicVar[7] >= 160 && (a[4] = 1);
                    },
                    5: function () {
                        0 == a[5] && t.publicVar[7] >= 240 && (a[5] = 1);
                    },
                    6: function () {
                        0 == a[6] && t.publicVar[7] >= 340 && (a[6] = 1);
                    },
                    7: function () {
                        0 == a[7] && t.publicVar[7] >= 460 && (a[7] = 1);
                    },
                    8: function () {
                        0 == a[8] && t.publicVar[7] >= 600 && (a[8] = 1);
                    }
                };
                for (var c in i) i[c]();
                n.save();
            },
            onLoad: function () {
                this.skillJugge();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_skillJudge: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "daeebn9rLFFwagiEBrNgbsO", "scr_skillJudge");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = e("scr_data"), n = e("scr_public"), a = t.skillLv, i = {
                    0: function () {
                        t.hunger <= 0 ? a[0] = 1 : a[0] = 0;
                    },
                    1: function () {
                        0 == a[1] && t.winTimes >= 8 && (a[1] = 1);
                    },
                    2: function () {
                        0 == a[2] && t.orderTimes[5] >= 30 && (a[2] = 1);
                    },
                    3: function () {
                        0 == a[3] && t.orderTimes[0] >= 15 && (a[3] = 1);
                    },
                    5: function () {
                        0 == a[5] && t.winTimes >= 15 && (a[5] = 1);
                    },
                    6: function () {
                        0 == a[6] && t.randomEvent[6] >= 10 && (a[6] = 1);
                    },
                    7: function () {
                        0 == a[7] && t.orderTimes[2] >= 30 && (a[7] = 1);
                    },
                    8: function () {
                        0 == a[8] && t.figthExp[0] >= 20 && (a[8] = 1);
                    },
                    9: function () {
                        0 == a[9] && t.winTimes >= 20 && (a[9] = 1);
                    },
                    10: function () {
                        0 == a[10] && t.itemNum2[2] >= 5 && (a[10] = 1);
                    },
                    11: function () {
                        0 == a[11] && t.figthExp[1] >= 30 && (a[11] = 1);
                    },
                    12: function () {
                        0 == a[12] && t.orderTimes[5] >= 666 && (a[12] = 1);
                    },
                    13: function () {
                        0 == a[13] && t.orderTimes[5] >= 200 && t.orderTimes[2] >= 60 && (a[13] = 1);
                    },
                    14: function () {
                        0 == a[14] && t.winTimes >= 60 && (a[14] = 1);
                    },
                    15: function () {
                        0 == a[15] && t.figthExp[2] >= 40 && (a[15] = 1);
                    },
                    17: function () {
                        0 == a[17] && t.orderTimes[0] >= 99 && (a[17] = 1);
                    },
                    19: function () {
                        0 == a[19] && t.publicVar3[13] >= 4 && (a[19] = 1);
                    },
                    21: function () {
                        0 == a[21] && t.itemNum2[6] >= 10 && (a[21] = 1);
                    },
                    23: function () {
                        0 == a[23] && t.publicVar2[1] >= 233 && (a[23] = 1);
                    },
                    24: function () {
                        0 == a[24] && t.publicVar3[12] >= 79 && (a[24] = 1);
                    },
                    25: function () {
                        0 == a[25] && t.itemNum2[3] >= 100 && t.itemNum2[4] >= 100 && (a[25] = 1);
                    },
                    26: function () {
                        0 == a[26] && t.kills[2] >= 40 && (a[26] = 1);
                    },
                    27: function () {
                        0 == a[27] && t.itemNum2[40] >= 19 && (a[27] = 1);
                    }
                };
                for (var c in i) i[c]();
                n.save();
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_public: "scr_public"
    }],
    scr_skillUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "ae252WOSz5CF6dAaVPNVzC8", "scr_skillUI");
        cc.Class({
            extends: cc.Component,
            properties: {},
            creatText: function (e, t, n) {
                var a = new cc.Node(t);
                a.addComponent(cc.Label);
                a.parent = e;
                a.setPosition(0, 0);
                a.color = new cc.Color(115, 115, 115);
                a.getComponent(cc.Label).overflow = 3;
                a.setContentSize(630, 300);
                a.getComponent(cc.Label).string = n;
                a.getComponent(cc.Label).lineHeight = 50;
                a.getComponent(cc.Label).fontSize = 32;
            },
            onLoad: function () {
                var t = e("scr_data"), n = (t.figthExp, 3 * t.orderTimes[1] - t.orderTimes[4] + 5);
                1 == t.publicVar[1] && (n = t.orderTimes[1] - t.orderTimes[4]);
                var a = {
                    0: "【穷凶极饿】当饥饿值低于0时激活。饥饿状态下，前进/探索有几率减少健康值，且睡觉时必定减少健康！（另外：饥饿时系统会自动使用食物，直到用光为止哦^_^）",
                    1: "【精气流转1】精力上限+10，战斗胜利8次后激活（" + t.winTimes + "/8）。",
                    2: "【残机强化1】最大残机值+50，吃「土块」30次后激活(" + t.orderTimes[5] + "/30）。",
                    3: "【恢复1】前进/探索时，残机恢复量提高4点。使用「急支糖浆」15次后激活（" + t.orderTimes[0] + "/15）。",
                    4: "【网瘾】攻击/防御减为零！每天有" + n + "%概率激活，效果持续1天。（用电池次数越多激活概率越高，每次增加3%）",
                    5: "【平衡架势】造成" + (t.figthExp[0] / 8 + 100).toFixed(1) + "%伤害，承受" + (80 - t.figthExp[0] / 20).toFixed(1) + "%伤害。效果随熟练度提升而提升（" + t.figthExp[0] + "/500）。战斗胜利15次(" + t.winTimes + "/15)后开启。",
                    6: "【英雄】每天40%概率额外捡到1毛p值，惩戒提灯小姐姐10次激活！此特性可升级，每惩戒10次涨1毛哈~(^_−)☆！（" + t.randomEvent[6] + "/10）。",
                    7: "【精气流转2】精力上限+20，吃「高级土」30次后激活（" + t.orderTimes[2] + "/30）。",
                    8: "【防御强化1】防御增加10点，平衡架势熟练度达20后激活（" + t.figthExp[0] + "/20）。",
                    9: "【拼命架势】可切换到拼命架势。攻击时，造成" + (t.figthExp[1] / 2 + 132).toFixed(1) + "%伤害，每次攻击损失40%最大残机值。效果随熟练度而提升（" + t.figthExp[1] + "/500）。战斗胜利" + t.winTimes + "/20次后激活。注意1：一场战斗中，使用最多的架势将获得1点熟练度",
                    10: "【自愈1】睡觉时40%几率恢复1点健康值，绯探羽睡袋达到5级激活。",
                    11: "【攻击强化1】攻击增加10点，拼命架势熟练度达30激活（" + t.figthExp[1] + "/30）。",
                    12: "【精气流转3】精力上限+30，吃土块666次后激活，吃草更健康哦（" + t.orderTimes[5] + "/666）。",
                    13: "【大胃王】饥饿上限+50，吃（" + t.orderTimes[5] + "/200）次「土块」和（" + t.orderTimes[2] + "/60）次「高级土」后激活。",
                    14: "【猥琐架势】可切换到猥琐架势。受击时，承受" + (100 - t.figthExp[2] / 5).toFixed(1) + "%的伤害，且恢复" + parseInt(t.figthExp[2] * 2 + 30) + "点残机，但造成伤害减也少30%。效果随熟练度而提升（" + t.figthExp[2] + "/500）。战斗胜利" + t.winTimes + "/60次后激活。注意2：逃跑时系统将自动切换为猥琐架势！",
                    15: "【残机强化2】最大残机值+100，猥琐架势熟练度达40激活（" + t.figthExp[2] + "/40）。",
                    16: "【防御强化2】防御+20，第三次击败妖怪之山中「地藏」后激活。",
                    17: "【恢复2】前进/探索时，残机恢复量提高36点，使用「急支糖浆」99次后激活（" + t.orderTimes[0] + "/99）。",
                    18: "【攻击强化2】攻击+20，击败挑战副本中「丰聪耳神子」后激活。",
                    19: "【残机强化3】最大残机值+150。在月都市中心的炎酱料理店食用4次「巨无霸」套餐后激活！（" + t.publicVar3[13] + "/4）",
                    20: "【防御强化3】防御+30。击败月都玉兔园林的「今泉影狼」8级后激活！",
                    21: "【恢复强化】前进/探索时，残机恢复效果翻倍。「自制风油精」等级达到10级后激活（" + t.itemNum2[6] + "/10）。你目前前进/探索回恢复量为" + (4 + 8 * t.skillLv[3] + 36 * t.skillLv[17] + 5 * t.itemNum2[39] + 2 * t.itemNum2[23]) * (1 + t.skillLv[21]) + "（激活后此数值将会翻倍，希望の花恢复效果也将翻倍！）。",
                    22: "【攻击强化3】攻击+30，击败挑战副本中「饭纲丸龙」后激活。",
                    23: "【非酋逆袭】如果前进/探索时没发现道具，则必定获得1p值！没发现道具次数达233次后激活（" + t.publicVar2[1] + "/233）。",
                    24: "【圣斗士】战斗失败后，" + Math.min(Math.max(parseInt(t.publicVar3[12] / 5), 20), 40).toFixed(1) + "%几率满血复活！战斗失败79次后激活（" + t.publicVar3[12] + "/79）",
                    25: "【霸气】狂拽炫酷吊炸天！攻击时，99%几率无视目标防御，且恢复自身30%残机。绯想剑、天之羽衣达到100级时激活",
                    26: "【邪王真眼】睡觉时30%几率额外再恢复30%精力！击败「宇佐见堇子」40次后激活！（" + t.kills[2] + "/40）",
                    27: "【神的降临】拥有60点理性点（" + t.itemNum2[40] + "/60）"
                }, i = e("scr_data").skillLv, c = cc.find("Canvas/Scroll/view/content"), o = parseInt(1 + t.day / 3), r = Object.keys(a).length;
                "undefined" == typeof r && (r = 99);
                for (var s in a) {
                    var l = r - s - 1;
                    if (l > o - 1); else {
                        this.creatText(c, "skill" + l, a[l]);
                        i[l] > 0 && (c.getChildByName("skill" + l).color = new cc.Color(0, 255, 0));
                    }
                }
                var u = cc.find("Canvas/Button_loadAchieve"), p = cc.find("Canvas/Button_system");
                u.on("touchstart", function () {
                    cc.director.loadScene("achieve");
                }, u);
                p.on("touchstart", function () {
                    cc.director.loadScene("system");
                }, p);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data"
    }],
    scr_startChoice: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "abb1fsZ7zZIh7RCgg95JM2L", "scr_startChoice");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = cc.find("Canvas/Determine"), n = cc.find("Canvas/text2"), a = this, i = e("scr_data"), c = e("scr_data2"), o = e("scr_public"), r = e("scr_effect"), s = 0;
                t.getChildByName("choice1").on("touchstart", function () {
                    i.itemNum[0] += 20;
                    i.itemNum2[1] += 20;
                    i.money += 10;
                    i.orderTimes[4] += 5;
                    u();
                }, this);
                t.getChildByName("choice2").on("touchstart", function () {
                    i.itemNum2[20] += 10;
                    i.itemNum2[15] += 2;
                    u();
                }, this);
                t.getChildByName("choice3").on("touchstart", function () {
                    i.itemNum2[24] += 25;
                    i.itemNum2[18] += 4;
                    u();
                }, this);
                t.getChildByName("choice4").on("touchstart", function () {
                    i.itemNum2[13] += 1;
                    i.money += 20;
                    u();
                }, this);
                t.getChildByName("choice5").on("touchstart", function () {
                    i.itemNum2[17] += 20;
                    u();
                }, this);
                t.getChildByName("choice6").on("touchstart", function () {
                    i.itemNum2[27] += 20;
                    i.itemNum2[15] += 10;
                    i.publicVar[1] = -1;
                    u();
                }, this);
                t.getChildByName("choice7").on("touchstart", function () {
                    if (c.gameData[1] >= 0) {
                        i.publicVar[1] = 1;
                        i.itemNum2[6] += 4;
                        i.itemNum2[23] += 8;
                        u();
                    } else r.playText("Canvas/text1", "修罗模式需先通关游戏", 80);
                }, this);
                t.getChildByName("choice8").on("touchstart", function () {
                    r.playText("Canvas/text1", "该模式还在奋力开发中，敬请期待哦←_←", 80);
                }, this);
                (function () {
                    t.opacity = 0;
                    n.opacity = 0;
                })();
                (function () {
                    r.playText("Canvas/text1", "请选择你的天赋（能力）...", 80);
                    a.schedule(l, 2, 1);
                })();
                function l() {
                    cc.find(["Canvas/Determine", "Canvas/text2"][s]).runAction(cc.fadeIn(2));
                    s++;
                }
                function u() {
                    cc.find("Canvas/Determine").active = !1;
                    cc.find("Canvas/text1").active = !1;
                    cc.find("Canvas/text2").active = !1;
                    o.save();
                    cc.director.loadScene("open");
                }
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_effect: "scr_effect",
        scr_public: "scr_public"
    }],
    scr_startUI: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "cea75di7zpJiqfvO6EeKLF9", "scr_startUI");
        cc.Class({
            extends: cc.Component,
            properties: {},
            supportButton: function () {
                cc.director.loadScene("support");
            },
            messageButton: function () {
                cc.director.loadScene("message");
            },
            controlButton: function () {
                JSON.parse(cc.sys.localStorage.getItem("userData")) || (cc.find("Canvas/button/button_continue").active = !1);
            },
            onLoad: function () {
                cc.find("Canvas/button/button_support").on("touchstart", this.supportButton, this);
                cc.find("Canvas/button/button_message").on("touchstart", this.messageButton, this);
                this.controlButton();
            }
        });
        cc._RF.pop();
    }, {}],
    scr_system: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "00817ZNI7hJb4XVsFxczkla", "scr_system");
        cc.Class({
            extends: cc.Component,
            properties: {},
            onLoad: function () {
                var t = ["一般", "快", "一般"], n = cc.find("Canvas/button/speed"), a = e("scr_data"), i = e("scr_effect");
                cc.find("Canvas/text/speed").getComponent("cc.Label").string = "你目前剧情（部分）播放速度为" + t[a.publicVar[6] || 2];
                n.on("touchstart", function () {
                    a.publicVar[6] += 1;
                    a.publicVar[6] > 2 && (a.publicVar[6] = 1);
                    i.playText("Canvas/text/speed", "你目前剧情播放速度为" + t[a.publicVar[6]], 60);
                }, n);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_effect: "scr_effect"
    }],
    scr_weixin: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "30448HDiXRBAKQpqrA00msY", "scr_weixin");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                cc.director.loadScene("support2");
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {}],
    testAll: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "90bfc8sWA1FKba1y8235I0Y", "testAll");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () {
                this.changeData();
            },
            changeData: function () {
                var t = e("scr_data"), n = e("scr_public");
                e("scr_data2");
                t.day = 179;
                t.ifFollow[0] = 0;
                t.publicVar[7] = 999;
                t.publicVar3[3] = 0;
                n.save();
                n.save2();
                n.init();
            },
            changeData2: function () {
                var t = e("scr_data"), n = e("scr_public");
                t.itemNum2[3] = 30;
                t.itemNum2[4] = 30;
                t.itemNum2[8] = 15;
                t.itemNum2[9] = 15;
                t.itemNum2[10] = 6;
                t.itemNum2[11] = 6;
                t.itemNum2[14] = 999;
                t.itemNum2[19] = 2;
                t.itemNum2[20] = 500;
                t.itemNum2[21] = 200;
                t.itemNum2[22] = 200;
                t.ifFollow[0] = 1;
                t.choice[5] = 999;
                t.skillLv[5] = 1;
                t.skillLv[9] = 1;
                t.skillLv[14] = 1;
                t.skillLv[25] = 1;
                t.figthExp[0] = 500;
                t.figthExp[1] = 500;
                t.figthExp[2] = 500;
                t.role.hp = n.role.maxHp();
            },
            onLoad: function () {
                this.node.on("touchstart", this.callBack, this);
            }
        });
        cc._RF.pop();
    }, {
        scr_data: "scr_data",
        scr_data2: "scr_data2",
        scr_public: "scr_public"
    }],
    test: [function (e, t, n) {
        "use strict";
        cc._RF.push(t, "8d2adDidEdDNoDEfhV+1NKI", "test");
        cc.Class({
            extends: cc.Component,
            properties: {},
            callBack: function () { },
            onLoad: function () { }
        });
        cc._RF.pop();
    }, {}]
}
var needLoadModuleIDList = ["scr_eatButton", "scr_makeButton", "scr_shopButton", "scr_skillButton", "scr_backMainUI", "scr_diaryDetermine", "scr_eventDetermine", "scr_restDetermine", "scr_QQpay", "scr_backStartUI", "scr_backSupport", "scr_continueButton", "scr_initGame", "scr_newGame", "scr_notice", "scr_notice2", "scr_open", "scr_startChoice", "scr_startUI", "scr_weixin", "scr_achieve", "scr_eatUI", "scr_eventData", "scr_makeUI", "scr_shop2", "scr_shop3", "scr_shop4", "scr_shopUI", "scr_skillJudge", "scr_skillUI", "scr_data", "scr_data2", "scr_dataCopy", "scr_diary", "scr_event", "scr_mainUIEvent", "scr_plot", "scr_rest", "scr_enemy", "scr_explore", "scr_fight", "scr_fightState", "scr_forwardButton", "scr_friendSkillJudge1", "scr_friendSkillUI1", "scr_friendSkillUI2", "scr_friendUI1", "scr_skillJudge2", "scr_effect", "scr_public", "scr_home", "scr_mainUIinit", "scr_readConfession", "scr_end", "scr_initData", "scr_over", "scr_over2", "scr_over2_1", "scr_system", "NewScript", "scr_BGM", "scr_playAds", "scr_quitGame", "test", "testAll", "scr_liveModeMain"];
require(moduleDefinitions, {}, needLoadModuleIDList)