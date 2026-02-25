#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_wc-razorpay_settings'
wp option delete 'rzpwc_plugin_dismiss_rating_notice'
wp option delete 'rzpwc_plugin_no_thanks_rating_notice'
wp option delete 'rzpwc_plugin_installed_time'
wp option delete 'rzpwc_plugin_dismiss_donate_notice'
wp option delete 'rzpwc_plugin_no_thanks_donate_notice'
wp option delete 'rzpwc_plugin_dismissed_time'
wp option delete 'rzpwc_plugin_dismissed_time_donate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rzp_woocommerce_connect_mode_%' OR option_name LIKE '_site_transient_rzp_woocommerce_connect_mode_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rzp_woocommerce_refreshing_access_token_%' OR option_name LIKE '_site_transient_rzp_woocommerce_refreshing_access_token_%'"
wp transient delete 'rzpwc-admin-notice-on-activation'
wp transient delete 'rzpwc_plugin_deprecate_setting_notice_random_priority'

