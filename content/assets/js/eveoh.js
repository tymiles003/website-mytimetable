
// Callback for blog request
var loadPosts = function (data) {
    var baseurl = 'https://blog.eveoh.nl';
    var content = '<ul class="blogposts">';

    for (var i = 0; i < data.length; i++) {
        content += '<li><a class="title" href="' + baseurl + data[i].url + '" target="_blank">' + data[i].title + '</a></li>';
    }

    content += '</ul>';

    document.getElementById('blog').innerHTML = content;
}
