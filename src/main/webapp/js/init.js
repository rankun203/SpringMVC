var url = "greeting";
$.getJSON(url, function (data) {
    $("#welcome").text(data.greeting + ", and you id is " + data.id + ".");
});
