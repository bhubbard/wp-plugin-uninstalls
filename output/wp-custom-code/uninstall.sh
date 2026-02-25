#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kfag_wp_custom_%'"
wp option delete 'kfag_wp_custom_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kfag_wp_custom_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kfag_wp_custom_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kfag_wp_custom_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kfag_wp_custom_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kfag_wp_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kfag_wp_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kfag_wp_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kfag_wp_custom_css'"
