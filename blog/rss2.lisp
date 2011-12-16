;;; -*- mode: LISP; syntax: COMMON-LISP; package: dsevilla.blog; base: 10; encoding: utf-8; -*-
;;;

(in-package dsevilla.blog)

; http://wp-themes.com/zbench/

; TODO: maybe in the future this would be a class "rss" instance.
(defun rss-header (title)
  (declare (ignore title))
  (concatenate
   'string
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
        <title>" *blog-title* "</title>
        <atom:link href=\"" *blog-internet-rss-url* "\" rel=\"self\" type=\"application/rss+xml\" />
        <link>" *blog-internet-url* "</link>
        <description>" *blog-subtitle* "</description>
        <lastBuildDate>"
        (rfc-2822-date)
        "</lastBuildDate>

        <language>en</language>
        <sy:updatePeriod>hourly</sy:updatePeriod>
        <sy:updateFrequency>1</sy:updateFrequency>
        <generator>Common Lisp using a nice blog software by me</generator>
"
   ))


(defun rss-post (post)
  (concatenate
   'string
   "<item>
<title>" (post-title post) "</title>

<link>" (post-internet-url post) "</link>
<comments>"  (post-internet-url post) "#disqus_thread" "</comments>
<pubDate>"
(rfc-2822-date-for-post post)
"</pubDate>
<dc:creator>diego sevilla</dc:creator>
"

(apply #'concatenate 'string
       (mapcar #'(lambda (cat)
                   (format nil "<category><![CDATA[~(~A~)]]></category>~%" cat))
               (categories post)))

"
<guid isPermaLink=\"false\">" (post-internet-url post) "</guid>
<description><![CDATA[" (post-description post) "]]></description>
        <content:encoded><![CDATA[" (post-body post) "]]></content:encoded>
</item>
"
))

(defun rss-content (title posts)
  (declare (ignore title))
  (apply #'concatenate 'string
         (loop for post-string in (mapcar #'rss-post posts)
              repeat *rss-posts-max* ; get the first *rss-posts-max*
              collect post-string)))

(defun rss-footer (title)
  (declare (ignore title))
  "</channel>
</rss>
")
