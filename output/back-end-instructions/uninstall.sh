#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bei_options'
wp option delete '_back_end_instructions'
wp option delete 'bei_options'
wp option delete 'site_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bei_instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bei_instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bei_instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bei_instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
