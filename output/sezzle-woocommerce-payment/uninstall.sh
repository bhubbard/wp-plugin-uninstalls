#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'sezzle_api_error'

# Clear Cron Jobs
wp cron event delete 'sezzle_daily_data_send_event_cron'

