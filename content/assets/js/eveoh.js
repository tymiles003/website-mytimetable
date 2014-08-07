// Callback for blog request
var loadPosts = function (data) {
    var baseurl = 'https://blog.eveoh.nl';
    var header = '<h1><a href="https://blog.eveoh.nl">Recent blog posts</a></h1>';
    var content = '<ul>';

    for (var i = 0; i < data.length; i++) {
        content += '<li><a class="title" href="' + baseurl + data[i].url + '">' + data[i].title + '</a> <small>[' + data[i].date + ']</small></li>';
    }

    content += '</ul>';

    document.getElementById('blog').innerHTML = header + content;
    document.getElementById('blog-mobile').innerHTML = content;
}
