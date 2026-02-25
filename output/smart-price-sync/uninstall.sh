#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_price_sync_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricelabs_listing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricelabs_listing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricelabs_listing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricelabs_listing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'homey_custom_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'homey_custom_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'homey_custom_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'homey_custom_period'"
