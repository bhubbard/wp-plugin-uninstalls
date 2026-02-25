#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multisafepay_trigger_transaction_to_shipped'
wp option delete 'multisafepay_trigger_transaction_to_invoiced'
wp option delete 'woocommerce_checkout_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'multisafepay_debugmode'
wp option delete 'multisafepay_group_credit_cards'
wp option delete 'multisafepay_checkout_block_payment_icons'
wp option delete 'multisafepay_final_order_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp option delete 'multisafepay_testmode'
wp option delete 'multisafepay_second_chance'
wp option delete 'multisafepay_disable_shopping_cart'
wp option delete 'multisafepay_redirect_after_cancel'
wp option delete 'multisafepay_order_request_description'
wp option delete 'multisafepay_time_active'
wp option delete 'multisafepay_time_unit'
wp option delete 'multisafepay_payment_component_template_id'
wp option delete 'woocommerce_multisafepay_creditcard_settings'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'
wp option delete 'multisafepay_test_api_key'
wp option delete 'multisafepay_api_key'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_calc_discounts_sequentially'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'multisafepay_%'"
wp option delete 'woocommerce_custom_orders_table_enabled'

# Delete Transients
wp transient delete 'multisafepay_api_token'
wp transient delete 'multisafepay_payment_methods'
wp transient delete 'is_multisafepay_payment_component_qr_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_multisafepay_token_%' OR option_name LIKE '_site_transient_multisafepay_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_multisafepay_qr_order_%' OR option_name LIKE '_site_transient_multisafepay_qr_order_%'"

