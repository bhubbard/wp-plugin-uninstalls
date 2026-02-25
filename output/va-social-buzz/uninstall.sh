#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'push7_appno'
wp option delete 'wpbitly-options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%push7_register_url' OR option_name LIKE '_site_transient_%push7_register_url'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
