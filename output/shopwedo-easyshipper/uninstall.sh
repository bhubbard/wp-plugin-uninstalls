#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DIS_cache'
wp option delete 'woocommerce_shopwedo_service_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopwedo_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopwedo_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopwedo_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopwedo_service'"
