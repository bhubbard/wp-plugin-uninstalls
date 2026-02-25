#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pj_post_thumb_linkto'
wp option delete 'pj_post_thumb_size'
wp option delete 'pj_custom_post_thumb_width'
wp option delete 'pj_custom_post_thumb_height'
wp option delete 'pj_custom_post_thumb_crop'
wp option delete 'pj_post_thumb_class'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pj_post_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pj_post_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pj_post_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pj_post_thumbnail'"
