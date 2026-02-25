#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mollie-payments-for-woocommerce_live_api_key'
wp option delete 'mollie-payments-for-woocommerce_test_api_key'
wp option delete 'woocommerce_gzdp_checkout_enable'
wp option delete 'mollie_wc_applepay_validated'
wp option delete 'mollie-payments-for-woocommerce_gatewayFeeLabel'
wp option delete 'mollie_wc_gateway_applepay_settings'
wp option delete 'mollie_wc_gateway_paypal_settings'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'mollie_wc_is_phone_required_flag'
wp option delete 'mollie-payments-for-woocommerce_order_status_cancelled_payments'
wp option delete 'mollie-payments-for-woocommerce_place_payment_onhold'
wp option delete 'mollie-payments-for-woocommerce_capture_or_void'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disableShipOrderAtMollie'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disableCancelOrderAtMollie'"
wp option delete 'mollie_wc_gateway_creditcard_settings'
wp option delete 'mollie_wc_gateway_voucher_settings'
wp option delete 'mollie_wc_gateway_mealvoucher_settings'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_subscriptions_active_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'mollie-payments-for-woocommerce_debug'
wp option delete 'mollie-payments-for-woocommerce_test_mode_enabled'
wp option delete 'mollie_wc_gateway_directdebit_settings'
wp option delete 'mollie-payments-for-woocommerce_removeOptionsAndTransients'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_needs_processing' OR option_name LIKE '_site_transient_%_needs_processing'"
wp transient delete 'svg_creditcards_string'

# Clear Cron Jobs
wp cron event delete 'pending_payment_confirmation_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mollie_voucher_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mollie_voucher_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mollie_voucher_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mollie_voucher_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mollie_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mollie_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mollie_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mollie_customer_id'"
