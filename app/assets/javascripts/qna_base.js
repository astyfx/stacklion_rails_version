(function () {
    'use strict';
    'use strict';
    var csrftoken = $('meta[name=csrf-token]').attr('content');
    $.ajaxSetup({
        beforeSend: function (xhr, settings) {
            if (!/^(GET|HEAD|OPTIONS|TRACE)$/i.test(settings.type)) {
                xhr.setRequestHeader("X-CSRFToken", csrftoken)
            }
            //NProgress.start(); // loading;
        },
        complete: function () {
            //NProgress.done(); // loading;
        }
    });

    // postJSON Plugin
    $.postJSON = function (url, data, success) {
        return $.ajax({
            type: 'POST',
            url: url,
            data: data,
            success: success,
            dataType: 'json',
            contentType: "application/json; charset=UTF-8"
        });
    };

    $.trigger_hljs = function () {
        $('pre code').each(function (i, block) {
            hljs.highlightBlock(block);
        });
    };
}());