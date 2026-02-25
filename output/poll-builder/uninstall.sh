#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ypl_redirect'
wp option delete 'ypl-delete-data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'YPL_SAVED_SETTINGS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'YPL_SAVED_SETTINGS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'YPL_SAVED_SETTINGS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'YPL_SAVED_SETTINGS'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ypl_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ypl_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ypl_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ypl_options'"
