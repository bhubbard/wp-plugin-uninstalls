#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'worten_marketplace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'worten_marketplace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'worten_marketplace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'worten_marketplace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carrier_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carrier_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carrier_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carrier_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carrier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carrier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carrier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carrier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_number'"
