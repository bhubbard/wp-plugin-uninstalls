#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'live_shipping_service_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'live_shipping_service_version'
wp option delete 'live_shipping_service_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'live_shipping_service_last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'live_shipping_service_last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'live_shipping_service_last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'live_shipping_service_last_error'"
