#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_callback_email_sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gateway_methods'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gateways'"
wp option delete 'woocommerce_multibanco_ifthen_for_woocommerce_settings'
wp option delete 'woocommerce_mbway_ifthen_for_woocommerce_settings'
wp option delete 'woocommerce_payshop_ifthen_for_woocommerce_settings'
wp option delete 'woocommerce_creditcard_ifthen_for_woocommerce_settings'
wp option delete 'woocommerce_cofidispay_ifthen_for_woocommerce_settings'
wp option delete 'woocommerce_gateway_ifthen_ifthen_for_woocommerce_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'multibanco_last_incremental_expire_ref'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ifthen_for_woocommerce_callback_email_sent'"

# Clear Cron Jobs
wp cron event delete 'wc_ifthen_hourly_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until'"
