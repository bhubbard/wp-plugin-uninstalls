#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'frakt123_custom_shipping_order_sync_version'
wp option delete 'frakt123_custom_shipping_order_sync__auto_send_name'
wp option delete 'frakt123_custom_shipping_order_sync__order_status'
wp option delete 'frakt123_custom_shipping_order_sync__order_shipping'
wp option delete 'frakt123_custom_shipping_order_sync__api_name'
wp option delete 'frakt123_custom_shipping_order_sync__secret_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_name'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frakt_track_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frakt_track_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frakt_track_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frakt_track_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frakt_track_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frakt_track_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frakt_track_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frakt_track_link'"
