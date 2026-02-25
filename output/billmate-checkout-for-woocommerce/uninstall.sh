#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bco_settings'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_payment_denied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_payment_denied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_payment_denied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_payment_denied'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_temp_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_temp_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_temp_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_temp_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_saved_woo_order_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_saved_woo_order_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_saved_woo_order_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_saved_woo_order_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_payment_method_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_payment_method_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_payment_method_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_payment_method_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billmate_payment_method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
