#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsu_options'
wp option delete 'current_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_merged_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_merged_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_merged_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_merged_array'"
