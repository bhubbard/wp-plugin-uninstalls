#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gzd_checkout_stop_order_cancellation'
wp option delete 'amazon_payments_advanced_enabled_anniversary_date'
wp option delete 'amazon_payments_advanced_hidden_until_date'
wp option delete 'woocommerce_amazon_payments_advanced_saved_payload'
wp option delete 'woocommerce_currency'
wp option delete 'amazon_pay_simulation_stack'
wp option delete 'woocommerce_amazon_payments_advanced_settings'
wp option delete 'amazon_api_version'
wp option delete 'woocommerce_amazon_payments_new_install'
wp option delete 'woocommerce_subscriptions_turn_off_automatic_payments'
wp option delete 'woocs_is_multiple_allowed'
wp option delete '_wcml_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon_reference_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon_reference_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon_reference_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon_reference_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon_reference_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon_reference_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon_reference_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon_reference_id'"
