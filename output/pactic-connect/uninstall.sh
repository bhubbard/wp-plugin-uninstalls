#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pactic_connect__home_delivery_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping_price_settings'"
wp option delete 'pactic_connect__parcel_point_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'pactic_connect__status'
wp option delete 'pactic_connect__debug'
wp option delete 'pactic_connect__parcel_point_display_type'
wp option delete 'pactic_connect__google_map_api_key'
wp option delete 'pactic_connect__country_codes'
wp option delete 'pactic_connect__save_parcel_points_sync_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_sync_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_sync_status'"
wp option delete 'pactic_connect__country_codes_sync_date'
wp option delete 'pactic_connect__country_codes_sync_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping_cod_price_settings'"
wp option delete 'pactic_connect__cod_payment_methods'

# Delete Transients
wp transient delete 'pactic_connect__welcome_notice'

# Clear Cron Jobs
wp cron event delete 'pactic_connect__save_parcel_points'
wp cron event delete 'pactic_connect__country_codes'

