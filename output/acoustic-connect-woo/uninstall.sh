#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acoustic_connect_activated_time'
wp option delete 'acoustic_connect_enabled'
wp option delete 'acoustic_connect_app_key'
wp option delete 'acoustic_connect_collector_url'
wp option delete 'acoustic_connect_sdk_version'
wp option delete 'acoustic_connect_sdk_minified'
wp option delete 'acoustic_connect_subscription_tier'
wp option delete 'acoustic_connect_debug_mode'
wp option delete 'acoustic_connect_track_product_view'
wp option delete 'acoustic_connect_track_add_to_cart'
wp option delete 'acoustic_connect_track_remove_from_cart'
wp option delete 'acoustic_connect_track_checkout'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acoustic_order_%' OR option_name LIKE '_site_transient_acoustic_order_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
