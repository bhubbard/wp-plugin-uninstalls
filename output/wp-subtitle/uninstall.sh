#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_subtitle_woocommerce_enabled'
wp option delete 'wp_subtitle_woocommerce_show_on_single'
wp option delete 'wp_subtitle_woocommerce_show_in_loop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_subtitle'"
