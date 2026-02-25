#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rajl_setting_option'
wp option delete 'rajl_configration_dissmiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rajl_like_wp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rajl_like_wp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rajl_like_wp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rajl_like_wp'"
