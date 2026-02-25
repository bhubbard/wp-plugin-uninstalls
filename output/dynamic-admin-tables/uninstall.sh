#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_post_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_post_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_post_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_post_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_page_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_page_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_page_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_page_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upload_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upload_per_page'"
