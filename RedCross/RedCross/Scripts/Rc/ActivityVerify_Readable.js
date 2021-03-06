﻿var cont = document.getElementById("content");
var contErr = document.getElementById("contentErr");
var prestart = document.getElementById("prestart");
var prestartErr = document.getElementById("prestartErr");
var overend = document.getElementById("overend");
var overendErr = document.getElementById("overendErr");
var publish = document.getElementById("publish");
var publishErr = document.getElementById("publishErr");
var content = document.getElementById("contentdetails");
var contentErr = document.getElementById("contentdetailsErr");
var activitySubmit = document.getElementById("activitysubmit");

var v = new Verify();
var els = new ElementSet();

eventUtil.addHandler(activitySubmit, "click", function (event) {
    var e = eventUtil.getEvent(event);

    v.value = cont.value;
    v.maxLength = 50;
    v.minLength = 0;
    flag = v.run([
        ["checkNull", "请填写主题"],
        ["checkRangeLength", "主题的长度应该在0～50个字符之间"]
    ]);
    els.SetElm(cont, contErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }

    v.value = prestart.value;
    flag = v.run([
        ["checkNull", "请填写开始时间"],
        ["checkDateTime", "时间格式不正确，参照格式:2013-01-14"]
    ]);
    els.SetElm(prestart, prestartErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }

    v.value = overend.value;
    flag = v.run([
        ["checkNull", "请填写结束时间"],
        ["checkDateTime", "时间格式不正确，参照格式:2013-01-14"]
    ]);
    els.SetElm(overend, overendErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }

    if (prestart.value >= overend.value) {
        els.SetElmErr(prestart, prestartErr, "起始时间不能大于结束时间");
        eventUtil.preventDefault(e);
        return;
    }

    v.value = content.value;
    v.maxLength = 250;
    v.minLength = 0;
    flag = v.run([
        ["checkNull", "请填写内容"],
        ["checkRangeLength", "内容的长度应该在0～250个字符之间"]
    ]);
    els.SetElm(content, contentErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }

    v.value = publish.value;
    flag = v.run([
        ["checkNull", "请填写发布时间"],
        ["checkDateTime", "时间格式不正确，参照格式:2013-01-14"]
    ]);
    els.SetElm(publish, publishErr, v.errMsg, flag);
    if (!flag) {
        eventUtil.preventDefault(e);
        return;
    }
});
