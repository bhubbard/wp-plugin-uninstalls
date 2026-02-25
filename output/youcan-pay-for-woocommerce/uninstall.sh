#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_youcanpay_show_ssl_notice'
wp option delete 'wc_youcanpay_show_keys_notice'
wp option delete 'wc_youcanpay_show_phpver_notice'
wp option delete 'wc_youcanpay_show_wcver_notice'
wp option delete 'wc_youcanpay_show_curl_notice'
wp option delete 'woocommerce_youcanpay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'wc_youcanpay_show_youcan_pay_notice'
wp option delete 'wc_youcanpay_show_youcan_pay_standalone_notice'
wp option delete 'woocommerce_gateway_youcanpay_retention'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wc_youcanpay_show_standalone_notice'
wp option delete 'wc_youcanpay_version'
wp option delete 'woocommerce_youcanpay_standalone_settings'

