#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipink_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipink_connected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipink_connected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipink_connected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipink_connected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipink_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipink_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipink_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipink_tracking_url'"
