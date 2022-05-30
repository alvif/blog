---
title: "Check PHP File Type"
date: 2022-05-30T10:16:22+07:00
# weight: 1
# aliases: ["/first"]
tags: ["php", "filetype", "extension", "helper"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Simple check filetype when doing upload file with PHP."
# canonicalURL: "https://canonical.url/to/page"
# disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
# cover:
#     image: "<image path/url>" # image path/url
#     alt: "<alt text>" # alt text
#     caption: "<text>" # display caption under cover
#     relative: false # when using page bundles set this to true
#     hidden: true # only hide on current single page
# editPost:
#     URL: "https://github.com/<path_to_repo>/content"
#     Text: "Suggest Changes" # edit text
#     appendFilePath: true # to append file path to Edit link
---

```php
/**
 * Return true if $mimeType is php.
 * 
 */
function check_file_type(String $mimeType = '')
{
    $status = false;
    switch ($mimeType) {
        case '':
            $status = 'mimeType empty!';
            return $status;
        case 'text/php':
            $status = true;
            return $status;
            break;
        case 'text/x-php':
            $status = true;
            return $status;
            break;
        case 'application/php':
            $status = true;
            return $status;
            break;
        case 'application/x-php':
            $status = true;
            return $status;
            break;
        case 'application/x-httpd-php':
            $status = true;
            return $status;
            break;
        case 'application/x-httpd-php-source':
            $status = true;
            return $status;
            break;
        default:
        return $status;
            break;
    }
}

```