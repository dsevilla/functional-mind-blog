;;; -*- mode: emacs-lisp; encoding: utf-8; -*-
;;;

; TODO: maybe in the future this would be a class "rss" instance.
(defun fmb-rss-header (title)
  (declare (ignore title))
  (concat
   "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<rss version=\"2.0\"
        xmlns:content=\"http://purl.org/rss/1.0/modules/content/\"
        xmlns:wfw=\"http://wellformedweb.org/CommentAPI/\"
        xmlns:dc=\"http://purl.org/dc/elements/1.1/\"
        xmlns:atom=\"http://www.w3.org/2005/Atom\"
        xmlns:sy=\"http://purl.org/rss/1.0/modules/syndication/\"
        xmlns:slash=\"http://purl.org/rss/1.0/modules/slash/\"
        >

<channel>
        <title>" (fmb-blog-title *the-blog*) "</title>
        <atom:link href=\"" (fmb-blog-internet-rss-url *the-blog*) "\" rel=\"self\" type=\"application/rss+xml\" />
        <link>" (fmb-blog-internet-url *the-blog*) "</link>
        <description>" (fmb-blog-subtitle *the-blog*) "</description>
        <lastBuildDate>"
        (fmb-rfc-2822-date)
        "</lastBuildDate>

        <language>en</language>
        <sy:updatePeriod>hourly</sy:updatePeriod>
        <sy:updateFrequency>1</sy:updateFrequency>
        <generator>Common Lisp using a nice blog software by me</generator>
"
   ))


(defun fmb-rss-post (post)
  (concat
   "<item>
<title>" (fmb-post-title post) "</title>

<link>" (fmb-post-internet-url post) "</link>
<comments>"  (fmb-post-internet-url post) "#disqus_thread" "</comments>
<pubDate>"
(fmb-rfc-2822-date-for-post post)
"</pubDate>
<dc:creator>diego sevilla</dc:creator>
"
(mapconcat #'(lambda (cat)
               (format "<category><![CDATA[%s]]></category>"
                       (downcase (symbol-name cat))))
           (fmb-post-categories post)
           "\n")
"
<guid isPermaLink=\"false\">" (fmb-post-internet-url post) "</guid>
<description><![CDATA[" (fmb-post-description post) "]]></description>
        <content:encoded><![CDATA[" (fmb-post-body post) "]]></content:encoded>
</item>
"
))

(defun fmb-rss-content (title posts)
  (declare (ignore title))
  (apply #'concat
         (loop for post-string in (mapcar #'fmb-rss-post posts)
              repeat (fmb-blog-rss-posts-max *the-blog*) ; get the first *rss-posts-max*
              collect post-string)))

(defun fmb-rss-footer (title)
  (declare (ignore title))
  "</channel>
</rss>
")
