#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_order_tip_session_type'
wp option delete 'wc_order_tip_enable_alert_remove_tip'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'wc_order_tip_remove_confirm_msg'
wp option delete 'wc_order_tip_custom_label'
wp option delete 'wc_order_tip_cash_label'
wp option delete 'wc_order_tip_remove_new_order'
wp option delete 'wc_order_tip_enabled_cart'
wp option delete 'wc_order_tip_enabled_checkout'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'

