! function(a, b) {
    "object" == typeof exports && "undefined" != typeof module ? module.exports = b() : "function" == typeof define && define.amd ? define(b) : a.Sweetalert2 = b()
}(this, function() {
    "use strict";
    var a = function(a) {
            var b = {};
            for (var c in a) b[a[c]] = "swal2-" + a[c];
            return b
        },
        b = a(["container", "in", "iosfix", "modal", "overlay", "fade", "show", "hide", "noanimation", "close", "title", "content", "spacer", "confirm", "cancel", "icon", "image", "input", "file", "range", "select", "radio", "checkbox", "textarea", "inputerror", "validationerror", "progresssteps", "activeprogressstep", "progresscircle", "progressline", "loading", "styled"]),
        c = a(["success", "warning", "info", "question", "error"]),
        d = {
            title: "",
            text: "",
            html: "",
            type: null,
            customClass: "",
            animation: !0,
            allowOutsideClick: !0,
            allowEscapeKey: !0,
            showConfirmButton: !0,
            showCancelButton: !1,
            preConfirm: null,
            confirmButtonText: "OK",
            confirmButtonColor: "#3085d6",
            confirmButtonClass: null,
            cancelButtonText: "Cancel",
            cancelButtonColor: "#aaa",
            cancelButtonClass: null,
            buttonsStyling: !0,
            reverseButtons: !1,
            focusCancel: !1,
            showCloseButton: !1,
            showLoaderOnConfirm: !1,
            imageUrl: null,
            imageWidth: null,
            imageHeight: null,
            imageClass: null,
            timer: null,
            width: 500,
            padding: 20,
            background: "#fff",
            input: null,
            inputPlaceholder: "",
            inputValue: "",
            inputOptions: {},
            inputAutoTrim: !0,
            inputClass: null,
            inputAttributes: {},
            inputValidator: null,
            progressSteps: [],
            currentProgressStep: null,
            progressStepsDistance: "40px",
            onOpen: null,
            onClose: null
        },
        e = ('\n  <div class="' + b.modal + '" style="display: none" tabIndex="-1">\n    <ul class="' + b.progresssteps + '"></ul>\n    <div class="' + b.icon + " " + c.error + '">\n      <span class="x-mark"><span class="line left"></span><span class="line right"></span></span>\n    </div>\n    <div class="' + b.icon + " " + c.question + '">?</div>\n    <div class="' + b.icon + " " + c.warning + '">!</div>\n    <div class="' + b.icon + " " + c.info + '">i</div>\n    <div class="' + b.icon + " " + c.success + '">\n      <span class="line tip"></span> <span class="line long"></span>\n      <div class="placeholder"></div> <div class="fix"></div>\n    </div>\n    <img class="' + b.image + '">\n    <h2 class="' + b.title + '"></h2>\n    <div class="' + b.content + '"></div>\n    <input class="' + b.input + '">\n    <input type="file" class="' + b.file + '">\n    <div class="' + b.range + '">\n      <output></output>\n      <input type="range">\n    </div>\n    <select class="' + b.select + '"></select>\n    <div class="' + b.radio + '"></div>\n    <label for="' + b.checkbox + '" class="' + b.checkbox + '">\n      <input type="checkbox">\n    </label>\n    <textarea class="' + b.textarea + '"></textarea>\n    <div class="' + b.validationerror + '"></div>\n    <hr class="' + b.spacer + '">\n    <button type="button" class="' + b.confirm + '">OK</button>\n    <button type="button" class="' + b.cancel + '">Cancel</button>\n    <span class="' + b.close + '">&times;</span>\n  </div>\n').replace(/(^|\n)\s*/g, ""),
        f = void 0,
        g = document.getElementsByClassName(b.container);
    g.length ? f = g[0] : (f = document.createElement("div"), f.className = b.container, f.innerHTML = e);
    var h = function(a, b) {
            a = String(a).replace(/[^0-9a-f]/gi, ""), a.length < 6 && (a = a[0] + a[0] + a[1] + a[1] + a[2] + a[2]), b = b || 0;
            for (var c = "#", d = 0; d < 3; d++) {
                var e = parseInt(a.substr(2 * d, 2), 16);
                e = Math.round(Math.min(Math.max(0, e + e * b), 255)).toString(16), c += ("00" + e).substr(e.length)
            }
            return c
        },
        i = {
            previousWindowKeyDown: null,
            previousActiveElement: null,
            previousBodyPadding: null
        },
        j = function() {
            if ("undefined" == typeof document) return void console.error("SweetAlert2 requires document to initialize");
            if (!document.getElementsByClassName(b.container).length) {
                document.body.appendChild(f);
                var a = l(),
                    c = B(a, b.input),
                    d = B(a, b.file),
                    e = a.querySelector("." + b.range + " input"),
                    g = a.querySelector("." + b.range + " output"),
                    h = B(a, b.select),
                    i = a.querySelector("." + b.checkbox + " input"),
                    j = B(a, b.textarea);
                return c.oninput = function() {
                    Y.resetValidationError()
                }, c.onkeydown = function(a) {
                    setTimeout(function() {
                        13 === a.keyCode && (a.stopPropagation(), Y.clickConfirm())
                    }, 0)
                }, d.onchange = function() {
                    Y.resetValidationError()
                }, e.oninput = function() {
                    Y.resetValidationError(), g.value = e.value
                }, e.onchange = function() {
                    Y.resetValidationError(), e.previousSibling.value = e.value
                }, h.onchange = function() {
                    Y.resetValidationError()
                }, i.onchange = function() {
                    Y.resetValidationError()
                }, j.oninput = function() {
                    Y.resetValidationError()
                }, a
            }
        },
        k = function(a) {
            return f.querySelector("." + a)
        },
        l = function() {
            return document.body.querySelector("." + b.modal) || j()
        },
        m = function() {
            return l().querySelectorAll("." + b.icon)
        },
        n = function() {
            return k(b.title)
        },
        o = function() {
            return k(b.content)
        },
        p = function() {
            return k(b.image)
        },
        q = function() {
            return k(b.spacer)
        },
        r = function() {
            return k(b.progresssteps)
        },
        s = function() {
            return k(b.validationerror)
        },
        t = function() {
            return k(b.confirm)
        },
        u = function() {
            return k(b.cancel)
        },
        v = function() {
            return k(b.close)
        },
        w = function(a) {
            var b = [t(), u()];
            return a && b.reverse(), b.concat(Array.prototype.slice.call(l().querySelectorAll("button:not([class^=swal2-]), input:not([type=hidden]), textarea, select")))
        },
        x = function(a, b) {
            return !!a.classList && a.classList.contains(b)
        },
        y = function(a) {
            if (a.focus(), "file" !== a.type) {
                var b = a.value;
                a.value = "", a.value = b
            }
        },
        z = function(a, b) {
            if (a && b) {
                b.split(/\s+/).filter(Boolean).forEach(function(b) {
                    a.classList.add(b)
                })
            }
        },
        A = function(a, b) {
            if (a && b) {
                b.split(/\s+/).filter(Boolean).forEach(function(b) {
                    a.classList.remove(b)
                })
            }
        },
        B = function(a, b) {
            for (var c = 0; c < a.childNodes.length; c++)
                if (x(a.childNodes[c], b)) return a.childNodes[c]
        },
        C = function(a, b) {
            b || (b = "block"), a.style.opacity = "", a.style.display = b
        },
        D = function(a) {
            a.style.opacity = "", a.style.display = "none"
        },
        E = function(a) {
            for (; a.firstChild;) a.removeChild(a.firstChild)
        },
        F = function(a) {
            return a.offsetWidth || a.offsetHeight || a.getClientRects().length
        },
        G = function(a, b) {
            a.style.removeProperty ? a.style.removeProperty(b) : a.style.removeAttribute(b)
        },
        H = function(a) {
            if ("function" == typeof MouseEvent) {
                var b = new MouseEvent("click", {
                    view: window,
                    bubbles: !1,
                    cancelable: !0
                });
                a.dispatchEvent(b)
            } else if (document.createEvent) {
                var c = document.createEvent("MouseEvents");
                c.initEvent("click", !1, !1), a.dispatchEvent(c)
            } else document.createEventObject ? a.fireEvent("onclick") : "function" == typeof a.onclick && a.onclick()
        },
        I = function() {
            var a = document.createElement("div"),
                b = {
                    WebkitAnimation: "webkitAnimationEnd",
                    OAnimation: "oAnimationEnd oanimationend",
                    msAnimation: "MSAnimationEnd",
                    animation: "animationend"
                };
            for (var c in b)
                if (b.hasOwnProperty(c) && void 0 !== a.style[c]) return b[c];
            return !1
        }(),
        J = function() {
            var a = l();
            window.onkeydown = i.previousWindowKeyDown, i.previousActiveElement && i.previousActiveElement.focus && i.previousActiveElement.focus(), clearTimeout(a.timeout)
        },
        K = function() {
            var a = document.createElement("div");
            a.style.width = "50px", a.style.height = "50px", a.style.overflow = "scroll", document.body.appendChild(a);
            var b = a.offsetWidth - a.clientWidth;
            return document.body.removeChild(a), b
        },
        L = function(a, b) {
            var c = void 0;
            return function() {
                var d = function() {
                    c = null, a()
                };
                clearTimeout(c), c = setTimeout(d, b)
            }
        },
        M = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(a) {
            return typeof a
        } : function(a) {
            return a && "function" == typeof Symbol && a.constructor === Symbol && a !== Symbol.prototype ? "symbol" : typeof a
        },
        N = (function() {
            function a(a) {
                this.value = a
            }

            function b(b) {
                function c(a, b) {
                    return new Promise(function(c, e) {
                        var h = {
                            key: a,
                            arg: b,
                            resolve: c,
                            reject: e,
                            next: null
                        };
                        g ? g = g.next = h : (f = g = h, d(a, b))
                    })
                }

                function d(c, f) {
                    try {
                        var g = b[c](f),
                            h = g.value;
                        h instanceof a ? Promise.resolve(h.value).then(function(a) {
                            d("next", a)
                        }, function(a) {
                            d("throw", a)
                        }) : e(g.done ? "return" : "normal", g.value)
                    } catch (a) {
                        e("throw", a)
                    }
                }

                function e(a, b) {
                    switch (a) {
                        case "return":
                            f.resolve({
                                value: b,
                                done: !0
                            });
                            break;
                        case "throw":
                            f.reject(b);
                            break;
                        default:
                            f.resolve({
                                value: b,
                                done: !1
                            })
                    }
                    f = f.next, f ? d(f.key, f.arg) : g = null
                }
                var f, g;
                this._invoke = c, "function" != typeof b.return && (this.return = void 0)
            }
            "function" == typeof Symbol && Symbol.asyncIterator && (b.prototype[Symbol.asyncIterator] = function() {
                return this
            }), b.prototype.next = function(a) {
                return this._invoke("next", a)
            }, b.prototype.throw = function(a) {
                return this._invoke("throw", a)
            }, b.prototype.return = function(a) {
                return this._invoke("return", a)
            }
        }(), Object.assign || function(a) {
            for (var b = 1; b < arguments.length; b++) {
                var c = arguments[b];
                for (var d in c) Object.prototype.hasOwnProperty.call(c, d) && (a[d] = c[d])
            }
            return a
        }),
        O = N({}, d),
        P = [],
        Q = void 0,
        R = function(a) {
            var e = l();
            for (var f in a) d.hasOwnProperty(f) || "extraParams" === f || console.warn('SweetAlert2: Unknown parameter "' + f + '"');
            e.style.width = "number" == typeof a.width ? a.width + "px" : a.width, e.style.padding = a.padding + "px", e.style.background = a.background;
            var g = n(),
                h = o(),
                i = t(),
                j = u(),
                k = v();
            if (g.innerHTML = a.title.split("\n").join("<br>"), a.text || a.html) {
                if ("object" === M(a.html))
                    if (h.innerHTML = "", 0 in a.html)
                        for (var s = 0; s in a.html; s++) h.appendChild(a.html[s].cloneNode(!0));
                    else h.appendChild(a.html.cloneNode(!0));
                else a.html ? h.innerHTML = a.html : a.text && (h.innerHTML = ("" + a.text).split("\n").join("<br>"));
                C(h)
            } else D(h);
            a.showCloseButton ? C(k) : D(k), e.className = b.modal, a.customClass && z(e, a.customClass);
            var w = r(),
                x = parseInt(null === a.currentProgressStep ? Y.getQueueStep() : a.currentProgressStep, 10);
            a.progressSteps.length ? (C(w), E(w), x >= a.progressSteps.length && console.warn("SweetAlert2: Invalid currentProgressStep parameter, it should be less than progressSteps.length (currentProgressStep like JS arrays starts from 0)"), a.progressSteps.forEach(function(c, d) {
                var e = document.createElement("li");
                if (z(e, b.progresscircle), e.innerHTML = c, d === x && z(e, b.activeprogressstep), w.appendChild(e), d !== a.progressSteps.length - 1) {
                    var f = document.createElement("li");
                    z(f, b.progressline), f.style.width = a.progressStepsDistance, w.appendChild(f)
                }
            })) : D(w);
            for (var y = m(), B = 0; B < y.length; B++) D(y[B]);
            if (a.type) {
                var F = !1;
                for (var H in c)
                    if (a.type === H) {
                        F = !0;
                        break
                    }
                if (!F) return console.error("SweetAlert2: Unknown alert type: " + a.type), !1;
                var I = e.querySelector("." + b.icon + "." + c[a.type]);
                switch (C(I), a.type) {
                    case "success":
                        z(I, "animate"), z(I.querySelector(".tip"), "animate-success-tip"), z(I.querySelector(".long"), "animate-success-long");
                        break;
                    case "error":
                        z(I, "animate-error-icon"), z(I.querySelector(".x-mark"), "animate-x-mark");
                        break;
                    case "warning":
                        z(I, "pulse-warning")
                }
            }
            var J = p();
            a.imageUrl ? (J.setAttribute("src", a.imageUrl), C(J), a.imageWidth ? J.setAttribute("width", a.imageWidth) : J.removeAttribute("width"), a.imageHeight ? J.setAttribute("height", a.imageHeight) : J.removeAttribute("height"), J.className = b.image, a.imageClass && z(J, a.imageClass)) : D(J), a.showCancelButton ? j.style.display = "inline-block" : D(j), a.showConfirmButton ? G(i, "display") : D(i);
            var K = q();
            a.showConfirmButton || a.showCancelButton ? C(K) : D(K), i.innerHTML = a.confirmButtonText, j.innerHTML = a.cancelButtonText, a.buttonsStyling && (i.style.backgroundColor = a.confirmButtonColor, j.style.backgroundColor = a.cancelButtonColor), i.className = b.confirm, z(i, a.confirmButtonClass), j.className = b.cancel, z(j, a.cancelButtonClass), a.buttonsStyling ? (z(i, b.styled), z(j, b.styled)) : (A(i, b.styled), A(j, b.styled), i.style.backgroundColor = i.style.borderLeftColor = i.style.borderRightColor = "", j.style.backgroundColor = j.style.borderLeftColor = j.style.borderRightColor = ""), !0 === a.animation ? A(e, b.noanimation) : z(e, b.noanimation)
        },
        S = function(a, c) {
            var d = l();
            a ? (z(d, b.show), z(f, b.fade), A(d, b.hide)) : A(d, b.fade), C(d), f.style.overflowY = "hidden", I && !x(d, b.noanimation) ? d.addEventListener(I, function a() {
                d.removeEventListener(I, a), f.style.overflowY = "auto"
            }) : f.style.overflowY = "auto", z(f, b.in), z(document.body, b.in), T(), V(), i.previousActiveElement = document.activeElement, null !== c && "function" == typeof c && c(d)
        },
        T = function() {
            null === i.previousBodyPadding && document.body.scrollHeight > window.innerHeight && (i.previousBodyPadding = document.body.style.paddingRight, document.body.style.paddingRight = K() + "px")
        },
        U = function() {
            null !== i.previousBodyPadding && (document.body.style.paddingRight = i.previousBodyPadding, i.previousBodyPadding = null)
        },
        V = function() {
            if (/iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream && !x(document.body, b.iosfix)) {
                var a = document.body.scrollTop;
                document.body.style.top = -1 * a + "px", z(document.body, b.iosfix)
            }
        },
        W = function() {
            if (x(document.body, b.iosfix)) {
                var a = parseInt(document.body.style.top, 10);
                A(document.body, b.iosfix), document.body.scrollTop = -1 * a
            }
        },
        X = function() {
            for (var a = arguments.length, c = Array(a), d = 0; d < a; d++) c[d] = arguments[d];
            if (void 0 === c[0]) return console.error("SweetAlert2 expects at least 1 attribute!"), !1;
            var e = N({}, O);
            switch (M(c[0])) {
                case "string":
                    e.title = c[0], e.text = c[1], e.type = c[2];
                    break;
                case "object":
                    N(e, c[0]), e.extraParams = c[0].extraParams, "email" === e.input && null === e.inputValidator && (e.inputValidator = function(a) {
                        return new Promise(function(b, c) {
                            /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/.test(a) ? b() : c("Invalid email address")
                        })
                    });
                    break;
                default:
                    return console.error('SweetAlert2: Unexpected type of argument! Expected "string" or "object", got ' + M(c[0])), !1
            }
            R(e);
            var g = l();
            return new Promise(function(a, c) {
                e.timer && (g.timeout = setTimeout(function() {
                    Y.closeModal(e.onClose), c("timer")
                }, e.timer));
                var d = function(a) {
                        switch (a = a || e.input) {
                            case "select":
                            case "textarea":
                            case "file":
                                return B(g, b[a]);
                            case "checkbox":
                                return g.querySelector("." + b.checkbox + " input");
                            case "radio":
                                return g.querySelector("." + b.radio + " input:checked") || g.querySelector("." + b.radio + " input:first-child");
                            case "range":
                                return g.querySelector("." + b.range + " input");
                            default:
                                return B(g, b.input)
                        }
                    },
                    j = function() {
                        var a = d();
                        if (!a) return null;
                        switch (e.input) {
                            case "checkbox":
                                return a.checked ? 1 : 0;
                            case "radio":
                                return a.checked ? a.value : null;
                            case "file":
                                return a.files.length ? a.files[0] : null;
                            default:
                                return e.inputAutoTrim ? a.value.trim() : a.value
                        }
                    };
                e.input && setTimeout(function() {
                    var a = d();
                    a && y(a)
                }, 0);
                for (var k = function(b) {
                    e.showLoaderOnConfirm && Y.showLoading(), e.preConfirm ? e.preConfirm(b, e.extraParams).then(function(c) {
                        Y.closeModal(e.onClose), a(c || b)
                    }, function(a) {
                        Y.hideLoading(), a && Y.showValidationError(a)
                    }) : (Y.closeModal(e.onClose), a(b))
                }, m = function(a) {
                    var b = a || window.event,
                        d = b.target || b.srcElement,
                        f = t(),
                        g = u(),
                        i = f === d || f.contains(d),
                        l = g === d || g.contains(d);
                    switch (b.type) {
                        case "mouseover":
                        case "mouseup":
                            e.buttonsStyling && (i ? f.style.backgroundColor = h(e.confirmButtonColor, -.1) : l && (g.style.backgroundColor = h(e.cancelButtonColor, -.1)));
                            break;
                        case "mouseout":
                            e.buttonsStyling && (i ? f.style.backgroundColor = e.confirmButtonColor : l && (g.style.backgroundColor = e.cancelButtonColor));
                            break;
                        case "mousedown":
                            e.buttonsStyling && (i ? f.style.backgroundColor = h(e.confirmButtonColor, -.2) : l && (g.style.backgroundColor = h(e.cancelButtonColor, -.2)));
                            break;
                        case "click":
                            i && Y.isVisible() ? e.input ? function() {
                                var a = j();
                                e.inputValidator ? (Y.disableInput(), e.inputValidator(a, e.extraParams).then(function() {
                                    Y.enableInput(), k(a)
                                }, function(a) {
                                    Y.enableInput(), a && Y.showValidationError(a)
                                })) : k(a)
                            }() : k(!0) : l && Y.isVisible() && (Y.closeModal(e.onClose), c("cancel"))
                    }
                }, n = g.querySelectorAll("button"), o = 0; o < n.length; o++) n[o].onclick = m, n[o].onmouseover = m, n[o].onmouseout = m, n[o].onmousedown = m;
                v().onclick = function() {
                    Y.closeModal(e.onClose), c("close")
                }, f.onclick = function(a) {
                    a.target === f && e.allowOutsideClick && (Y.closeModal(e.onClose), c("overlay"))
                };
                var p = t(),
                    x = u();
                e.reverseButtons ? p.parentNode.insertBefore(x, p) : p.parentNode.insertBefore(p, x);
                var E = function(a, b) {
                        for (var c = w(e.focusCancel), d = 0; d < c.length; d++) {
                            a += b, a === c.length ? a = 0 : -1 === a && (a = c.length - 1);
                            var f = c[a];
                            if (F(f)) return f.focus()
                        }
                    },
                    G = function(a) {
                        var b = a || window.event,
                            d = b.keyCode || b.which;
                        if (-1 !== [9, 13, 32, 27].indexOf(d)) {
                            for (var f = b.target || b.srcElement, g = w(e.focusCancel), h = -1, i = 0; i < g.length; i++)
                                if (f === g[i]) {
                                    h = i;
                                    break
                                }
                            9 === d ? (b.shiftKey ? E(h, -1) : E(h, 1), b.stopPropagation(), b.preventDefault()) : 13 === d || 32 === d ? -1 === h && H(e.focusCancel ? x : p) : 27 === d && !0 === e.allowEscapeKey && (Y.closeModal(e.onClose), c("esc"))
                        }
                    };
                i.previousWindowKeyDown = window.onkeydown, window.onkeydown = G, e.buttonsStyling && (p.style.borderLeftColor = e.confirmButtonColor, p.style.borderRightColor = e.confirmButtonColor), Y.showLoading = Y.enableLoading = function() {
                    C(q()), C(p, "inline-block"), z(p, b.loading), z(g, b.loading), p.disabled = !0, x.disabled = !0
                }, Y.hideLoading = Y.disableLoading = function() {
                    e.showConfirmButton || (D(p), e.showCancelButton || D(q())), A(p, b.loading), A(g, b.loading), p.disabled = !1, x.disabled = !1
                }, Y.enableButtons = function() {
                    p.disabled = !1, x.disabled = !1
                }, Y.disableButtons = function() {
                    p.disabled = !0, x.disabled = !0
                }, Y.enableConfirmButton = function() {
                    p.disabled = !1
                }, Y.disableConfirmButton = function() {
                    p.disabled = !0
                }, Y.enableInput = function() {
                    var a = d();
                    if (!a) return !1;
                    if ("radio" === a.type)
                        for (var b = a.parentNode.parentNode, c = b.querySelectorAll("input"), e = 0; e < c.length; e++) c[e].disabled = !1;
                    else a.disabled = !1
                }, Y.disableInput = function() {
                    var a = d();
                    if (!a) return !1;
                    if (a && "radio" === a.type)
                        for (var b = a.parentNode.parentNode, c = b.querySelectorAll("input"), e = 0; e < c.length; e++) c[e].disabled = !0;
                    else a.disabled = !0
                }, Y.recalculateHeight = L(function() {
                    var a = l(),
                        b = a.style.display;
                    a.style.minHeight = "", C(a), a.style.minHeight = a.scrollHeight + 1 + "px", a.style.display = b
                }, 50), Y.showValidationError = function(a) {
                    var c = s();
                    c.innerHTML = a, C(c);
                    var e = d();
                    y(e), z(e, b.inputerror)
                }, Y.resetValidationError = function() {
                    var a = s();
                    D(a), Y.recalculateHeight();
                    var c = d();
                    c && A(c, b.inputerror)
                }, Y.getProgressSteps = function() {
                    return e.progressSteps
                }, Y.setProgressSteps = function(a) {
                    e.progressSteps = a, R(e)
                }, Y.showProgressSteps = function() {
                    C(r())
                }, Y.hideProgressSteps = function() {
                    D(r())
                }, Y.enableButtons(), Y.hideLoading(), Y.resetValidationError();
                for (var I = ["input", "file", "range", "select", "radio", "checkbox", "textarea"], J = void 0, K = 0; K < I.length; K++) {
                    var N = b[I[K]],
                        O = B(g, N);
                    if (J = d(I[K])) {
                        for (var P in J.attributes)
                            if (J.attributes.hasOwnProperty(P)) {
                                var T = J.attributes[P].name;
                                "type" !== T && "value" !== T && J.removeAttribute(T)
                            }
                        for (var U in e.inputAttributes) J.setAttribute(U, e.inputAttributes[U])
                    }
                    O.className = N, e.inputClass && z(O, e.inputClass), D(O)
                }
                var V = void 0;
                ! function() {
                    switch (e.input) {
                        case "text":
                        case "email":
                        case "password":
                        case "number":
                        case "tel":
                            J = B(g, b.input), J.value = e.inputValue, J.placeholder = e.inputPlaceholder, J.type = e.input, C(J);
                            break;
                        case "file":
                            J = B(g, b.file), J.placeholder = e.inputPlaceholder, J.type = e.input, C(J);
                            break;
                        case "range":
                            var a = B(g, b.range),
                                c = a.querySelector("input"),
                                f = a.querySelector("output");
                            c.value = e.inputValue, c.type = e.input, f.value = e.inputValue, C(a);
                            break;
                        case "select":
                            var h = B(g, b.select);
                            if (h.innerHTML = "", e.inputPlaceholder) {
                                var i = document.createElement("option");
                                i.innerHTML = e.inputPlaceholder, i.value = "", i.disabled = !0, i.selected = !0, h.appendChild(i)
                            }
                            V = function(a) {
                                for (var b in a) {
                                    var c = document.createElement("option");
                                    c.value = b, c.innerHTML = a[b], e.inputValue === b && (c.selected = !0), h.appendChild(c)
                                }
                                C(h), h.focus()
                            };
                            break;
                        case "radio":
                            var j = B(g, b.radio);
                            j.innerHTML = "", V = function(a) {
                                for (var c in a) {
                                    var d = 1,
                                        f = document.createElement("input"),
                                        g = document.createElement("label"),
                                        h = document.createElement("span");
                                    f.type = "radio", f.name = b.radio, f.value = c, f.id = b.radio + "-" + d++, e.inputValue === c && (f.checked = !0), h.innerHTML = a[c], g.appendChild(f), g.appendChild(h), g.for = f.id, j.appendChild(g)
                                }
                                C(j);
                                var i = j.querySelectorAll("input");
                                i.length && i[0].focus()
                            };
                            break;
                        case "checkbox":
                            var k = B(g, b.checkbox),
                                l = d("checkbox");
                            l.type = "checkbox", l.value = 1, l.id = b.checkbox, l.checked = Boolean(e.inputValue);
                            var m = k.getElementsByTagName("span");
                            m.length && k.removeChild(m[0]), m = document.createElement("span"), m.innerHTML = e.inputPlaceholder, k.appendChild(m), C(k);
                            break;
                        case "textarea":
                            var n = B(g, b.textarea);
                            n.value = e.inputValue, n.placeholder = e.inputPlaceholder, C(n);
                            break;
                        case null:
                            break;
                        default:
                            console.error('SweetAlert2: Unexpected type of input! Expected "text", "email", "password", "select", "checkbox", "textarea" or "file", got "' + e.input + '"')
                    }
                }(), "select" !== e.input && "radio" !== e.input || (e.inputOptions instanceof Promise ? (Y.showLoading(), e.inputOptions.then(function(a) {
                    Y.hideLoading(), V(a)
                })) : "object" === M(e.inputOptions) ? V(e.inputOptions) : console.error("SweetAlert2: Unexpected type of inputOptions! Expected object or Promise, got " + M(e.inputOptions))), S(e.animation, e.onOpen), E(-1, 1), f.scrollTop = 0, "undefined" == typeof MutationObserver || Q || (Q = new MutationObserver(Y.recalculateHeight), Q.observe(g, {
                    childList: !0,
                    characterData: !0,
                    subtree: !0
                }))
            })
        },
        Y = function a() {
            for (var b = arguments.length, c = Array(b), d = 0; d < b; d++) c[d] = arguments[d];
            return a.isVisible() && a.close(), X.apply(void 0, c)
        };
    return Y.isVisible = function() {
        var a = l();
        return F(a)
    }, Y.queue = function(a) {
        P = a;
        var b = l(),
            c = function() {
                P = [], b.removeAttribute("data-queue-step")
            },
            d = [];
        return new Promise(function(a, e) {
            ! function f(g, h) {
                g < P.length ? (b.setAttribute("data-queue-step", g), Y(P[g]).then(function(a) {
                    d.push(a), f(g + 1, h)
                }, function(a) {
                    c(), e(a)
                })) : (c(), a(d))
            }(0)
        })
    }, Y.getQueueStep = function() {
        return l().getAttribute("data-queue-step")
    }, Y.insertQueueStep = function(a, b) {
        return b && b < P.length ? P.splice(b, 0, a) : P.push(a)
    }, Y.deleteQueueStep = function(a) {
        void 0 !== P[a] && P.splice(a, 1)
    }, Y.close = Y.closeModal = function(a) {
        var d = l();
        A(d, b.show), z(d, b.hide);
        var e = d.querySelector("." + b.icon + "." + c.success);
        A(e, "animate"), A(e.querySelector(".tip"), "animate-success-tip"), A(e.querySelector(".long"), "animate-success-long");
        var g = d.querySelector("." + b.icon + "." + c.error);
        A(g, "animate-error-icon"), A(g.querySelector(".x-mark"), "animate-x-mark");
        var h = d.querySelector("." + b.icon + "." + c.warning);
        A(h, "pulse-warning"), J();
        var i = function() {
            D(d), d.style.minHeight = "", A(f, b.in), A(document.body, b.in), U(), W()
        };
        I && !x(d, b.noanimation) ? d.addEventListener(I, function a() {
            d.removeEventListener(I, a), x(d, b.hide) && i()
        }) : i(), null !== a && "function" == typeof a && a(d)
    }, Y.clickConfirm = function() {
        return t().click()
    }, Y.clickCancel = function() {
        return u().click()
    }, Y.setDefaults = function(a) {
        if (!a || "object" !== (void 0 === a ? "undefined" : M(a))) return console.error("SweetAlert2: the argument for setDefaults() is required and has to be a object");
        for (var b in a) d.hasOwnProperty(b) || "extraParams" === b || (console.warn('SweetAlert2: Unknown parameter "' + b + '"'), delete a[b]);
        N(O, a)
    }, Y.resetDefaults = function() {
        O = N({}, d)
    }, Y.noop = function() {}, Y.version = "6.1.1", Y
}), window.Sweetalert2 && (window.sweetAlert = window.swal = window.Sweetalert2), ! function(a, b) {
    "object" == typeof exports && "undefined" != typeof module ? module.exports = b() : "function" == typeof define && define.amd ? define(b) : a.Sweetalert2 = b()
}(this, function() {
    "use strict";
    var a = "swal2-",
        b = function(b) {
            var c = {};
            for (var d in b) c[b[d]] = a + b[d];
            return c
        },
        c = b(["container", "in", "iosfix", "modal", "overlay", "fade", "show", "hide", "noanimation", "close", "title", "content", "spacer", "confirm", "cancel", "icon", "image", "input", "file", "range", "select", "radio", "checkbox", "textarea", "inputerror", "validationerror", "progresssteps", "activeprogressstep", "progresscircle", "progressline", "loading", "styled"]),
        d = b(["success", "warning", "info", "question", "error"]),
        e = {
            title: "",
            text: "",
            html: "",
            type: null,
            customClass: "",
            animation: !0,
            allowOutsideClick: !0,
            allowEscapeKey: !0,
            showConfirmButton: !0,
            showCancelButton: !1,
            preConfirm: null,
            confirmButtonText: "OK",
            confirmButtonColor: "#3085d6",
            confirmButtonClass: null,
            cancelButtonText: "Cancel",
            cancelButtonColor: "#aaa",
            cancelButtonClass: null,
            buttonsStyling: !0,
            reverseButtons: !1,
            focusCancel: !1,
            showCloseButton: !1,
            showLoaderOnConfirm: !1,
            imageUrl: null,
            imageWidth: null,
            imageHeight: null,
            imageClass: null,
            timer: null,
            width: 500,
            padding: 20,
            background: "#fff",
            input: null,
            inputPlaceholder: "",
            inputValue: "",
            inputOptions: {},
            inputAutoTrim: !0,
            inputClass: null,
            inputAttributes: {},
            inputValidator: null,
            progressSteps: [],
            currentProgressStep: null,
            progressStepsDistance: "40px",
            onOpen: null,
            onClose: null
        },
        f = ('\n  <div class="' + c.modal + '" style="display: none" tabIndex="-1">\n    <ul class="' + c.progresssteps + '"></ul>\n    <div class="' + c.icon + " " + d.error + '">\n      <span class="x-mark"><span class="line left"></span><span class="line right"></span></span>\n    </div>\n    <div class="' + c.icon + " " + d.question + '">?</div>\n    <div class="' + c.icon + " " + d.warning + '">!</div>\n    <div class="' + c.icon + " " + d.info + '">i</div>\n    <div class="' + c.icon + " " + d.success + '">\n      <span class="line tip"></span> <span class="line long"></span>\n      <div class="placeholder"></div> <div class="fix"></div>\n    </div>\n    <img class="' + c.image + '">\n    <h2 class="' + c.title + '"></h2>\n    <div class="' + c.content + '"></div>\n    <input class="' + c.input + '">\n    <input type="file" class="' + c.file + '">\n    <div class="' + c.range + '">\n      <output></output>\n      <input type="range">\n    </div>\n    <select class="' + c.select + '"></select>\n    <div class="' + c.radio + '"></div>\n    <label for="' + c.checkbox + '" class="' + c.checkbox + '">\n      <input type="checkbox">\n    </label>\n    <textarea class="' + c.textarea + '"></textarea>\n    <div class="' + c.validationerror + '"></div>\n    <hr class="' + c.spacer + '">\n    <button type="button" class="' + c.confirm + '">OK</button>\n    <button type="button" class="' + c.cancel + '">Cancel</button>\n    <span class="' + c.close + '">&times;</span>\n  </div>\n').replace(/(^|\n)\s*/g, ""),
        g = void 0,
        h = document.getElementsByClassName(c.container);
    h.length ? g = h[0] : (g = document.createElement("div"), g.className = c.container, g.innerHTML = f);
    var i = function(a, b) {
            a = String(a).replace(/[^0-9a-f]/gi, ""), a.length < 6 && (a = a[0] + a[0] + a[1] + a[1] + a[2] + a[2]), b = b || 0;
            for (var c = "#", d = 0; d < 3; d++) {
                var e = parseInt(a.substr(2 * d, 2), 16);
                e = Math.round(Math.min(Math.max(0, e + e * b), 255)).toString(16), c += ("00" + e).substr(e.length)
            }
            return c
        },
        j = {
            previousWindowKeyDown: null,
            previousActiveElement: null,
            previousBodyPadding: null
        },
        k = function() {
            if ("undefined" == typeof document) return void console.error("SweetAlert2 requires document to initialize");
            if (!document.getElementsByClassName(c.container).length) {
                document.body.appendChild(g);
                var a = m(),
                    b = C(a, c.input),
                    d = C(a, c.file),
                    e = a.querySelector("." + c.range + " input"),
                    f = a.querySelector("." + c.range + " output"),
                    h = C(a, c.select),
                    i = a.querySelector("." + c.checkbox + " input"),
                    j = C(a, c.textarea);
                return b.oninput = function() {
                    Z.resetValidationError()
                }, b.onkeydown = function(a) {
                    setTimeout(function() {
                        13 === a.keyCode && (a.stopPropagation(), Z.clickConfirm())
                    }, 0)
                }, d.onchange = function() {
                    Z.resetValidationError()
                }, e.oninput = function() {
                    Z.resetValidationError(), f.value = e.value
                }, e.onchange = function() {
                    Z.resetValidationError(), e.previousSibling.value = e.value
                }, h.onchange = function() {
                    Z.resetValidationError()
                }, i.onchange = function() {
                    Z.resetValidationError()
                }, j.oninput = function() {
                    Z.resetValidationError()
                }, a
            }
        },
        l = function(a) {
            return g.querySelector("." + a)
        },
        m = function() {
            return document.body.querySelector("." + c.modal) || k()
        },
        n = function() {
            return m().querySelectorAll("." + c.icon)
        },
        o = function() {
            return l(c.title)
        },
        p = function() {
            return l(c.content)
        },
        q = function() {
            return l(c.image)
        },
        r = function() {
            return l(c.spacer)
        },
        s = function() {
            return l(c.progresssteps)
        },
        t = function() {
            return l(c.validationerror)
        },
        u = function() {
            return l(c.confirm)
        },
        v = function() {
            return l(c.cancel)
        },
        w = function() {
            return l(c.close)
        },
        x = function(b) {
            var c = [u(), v()];
            return b && c.reverse(), c.concat(Array.prototype.slice.call(m().querySelectorAll("button:not([class^=" + a + "]), input:not([type=hidden]), textarea, select")))
        },
        y = function(a, b) {
            return !!a.classList && a.classList.contains(b)
        },
        z = function(a) {
            if (a.focus(), "file" !== a.type) {
                var b = a.value;
                a.value = "", a.value = b
            }
        },
        A = function(a, b) {
            if (a && b) {
                b.split(/\s+/).filter(Boolean).forEach(function(b) {
                    a.classList.add(b)
                })
            }
        },
        B = function(a, b) {
            if (a && b) {
                b.split(/\s+/).filter(Boolean).forEach(function(b) {
                    a.classList.remove(b)
                })
            }
        },
        C = function(a, b) {
            for (var c = 0; c < a.childNodes.length; c++)
                if (y(a.childNodes[c], b)) return a.childNodes[c]
        },
        D = function(a, b) {
            b || (b = "block"), a.style.opacity = "", a.style.display = b
        },
        E = function(a) {
            a.style.opacity = "", a.style.display = "none"
        },
        F = function(a) {
            for (; a.firstChild;) a.removeChild(a.firstChild)
        },
        G = function(a) {
            return a.offsetWidth || a.offsetHeight || a.getClientRects().length
        },
        H = function(a, b) {
            a.style.removeProperty ? a.style.removeProperty(b) : a.style.removeAttribute(b)
        },
        I = function(a) {
            if ("function" == typeof MouseEvent) {
                var b = new MouseEvent("click", {
                    view: window,
                    bubbles: !1,
                    cancelable: !0
                });
                a.dispatchEvent(b)
            } else if (document.createEvent) {
                var c = document.createEvent("MouseEvents");
                c.initEvent("click", !1, !1), a.dispatchEvent(c)
            } else document.createEventObject ? a.fireEvent("onclick") : "function" == typeof a.onclick && a.onclick()
        },
        J = function() {
            var a = document.createElement("div"),
                b = {
                    WebkitAnimation: "webkitAnimationEnd",
                    OAnimation: "oAnimationEnd oanimationend",
                    msAnimation: "MSAnimationEnd",
                    animation: "animationend"
                };
            for (var c in b)
                if (b.hasOwnProperty(c) && void 0 !== a.style[c]) return b[c];
            return !1
        }(),
        K = function() {
            var a = m();
            window.onkeydown = j.previousWindowKeyDown, j.previousActiveElement && j.previousActiveElement.focus && j.previousActiveElement.focus(), clearTimeout(a.timeout)
        },
        L = function() {
            var a = document.createElement("div");
            a.style.width = "50px", a.style.height = "50px", a.style.overflow = "scroll", document.body.appendChild(a);
            var b = a.offsetWidth - a.clientWidth;
            return document.body.removeChild(a), b
        },
        M = function(a, b) {
            var c = void 0;
            return function() {
                var d = function() {
                    c = null, a()
                };
                clearTimeout(c), c = setTimeout(d, b)
            }
        },
        N = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(a) {
            return typeof a
        } : function(a) {
            return a && "function" == typeof Symbol && a.constructor === Symbol && a !== Symbol.prototype ? "symbol" : typeof a
        },
        O = (function() {
            function a(a) {
                this.value = a
            }

            function b(b) {
                function c(a, b) {
                    return new Promise(function(c, e) {
                        var h = {
                            key: a,
                            arg: b,
                            resolve: c,
                            reject: e,
                            next: null
                        };
                        g ? g = g.next = h : (f = g = h, d(a, b))
                    })
                }

                function d(c, f) {
                    try {
                        var g = b[c](f),
                            h = g.value;
                        h instanceof a ? Promise.resolve(h.value).then(function(a) {
                            d("next", a)
                        }, function(a) {
                            d("throw", a)
                        }) : e(g.done ? "return" : "normal", g.value)
                    } catch (a) {
                        e("throw", a)
                    }
                }

                function e(a, b) {
                    switch (a) {
                        case "return":
                            f.resolve({
                                value: b,
                                done: !0
                            });
                            break;
                        case "throw":
                            f.reject(b);
                            break;
                        default:
                            f.resolve({
                                value: b,
                                done: !1
                            })
                    }
                    f = f.next, f ? d(f.key, f.arg) : g = null
                }
                var f, g;
                this._invoke = c, "function" != typeof b.return && (this.return = void 0)
            }
            "function" == typeof Symbol && Symbol.asyncIterator && (b.prototype[Symbol.asyncIterator] = function() {
                return this
            }), b.prototype.next = function(a) {
                return this._invoke("next", a)
            }, b.prototype.throw = function(a) {
                return this._invoke("throw", a)
            }, b.prototype.return = function(a) {
                return this._invoke("return", a)
            }
        }(), Object.assign || function(a) {
            for (var b = 1; b < arguments.length; b++) {
                var c = arguments[b];
                for (var d in c) Object.prototype.hasOwnProperty.call(c, d) && (a[d] = c[d])
            }
            return a
        }),
        P = O({}, e),
        Q = [],
        R = void 0,
        S = function(a) {
            var b = m();
            for (var f in a) e.hasOwnProperty(f) || "extraParams" === f || console.warn('SweetAlert2: Unknown parameter "' + f + '"');
            b.style.width = "number" == typeof a.width ? a.width + "px" : a.width, b.style.padding = a.padding + "px", b.style.background = a.background;
            var g = o(),
                h = p(),
                i = u(),
                j = v(),
                k = w();
            if (g.innerHTML = a.title.split("\n").join("<br>"), a.text || a.html) {
                if ("object" === N(a.html))
                    if (h.innerHTML = "", 0 in a.html)
                        for (var l = 0; l in a.html; l++) h.appendChild(a.html[l].cloneNode(!0));
                    else h.appendChild(a.html.cloneNode(!0));
                else a.html ? h.innerHTML = a.html : a.text && (h.innerHTML = ("" + a.text).split("\n").join("<br>"));
                D(h)
            } else E(h);
            a.showCloseButton ? D(k) : E(k), b.className = c.modal, a.customClass && A(b, a.customClass);
            var t = s(),
                x = parseInt(null === a.currentProgressStep ? Z.getQueueStep() : a.currentProgressStep, 10);
            a.progressSteps.length ? (D(t), F(t), x >= a.progressSteps.length && console.warn("SweetAlert2: Invalid currentProgressStep parameter, it should be less than progressSteps.length (currentProgressStep like JS arrays starts from 0)"), a.progressSteps.forEach(function(b, d) {
                var e = document.createElement("li");
                if (A(e, c.progresscircle), e.innerHTML = b, d === x && A(e, c.activeprogressstep), t.appendChild(e), d !== a.progressSteps.length - 1) {
                    var f = document.createElement("li");
                    A(f, c.progressline), f.style.width = a.progressStepsDistance, t.appendChild(f)
                }
            })) : E(t);
            for (var y = n(), z = 0; z < y.length; z++) E(y[z]);
            if (a.type) {
                var C = !1;
                for (var G in d)
                    if (a.type === G) {
                        C = !0;
                        break
                    }
                if (!C) return console.error("SweetAlert2: Unknown alert type: " + a.type), !1;
                var I = b.querySelector("." + c.icon + "." + d[a.type]);
                switch (D(I), a.type) {
                    case "success":
                        A(I, "animate"), A(I.querySelector(".tip"), "animate-success-tip"), A(I.querySelector(".long"), "animate-success-long");
                        break;
                    case "error":
                        A(I, "animate-error-icon"), A(I.querySelector(".x-mark"), "animate-x-mark");
                        break;
                    case "warning":
                        A(I, "pulse-warning")
                }
            }
            var J = q();
            a.imageUrl ? (J.setAttribute("src", a.imageUrl), D(J), a.imageWidth ? J.setAttribute("width", a.imageWidth) : J.removeAttribute("width"), a.imageHeight ? J.setAttribute("height", a.imageHeight) : J.removeAttribute("height"), J.className = c.image, a.imageClass && A(J, a.imageClass)) : E(J), a.showCancelButton ? j.style.display = "inline-block" : E(j), a.showConfirmButton ? H(i, "display") : E(i);
            var K = r();
            a.showConfirmButton || a.showCancelButton ? D(K) : E(K), i.innerHTML = a.confirmButtonText, j.innerHTML = a.cancelButtonText, a.buttonsStyling && (i.style.backgroundColor = a.confirmButtonColor, j.style.backgroundColor = a.cancelButtonColor), i.className = c.confirm, A(i, a.confirmButtonClass), j.className = c.cancel, A(j, a.cancelButtonClass), a.buttonsStyling ? (A(i, c.styled), A(j, c.styled)) : (B(i, c.styled), B(j, c.styled), i.style.backgroundColor = i.style.borderLeftColor = i.style.borderRightColor = "", j.style.backgroundColor = j.style.borderLeftColor = j.style.borderRightColor = ""), !0 === a.animation ? B(b, c.noanimation) : A(b, c.noanimation)
        },
        T = function(a, b) {
            var d = m();
            a ? (A(d, c.show), A(g, c.fade), B(d, c.hide)) : B(d, c.fade), D(d), g.style.overflowY = "hidden", J && !y(d, c.noanimation) ? d.addEventListener(J, function a() {
                d.removeEventListener(J, a), g.style.overflowY = "auto"
            }) : g.style.overflowY = "auto", A(g, c.in), A(document.body, c.in), U(), W(), j.previousActiveElement = document.activeElement, null !== b && "function" == typeof b && b(d)
        },
        U = function() {
            null === j.previousBodyPadding && document.body.scrollHeight > window.innerHeight && (j.previousBodyPadding = document.body.style.paddingRight, document.body.style.paddingRight = L() + "px")
        },
        V = function() {
            null !== j.previousBodyPadding && (document.body.style.paddingRight = j.previousBodyPadding, j.previousBodyPadding = null)
        },
        W = function() {
            if (/iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream && !y(document.body, c.iosfix)) {
                var a = document.body.scrollTop;
                document.body.style.top = -1 * a + "px", A(document.body, c.iosfix)
            }
        },
        X = function() {
            if (y(document.body, c.iosfix)) {
                var a = parseInt(document.body.style.top, 10);
                B(document.body, c.iosfix), document.body.scrollTop = -1 * a
            }
        },
        Y = function() {
            for (var a = arguments.length, b = Array(a), d = 0; d < a; d++) b[d] = arguments[d];
            if (void 0 === b[0]) return console.error("SweetAlert2 expects at least 1 attribute!"), !1;
            var e = O({}, P);
            switch (N(b[0])) {
                case "string":
                    e.title = b[0], e.text = b[1], e.type = b[2];
                    break;
                case "object":
                    O(e, b[0]), e.extraParams = b[0].extraParams, "email" === e.input && null === e.inputValidator && (e.inputValidator = function(a) {
                        return new Promise(function(b, c) {
                            /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/.test(a) ? b() : c("Invalid email address")
                        })
                    });
                    break;
                default:
                    return console.error('SweetAlert2: Unexpected type of argument! Expected "string" or "object", got ' + N(b[0])), !1
            }
            S(e);
            var f = m();
            return new Promise(function(a, b) {
                e.timer && (f.timeout = setTimeout(function() {
                    Z.closeModal(e.onClose), b("timer")
                }, e.timer));
                var d = function(a) {
                        switch (a = a || e.input) {
                            case "select":
                            case "textarea":
                            case "file":
                                return C(f, c[a]);
                            case "checkbox":
                                return f.querySelector("." + c.checkbox + " input");
                            case "radio":
                                return f.querySelector("." + c.radio + " input:checked") || f.querySelector("." + c.radio + " input:first-child");
                            case "range":
                                return f.querySelector("." + c.range + " input");
                            default:
                                return C(f, c.input)
                        }
                    },
                    h = function() {
                        var a = d();
                        if (!a) return null;
                        switch (e.input) {
                            case "checkbox":
                                return a.checked ? 1 : 0;
                            case "radio":
                                return a.checked ? a.value : null;
                            case "file":
                                return a.files.length ? a.files[0] : null;
                            default:
                                return e.inputAutoTrim ? a.value.trim() : a.value
                        }
                    };
                e.input && setTimeout(function() {
                    var a = d();
                    a && z(a)
                }, 0);
                for (var k = function(b) {
                    e.showLoaderOnConfirm && Z.showLoading(), e.preConfirm ? e.preConfirm(b, e.extraParams).then(function(c) {
                        Z.closeModal(e.onClose), a(c || b)
                    }, function(a) {
                        Z.hideLoading(), a && Z.showValidationError(a)
                    }) : (Z.closeModal(e.onClose), a(b))
                }, l = function(a) {
                    var c = a || window.event,
                        d = c.target || c.srcElement,
                        f = u(),
                        g = v(),
                        j = f === d || f.contains(d),
                        l = g === d || g.contains(d);
                    switch (c.type) {
                        case "mouseover":
                        case "mouseup":
                            e.buttonsStyling && (j ? f.style.backgroundColor = i(e.confirmButtonColor, -.1) : l && (g.style.backgroundColor = i(e.cancelButtonColor, -.1)));
                            break;
                        case "mouseout":
                            e.buttonsStyling && (j ? f.style.backgroundColor = e.confirmButtonColor : l && (g.style.backgroundColor = e.cancelButtonColor));
                            break;
                        case "mousedown":
                            e.buttonsStyling && (j ? f.style.backgroundColor = i(e.confirmButtonColor, -.2) : l && (g.style.backgroundColor = i(e.cancelButtonColor, -.2)));
                            break;
                        case "click":
                            j && Z.isVisible() ? e.input ? function() {
                                var a = h();
                                e.inputValidator ? (Z.disableInput(), e.inputValidator(a, e.extraParams).then(function() {
                                    Z.enableInput(), k(a)
                                }, function(a) {
                                    Z.enableInput(), a && Z.showValidationError(a)
                                })) : k(a)
                            }() : k(!0) : l && Z.isVisible() && (Z.closeModal(e.onClose), b("cancel"))
                    }
                }, n = f.querySelectorAll("button"), o = 0; o < n.length; o++) n[o].onclick = l, n[o].onmouseover = l, n[o].onmouseout = l, n[o].onmousedown = l;
                w().onclick = function() {
                    Z.closeModal(e.onClose), b("close")
                }, g.onclick = function(a) {
                    a.target === g && e.allowOutsideClick && (Z.closeModal(e.onClose), b("overlay"))
                };
                var p = u(),
                    q = v();
                e.reverseButtons ? p.parentNode.insertBefore(q, p) : p.parentNode.insertBefore(p, q);
                var y = function(a, b) {
                        for (var c = x(e.focusCancel), d = 0; d < c.length; d++) {
                            a += b, a === c.length ? a = 0 : -1 === a && (a = c.length - 1);
                            var f = c[a];
                            if (G(f)) return f.focus()
                        }
                    },
                    F = function(a) {
                        var c = a || window.event,
                            d = c.keyCode || c.which;
                        if (-1 !== [9, 13, 32, 27].indexOf(d)) {
                            for (var f = c.target || c.srcElement, g = x(e.focusCancel), h = -1, i = 0; i < g.length; i++)
                                if (f === g[i]) {
                                    h = i;
                                    break
                                }
                            9 === d ? (c.shiftKey ? y(h, -1) : y(h, 1), c.stopPropagation(), c.preventDefault()) : 13 === d || 32 === d ? -1 === h && I(e.focusCancel ? q : p) : 27 === d && !0 === e.allowEscapeKey && (Z.closeModal(e.onClose), b("esc"))
                        }
                    };
                j.previousWindowKeyDown = window.onkeydown, window.onkeydown = F, e.buttonsStyling && (p.style.borderLeftColor = e.confirmButtonColor, p.style.borderRightColor = e.confirmButtonColor), Z.showLoading = Z.enableLoading = function() {
                    D(r()), D(p, "inline-block"), A(p, c.loading), A(f, c.loading), p.disabled = !0, q.disabled = !0
                }, Z.hideLoading = Z.disableLoading = function() {
                    e.showConfirmButton || (E(p), e.showCancelButton || E(r())), B(p, c.loading), B(f, c.loading), p.disabled = !1, q.disabled = !1
                }, Z.enableButtons = function() {
                    p.disabled = !1, q.disabled = !1
                }, Z.disableButtons = function() {
                    p.disabled = !0, q.disabled = !0
                }, Z.enableConfirmButton = function() {
                    p.disabled = !1
                }, Z.disableConfirmButton = function() {
                    p.disabled = !0
                }, Z.enableInput = function() {
                    var a = d();
                    if (!a) return !1;
                    if ("radio" === a.type)
                        for (var b = a.parentNode.parentNode, c = b.querySelectorAll("input"), e = 0; e < c.length; e++) c[e].disabled = !1;
                    else a.disabled = !1
                }, Z.disableInput = function() {
                    var a = d();
                    if (!a) return !1;
                    if (a && "radio" === a.type)
                        for (var b = a.parentNode.parentNode, c = b.querySelectorAll("input"), e = 0; e < c.length; e++) c[e].disabled = !0;
                    else a.disabled = !0
                }, Z.recalculateHeight = M(function() {
                    var a = m(),
                        b = a.style.display;
                    a.style.minHeight = "", D(a), a.style.minHeight = a.scrollHeight + 1 + "px", a.style.display = b
                }, 50), Z.showValidationError = function(a) {
                    var b = t();
                    b.innerHTML = a, D(b);
                    var e = d();
                    z(e), A(e, c.inputerror)
                }, Z.resetValidationError = function() {
                    var a = t();
                    E(a), Z.recalculateHeight();
                    var b = d();
                    b && B(b, c.inputerror)
                }, Z.getProgressSteps = function() {
                    return e.progressSteps
                }, Z.setProgressSteps = function(a) {
                    e.progressSteps = a, S(e)
                }, Z.showProgressSteps = function() {
                    D(s())
                }, Z.hideProgressSteps = function() {
                    E(s())
                }, Z.enableButtons(), Z.hideLoading(), Z.resetValidationError();
                for (var H = ["input", "file", "range", "select", "radio", "checkbox", "textarea"], J = void 0, K = 0; K < H.length; K++) {
                    var L = c[H[K]],
                        O = C(f, L);
                    if (J = d(H[K])) {
                        for (var P in J.attributes)
                            if (J.attributes.hasOwnProperty(P)) {
                                var Q = J.attributes[P].name;
                                "type" !== Q && "value" !== Q && J.removeAttribute(Q)
                            }
                        for (var U in e.inputAttributes) J.setAttribute(U, e.inputAttributes[U])
                    }
                    O.className = L, e.inputClass && A(O, e.inputClass), E(O)
                }
                var V = void 0;
                ! function() {
                    switch (e.input) {
                        case "text":
                        case "email":
                        case "password":
                        case "number":
                        case "tel":
                            J = C(f, c.input), J.value = e.inputValue, J.placeholder = e.inputPlaceholder, J.type = e.input, D(J);
                            break;
                        case "file":
                            J = C(f, c.file), J.placeholder = e.inputPlaceholder, J.type = e.input, D(J);
                            break;
                        case "range":
                            var a = C(f, c.range),
                                b = a.querySelector("input"),
                                g = a.querySelector("output");
                            b.value = e.inputValue, b.type = e.input, g.value = e.inputValue, D(a);
                            break;
                        case "select":
                            var h = C(f, c.select);
                            if (h.innerHTML = "", e.inputPlaceholder) {
                                var i = document.createElement("option");
                                i.innerHTML = e.inputPlaceholder, i.value = "", i.disabled = !0, i.selected = !0, h.appendChild(i)
                            }
                            V = function(a) {
                                for (var b in a) {
                                    var c = document.createElement("option");
                                    c.value = b, c.innerHTML = a[b], e.inputValue === b && (c.selected = !0), h.appendChild(c)
                                }
                                D(h), h.focus()
                            };
                            break;
                        case "radio":
                            var j = C(f, c.radio);
                            j.innerHTML = "", V = function(a) {
                                for (var b in a) {
                                    var d = 1,
                                        f = document.createElement("input"),
                                        g = document.createElement("label"),
                                        h = document.createElement("span");
                                    f.type = "radio", f.name = c.radio, f.value = b, f.id = c.radio + "-" + d++, e.inputValue === b && (f.checked = !0), h.innerHTML = a[b], g.appendChild(f), g.appendChild(h), g.for = f.id, j.appendChild(g)
                                }
                                D(j);
                                var i = j.querySelectorAll("input");
                                i.length && i[0].focus()
                            };
                            break;
                        case "checkbox":
                            var k = C(f, c.checkbox),
                                l = d("checkbox");
                            l.type = "checkbox", l.value = 1, l.id = c.checkbox, l.checked = Boolean(e.inputValue);
                            var m = k.getElementsByTagName("span");
                            m.length && k.removeChild(m[0]), m = document.createElement("span"), m.innerHTML = e.inputPlaceholder, k.appendChild(m), D(k);
                            break;
                        case "textarea":
                            var n = C(f, c.textarea);
                            n.value = e.inputValue, n.placeholder = e.inputPlaceholder, D(n);
                            break;
                        case null:
                            break;
                        default:
                            console.error('SweetAlert2: Unexpected type of input! Expected "text", "email", "password", "select", "checkbox", "textarea" or "file", got "' + e.input + '"')
                    }
                }(), "select" !== e.input && "radio" !== e.input || (e.inputOptions instanceof Promise ? (Z.showLoading(), e.inputOptions.then(function(a) {
                    Z.hideLoading(), V(a)
                })) : "object" === N(e.inputOptions) ? V(e.inputOptions) : console.error("SweetAlert2: Unexpected type of inputOptions! Expected object or Promise, got " + N(e.inputOptions))), T(e.animation, e.onOpen), y(-1, 1), g.scrollTop = 0, "undefined" == typeof MutationObserver || R || (R = new MutationObserver(Z.recalculateHeight), R.observe(f, {
                    childList: !0,
                    characterData: !0,
                    subtree: !0
                }))
            })
        },
        Z = function a() {
            for (var b = arguments.length, c = Array(b), d = 0; d < b; d++) c[d] = arguments[d];
            return a.isVisible() && a.close(), Y.apply(void 0, c)
        };
    return Z.isVisible = function() {
        var a = m();
        return G(a)
    }, Z.queue = function(a) {
        Q = a;
        var b = m(),
            c = function() {
                Q = [], b.removeAttribute("data-queue-step")
            },
            d = [];
        return new Promise(function(a, e) {
            ! function f(g, h) {
                g < Q.length ? (b.setAttribute("data-queue-step", g), Z(Q[g]).then(function(a) {
                    d.push(a), f(g + 1, h)
                }, function(a) {
                    c(), e(a)
                })) : (c(), a(d))
            }(0)
        })
    }, Z.getQueueStep = function() {
        return m().getAttribute("data-queue-step")
    }, Z.insertQueueStep = function(a, b) {
        return b && b < Q.length ? Q.splice(b, 0, a) : Q.push(a)
    }, Z.deleteQueueStep = function(a) {
        void 0 !== Q[a] && Q.splice(a, 1)
    }, Z.close = Z.closeModal = function(a) {
        var b = m();
        B(b, c.show), A(b, c.hide);
        var e = b.querySelector("." + c.icon + "." + d.success);
        B(e, "animate"), B(e.querySelector(".tip"), "animate-success-tip"), B(e.querySelector(".long"), "animate-success-long");
        var f = b.querySelector("." + c.icon + "." + d.error);
        B(f, "animate-error-icon"), B(f.querySelector(".x-mark"), "animate-x-mark");
        var h = b.querySelector("." + c.icon + "." + d.warning);
        B(h, "pulse-warning"), K();
        var i = function() {
            E(b), b.style.minHeight = "", B(g, c.in), B(document.body, c.in), V(), X()
        };
        J && !y(b, c.noanimation) ? b.addEventListener(J, function a() {
            b.removeEventListener(J, a), y(b, c.hide) && i()
        }) : i(), null !== a && "function" == typeof a && a(b)
    }, Z.clickConfirm = function() {
        return u().click()
    }, Z.clickCancel = function() {
        return v().click()
    }, Z.setDefaults = function(a) {
        if (!a || "object" !== (void 0 === a ? "undefined" : N(a))) return console.error("SweetAlert2: the argument for setDefaults() is required and has to be a object");
        for (var b in a) e.hasOwnProperty(b) || "extraParams" === b || (console.warn('SweetAlert2: Unknown parameter "' + b + '"'), delete a[b]);
        O(P, a)
    }, Z.resetDefaults = function() {
        P = O({}, e)
    }, Z.noop = function() {}, Z.version = "6.1.1", Z
}), window.Sweetalert2 && (window.sweetAlert = window.swal = window.Sweetalert2);