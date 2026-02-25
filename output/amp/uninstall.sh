#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'amp_customizer'
wp option delete 'amp-options'
wp option delete 'amp_css_transient_monitor_time_series'
wp option delete 'amp_url_validation_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created_date_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created_date_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created_date_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created_date_gmt'"
