﻿var publish = document.getElementById("publish");
var publishErr = document.getElementById("publishErr");
var content = document.getElementById("content");
var contentErr = document.getElementById("contentErr");
var importantSubmit = document.getElementById("importantsubmit");

var v = new Verify();
var els = new ElementSet();

eventUtil.addHandler(importantSubmit, "click", function (event) {
    var e = eventUtil.getEvent(event);
    
    v.value = publish.value;
    flag = v.run([
        ["checkNull", "请填写时间"],
        ["checkDateTime", "时间格式不正确，参照格式:2013-01-14"]
    ]);
    els.SetElm(publish, publishErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }

    v.value = content.value;
    v.maxLength = 500;
    v.minLength = 0;
    flag = v.run([
        ["checkNull", "请填写内容"],
        ["checkRangeLength", "内容的长度应该在0～500个字符之间"]
    ]);
    els.SetElm(content, contentErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }
});
