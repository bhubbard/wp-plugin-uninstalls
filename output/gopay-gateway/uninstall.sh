#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gopay_review_dismiss'
wp option delete 'woocommerce_price_num_decimals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'pickup_location_pickup_locations'
wp option delete 'woocommerce_wc_gopay_gateway_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multiple_purchase'"

# Clear Cron Jobs
wp cron event delete 'update_payment_methods_and_banks'

