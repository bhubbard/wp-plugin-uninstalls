#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hrd_post_meta_tag_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hrd_post_meta_tag_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hrd_post_meta_tag_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hrd_post_meta_tag_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hrd_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hrd_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hrd_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hrd_checkbox'"
