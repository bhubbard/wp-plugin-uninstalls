#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide-new-version-monei-notice'
wp option delete 'monei_log_level'
wp option delete 'woocommerce_monei_apple_google_settings'
wp option delete 'woocommerce_monei_bizum_settings'
wp option delete 'woocommerce_monei_settings'
wp option delete 'woocommerce_monei_mbway_settings'
wp option delete 'woocommerce_monei_multibanco_settings'
wp option delete 'woocommerce_monei_paypal_settings'
wp option delete 'monei_debug'
wp option delete 'monei_orderdo'
wp option delete 'monei_pre_authorize'
wp option delete 'monei_test_apikey'
wp option delete 'monei_live_apikey'
wp option delete 'monei_apikey_mode'
wp option delete 'monei_test_accountid'
wp option delete 'monei_live_accountid'
wp option delete 'monei_apikey'
wp option delete 'monei_accountid'

