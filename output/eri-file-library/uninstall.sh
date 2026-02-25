#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erifl_delete_table'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-image'"
