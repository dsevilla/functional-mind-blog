;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package dsevilla.blog)

(defparameter *google-header*
"   <!-- Google Plus -->
   <script type=\"text/javascript\" src=\"https://apis.google.com/js/plusone.js\"></script>
<link href=\"google-code-prettify/prettify.css\" type=\"text/css\" rel=\"stylesheet\" />
<script type=\"text/javascript\" src=\"google-code-prettify/prettify.js\"></script>
<script type=\"text/javascript\" src=\"google-code-prettify/lang-lisp.js\"></script>
")

(defparameter *search-scripts*
  "
<script type=\"text/javascript\">
var search_js_loaded = 0;
var posts = {};
var posts_for_word = {};
function doSearch()
{
  var search_content = document.forms['searchform'].s.value;
  var content_pos = document.getElementById('content');
  var first_child = content_pos.childNodes[0];

  // div element for the post
  var post_div = document.createElement('DIV');
  post_div.setAttribute('class','post');
  post_div.setAttribute('style', 'background-color: #fcf9ee;');

  // title inside
  var post_title = document.createElement('H2');
  post_title.setAttribute('class','title');
  post_title.setAttribute('style','border-bottom: 1px solid #DDDDDD;');
  post_title.appendChild(document.createTextNode('Search Results for \"' +
     search_content + '\"'));
  post_div.appendChild(post_title);

  // clear div
  var clear_div = document.createElement('DIV');
  clear_div.setAttribute('class','clear');
  post_div.appendChild(clear_div);

  // entry div
  var entry_div = document.createElement('DIV');
  entry_div.setAttribute('class', 'entry');
  post_div.appendChild(entry_div);

  // p
  var p1 = document.createElement('P');
  p1.style = 'margin: 0 0 18px;';
  entry_div.appendChild(p1);
  var p2 = document.createElement('P');
  p2.innerHTML = 'Loading search data...';
  entry_div.appendChild(p2);

  first_child.parentNode.insertBefore(post_div,first_child);

  if (!search_js_loaded)
  {
    // dynamically load search.js
    // This trick is needed to avoid the big file to be loaded asynchronously
    var xhReq = (function() {
      try { return new XMLHttpRequest(); } catch(e) {}
      try { return new ActiveXObject(\"Msxml2.XMLHTTP\"); } catch (e) {}
      alert(\"XMLHttpRequest not supported.\");
      return null;
    }());
    xhReq.open(\"GET\", \"search.js\", false);
    xhReq.send('');
    var serverResponse = xhReq.responseText;

    (function() {
        var scr = document.createElement('script');
        scr.type = 'text/javascript';
        scr.text = serverResponse;
        (document.getElementsByTagName('head')[0]
           || document.getElementsByTagName('body')[0]).appendChild(scr);
    })();

    search_js_loaded=1;
  }

  // add the search elements, delete previous information
  p2.innerHTML = '<ul><li>' + posts.postlist[ posts_for_word[\"corba\"][0] ] + '</li></ul>';
}
</script>
")

; http://wp-themes.com/zbench/

; TODO: maybe in the future this would be a class "theme" instance.
(defun html-theme-header (title)
  (concatenate
   'string
   "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"en-US\"><head profile=\"http://gmpg.org/xfn/11\">
        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />
        <meta name=\"generator\" content=\"Fancy Common Lisp code\" />
        <meta name=\"author\" content=\"diego sevilla ruiz\" />
        <meta name=\"last-modified\" content=\""
   (multiple-value-bind
         (second minute hour date month year day-of-week dst-p tz)
     (get-decoded-time)
     (setf tz (- tz))
     (when dst-p
       (incf tz))
     (format nil "~2,'0d:~2,'0d:~2,'0d of ~a, ~d/~2,'0d/~d (GMT~@d)"
             hour
             minute
             second
             (nth day-of-week *day-names*)
             month
             date
             year
             tz))
"\" />
        <title>"
   *blog-title*
   (when title
     (format nil " » ~A" title))
   "</title>
                <link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"zbench/style.css\" />
   <link rel=\"alternate\" type=\"application/rss+xml\" title=\""
   *blog-title*
   " » Feed\" href=\"rss2.xml\" />"
   *google-header*
   *search-scripts*
"</head>
<body onload=\"prettyPrint()\" class=\"home blog\">
<div id=\"nav\">
        <div id=\"menus\">
                <ul><li class=\"current_page_item\"><a href=\""
   *blog-internet-url*
   "\">Blog</a></li></ul>
                <div class=\"menu\"><ul><li class=\"page_item page-item-2\"><a href=\"page-about.html\" title=\"About\">About</a></li>"
;;<li class=\"page_item page-item-46\"><a href=\"http://wp-themes.com/?page_id=46\" title=\"Parent Page\">Parent Page</a><ul class=\"children\"><li class=\"page_item page-item-49\"><a href=\"http://wp-themes.com/?page_id=49\" title=\"Sub-page\">Sub-page</a></li></ul></li>
"</ul></div>
        </div>
        <div id=\"search\">
                <form id=\"searchform\">
<input value=\"functional mind search\" onfocus=\"if (this.value == 'functional mind search') {this.value = '';}\" onblur=\"if (this.value == '') {this.value = 'functional mind search';}\" size=\"35\" maxlength=\"50\" id=\"s\" type=\"text\" />
<input id=\"searchsubmit\" value=\"\" onclick=\"doSearch()\" />
</form></div>
</div>
<div id=\"wrapper\">
        <div id=\"header\">             <h1><a href=\""
   *blog-internet-url*
   "\">"
   *blog-title*
   "</a></h1>
                <h2>"
   *blog-subtitle*
   "</h2>
                <div class=\"clear\"></div>
                        </div>"))

(defun html-flickr-sidebar ()
  "<!-- Start of Flickr Badge -->
<style type=\"text/css\">
#flickr_badge_source_txt {padding:0; font: 11px Arial, Helvetica, Sans serif; color:#666666;}
#flickr_badge_icon {display:block !important; margin:0 !important; border: 1px solid rgb(0, 0, 0) !important;}
#flickr_icon_td {padding:0 5px 0 0 !important;}
.flickr_badge_image {text-align:center !important;}
.flickr_badge_image img {border: 1px solid black !important;}
#flickr_www {display:block; padding:0 10px 0 10px !important; font: 11px Arial, Helvetica, Sans serif !important; color:#3993ff !important;}
#flickr_badge_uber_wrapper a:hover,
#flickr_badge_uber_wrapper a:link,
#flickr_badge_uber_wrapper a:active,
#flickr_badge_uber_wrapper a:visited {text-decoration:none !important; background:inherit !important;color:#3993ff;}
#flickr_badge_wrapper {background-color:#ffffff;}
#flickr_badge_source {padding:0 !important; font: 11px Arial, Helvetica, Sans serif !important; color:#666666 !important;}
</style>
<table id=\"flickr_badge_uber_wrapper\" cellpadding=\"0\" cellspacing=\"10\" border=\"0\"><tr><td><a href=\"http://www.flickr.com\" id=\"flickr_www\">www.<strong style=\"color:#3993ff\">flick<span style=\"color:#ff1c92\">r</span></strong>.com</a><table cellpadding=\"0\" cellspacing=\"10\" border=\"0\" id=\"flickr_badge_wrapper\">
<script type=\"text/javascript\" src=\"http://www.flickr.com/badge_code_v2.gne?count=3&amp;display=random&amp;size=t&amp;layout=v&amp;source=user&amp;user=49014237%40N00\"></script>
</table>
</td></tr></table>
<!-- End of Flickr Badge -->
")

(defun html-theme-sidebar (title)
  (declare (ignore title))
  (concatenate
   'string
   "<div id=\"sidebar-border\"> <div id=\"rss_border\"> <div
        class=\"rss_border\"> <div id=\"rss_wrap\"> <div
        class=\"rss_wrap\"> <a class=\"rss rss_text\"
        href=\"rss2.xml\" rel=\"bookmark\"
        title=\"RSS Feed\">RSS Feed</a> </div> </div> </div> </div>
        <div id=\"sidebar\">

        <div class=\"widget\">
                <h3>links</h3>
                <ul>
"
   (apply #'concatenate 'string
          (mapcar #'(lambda (link) (li link))
                  *blog-links*))
"
               </ul>
        </div>

<div id=\"twitter_div\" class=\"widget\">
<h3 id=\"twitter\">twitter</h3>
<ul id=\"twitter_update_list\"></ul>
<script type=\"text/javascript\" src=\"http://twitter.com/javascripts/blogger.js\"></script>
<script type=\"text/javascript\" src=\"http://twitter.com/statuses/user_timeline/diegosevilla.json?callback=twitterCallback2&amp;count=7\"></script>
</div>

        <div class=\"widget\">
                <h3>flickr!</h3>
                <ul>
"
   (html-flickr-sidebar)
   "
               </ul>
        </div>

        <div class=\"widget\">
                <h3>search by tags/categories</h3>
        <ul>"
   (categories-links)
   "    </ul>
        </div>

        <div class=\"widget\">
                <h3>archives</h3>
                <ul>
"
   (archive-li-s)
   "
</ul>
        </div>

        <div class=\"widget\">
                <h3>meta</h3>
<ul>
<a href=\"http://stackoverflow.com/users/62365/diego-sevilla\">
<img src=\"http://stackoverflow.com/users/flair/62365.png\" width=\"208\" height=\"58\" alt=\"profile for Diego Sevilla at Stack Overflow, Q&amp;A for professional and enthusiast programmers\" title=\"profile for Diego Sevilla at Stack Overflow, Q&amp;A for professional and enthusiast programmers\" />
</a>
<p style=\"padding-top:10px;\"></p>
</ul>
        </div>

        </div><!-- end: #sidebar -->
</div><!-- end: #sidebar-border -->
"))


(defun html-disqus-bit (post)
  (concatenate
   'string
   "
<div id=\"disqus_thread\"></div>
<script type=\"text/javascript\">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'functionalmind';
/*   var disqus_identifier = '"
   (slug post)
"';*/
    var disqus_url = '"
   (post-internet-url post)
"';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href=\"http://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>
<a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>
"))

(defparameter *post-content-hash-table* (make-hash-table :test #'equal)
  "Hash table that holds the content of each post to speed up page generation.")

(defun html-theme-post (post &key comments)
  (concatenate
   'string
   "<div class=\"post\"><!-- post div -->"

   (let* ((slug (slug post))
          (content (gethash slug *post-content-hash-table*)))
     (if content
         content
         (setf (gethash slug *post-content-hash-table*)
               (concatenate
                'string
                "<h2 class=\"title\"><a href=\""
                (post-url post)
                "\" title=\"Permalink to "
                (post-title post)
                "\">"
                (post-title post)
                "</a></h2>
                <div class=\"post-info-top\">
                        <span class=\"post-info-date\">"
                (post-categories-links post)
                " &#8212; "
                (post-date-time-string post)
                "</span>
                        <span class=\"gotocomments\"><span>
   <a href=\""
                (post-url post)
                "#disqus_thread\">Comments</a></span></span>
                </div>
                <div class=\"clear\"></div>
                <div class=\"entry\">"
                (post-body post)))))

   ;;; facebook
   (when comments
     "<div id=\"fb-root\"></div>
<script type=\"text/javascript\">(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = \"//connect.facebook.net/en_US/all.js#xfbml=1\";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div style=\"float:right;\" class=\"fb-like\" data-send=\"false\" data-layout=\"button_count\" data-width=\"40\" data-show-faces=\"false\" data-font=\"lucida grande\"></div>")

   ;;; google
   (when comments
     "<p style=\"padding-left: 15px;float:right;\"><g:plusone size=\"medium\"></g:plusone></p>")

   (when comments
     "<p style=\"padding-left: 15px;float:right;\"><a href=\"https://twitter.com/share\" class=\"twitter-share-button\" data-count=\"horizontal\" data-via=\"diegosevilla\">Tweet</a></p><script type=\"text/javascript\" src=\"//platform.twitter.com/widgets.js\"></script>")

   ;; disqus if specified
   (when comments
     (html-disqus-bit post))

   "
</div><!-- END entry -->
</div><!-- END post -->
"
))


(defun html-disqus-footer (title)
  (declare (ignore title))
  "
<!-- Disqus footer -->
<script type=\"text/javascript\">
    var disqus_shortname = 'functionalmind';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function () {
        var s = document.createElement('script'); s.async = true;
        s.type = 'text/javascript';
        s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
    }());
</script>
")

(defun html-theme-content (title posts &optional prev-page next-page)
  (declare (ignore title))
  (concatenate
   'string
   "<!-- CONTENT START -->
<div id=\"content\">
"
   ; Only one element? I don't use length because that actually has to
   ; count all the elements!
   (if (null (cdr posts))
       (html-theme-post (first posts) :comments :yes) ; include comments
       (apply #'concatenate 'string (mapcar #'html-theme-post posts)))

   (when (or prev-page next-page)
     "<p style=\"float:right;\">")

   ; previous link?
   (when prev-page
     (a `((:href . ,prev-page)) "« previous page"))

   ; next?
   (when next-page
     (concatenate 'string " &#8212; " (a `((:href . ,next-page))
                                         "next page »")))

   (when (or prev-page next-page)
     "</p>")

   "</div><!--content-->
"))

(defun html-google-analytics-footer (title)
  (declare (ignore title))
"
<!-- google analytics footer -->
<script type=\"text/javascript\">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-16802965-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
")

(defun html-theme-footer (title)
  (concatenate
   'string
   "</div><!--wrapper-->
<div class=\"clear\"></div>
<div id=\"footer\">
        <div id=\"footer-inside\">
<!-- Creative Commons License -->
<p><img src=\"img/lisp.png\" height=\"50\" alt=\"Lisp!\" /><a rel=\"license\" href=\"http://creativecommons.org/licenses/by-nc/2.0/\">
<img alt=\"Creative Commons License\" border=\"0\"
src=\"http://creativecommons.org/images/public/somerights20.gif\" /></a>
This work is licensed under a <a rel=\"license\"
href=\"http://creativecommons.org/licenses/by-nc/2.0/\">Creative Commons License</a>.</p>
<!-- /Creative Commons License -->
                <p>
                        Copyright © 2011 Diego Sevilla Ruiz | Theme based on <a href=\"http://zww.me/\" title=\"designed by zwwooooo\">zBench</a>
                        | Powered by <a href=\"http://www.cliki.net/index\">Common Lisp!</a>
                </p>
                <span id=\"back-to-top\">↑ <a href=\"#\" rel=\"nofollow\" title=\"Back to top\">Top</a></span>
        </div>
</div><!--footer-->
"
   (html-disqus-footer title)
   (html-google-analytics-footer title)
   "</body></html>
"))
