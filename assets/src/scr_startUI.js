scr_startUI = [function (e, t, n) {//开始游戏界面的按钮在这设置！！！
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
        reloadgameButton: function () {
            t = JSON.parse(cc.sys.localStorage.getItem("autogamesave"));
            cc.sys.localStorage.setItem("userData", JSON.stringify(t));
            cc.director.loadScene("main");//加载今天早上保存的存档！！！正常请不要使用
        },
        controlButton: function () {
            JSON.parse(cc.sys.localStorage.getItem("userData")) || (cc.find("Canvas/button/button_continue").active = !1);
        },
        onLoad: function () {
            cc.find("Canvas/button/button_support").on("touchstart", this.supportButton, this);
            cc.find("Canvas/button/button_message").on("touchstart", this.messageButton, this);
            cc.find("Canvas/button/button_reloadgame").on("touchstart", this.reloadgameButton, this);
            this.controlButton();
            var text = cc.find("Canvas/Other"), n = e("scr_data");
            const url = `https://api.github.com/repos/QiuLiang-99/llrj-QL`;
            text.getChildByName("version").getComponent("cc.Label").string = "当前版本号：7.6";
            let xhr = new XMLHttpRequest();
            xhr.open("GET", url, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    const data = JSON.parse(xhr.responseText);
                    const dateString = data.updated_at;
                    const date = new Date(dateString);
                    const year = date.getFullYear();
                    const month = date.getMonth() + 1; // getMonth() 返回的月份是从0开始的
                    const day = date.getDate();
                    const hours = date.getHours();
                    const minutes = date.getMinutes();
                    const seconds = date.getSeconds();
                    const formattedDate = `${year}-${month.toString().padStart(2, '0')}-${day.toString().padStart(2, '0')}`;
                    const formattedTime = `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
                    text.getChildByName("version").getComponent("cc.Label").string = "最新版本更新时间：" + formattedDate + " " + formattedTime + data.description;
                }
            };
            xhr.send();
            //bug 记得每次更新版本要写版本号
        }
    });
    cc._RF.pop();
}, {}]