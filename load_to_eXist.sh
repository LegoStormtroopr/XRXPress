#!/bin/sh

EXIST_ROOT="127.0.0.1:8181/exist/rest"
BLOG_DIR="blog"

# Upload XSLT
curl -T Entry_to_Post.xsl $EXIST_ROOT/$BLOG_DIR/ 
curl -T Feed_to_Blog.xsl  $EXIST_ROOT/$BLOG_DIR/ 
curl -T Common.xsl  $EXIST_ROOT/$BLOG_DIR/ 

# Upload XQuery
curl -T blog.xqr -H "Content-Type:application/xquery" $EXIST_ROOT/
curl -T post.xqr -H "Content-Type:application/xquery" $EXIST_ROOT/

# Load test blog
curl -T ./Test/blog_test2.xml $EXIST_ROOT/blog.xml 

# Upload XML Schemas
# curl $EXIST_IP/$ROOT_DIR/ -T AtomBlogExtensions.xsd
# curl $EXIST_IP/$ROOT_DIR/ -T BlogML.xsd




