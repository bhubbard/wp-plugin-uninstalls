#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hitpay_settings'
wp option delete 'woocommerce_hitpay_payment_button'
wp option delete 'woocommerce_hitpay_place_order_text'
wp option delete 'woocommerce_hitpay_customize'
wp option delete 'woocommerce_hitpay_style'
wp option delete 'woocommerce_hitpay_enable_pos'
wp option delete 'woocommerce_hitpay_terminal_ids'
wp option delete 'woocommerce_hitpay_cashier_emails'
wp option delete 'woocommerce_hitpay_logfile_prefix'

