#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_articlephoto_suppress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_articlephoto_suppress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_articlephoto_suppress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_articlephoto_suppress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_articlephoto_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_articlephoto_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_articlephoto_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_articlephoto_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_articlephoto_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_articlephoto_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_articlephoto_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_articlephoto_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_articlephoto_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_articlephoto_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_articlephoto_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_articlephoto_filename'"
