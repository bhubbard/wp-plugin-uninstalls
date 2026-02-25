#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'nexi_xpay_data_version'
wp option delete 'xpay_npg_available_methods'
wp option delete 'xpay_available_methods'
wp option delete 'xpay_logo_small'
wp option delete 'xpay_logo_large'
wp option delete 'nexi_unique'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'woocommerce_subscriptions_turn_off_automatic_payments'

# Clear Cron Jobs
wp cron event delete 'wp_nexi_polling'
wp cron event delete 'wp_nexi_update_npg_payment_methods'

