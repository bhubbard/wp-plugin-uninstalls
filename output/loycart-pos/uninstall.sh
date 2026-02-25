#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loycart_pos_items_per_page'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_pos_store_name'
wp option delete 'woocommerce_pos_store_phone'
wp option delete 'woocommerce_pos_receipt_footer'
wp option delete 'loycart_pos_receipt_paper_width'
wp option delete 'loycart_pos_enable_usb_direct_print'
wp option delete 'loycart_pos_default_theme'
wp option delete 'loycart_pos_show_theme_toggle'
wp option delete 'loycart_pos_show_notifications'
wp option delete 'loycart_pos_products_per_page'
wp option delete 'loycart_pos_default_sort'
wp option delete 'loycart_pos_allow_private_detail_lookups'
wp option delete 'loycart_pos_credit_enabled'
wp option delete 'loycart_pos_credit_apply_online'
wp option delete 'loycart_pos_credit_exclude_sale_items_earning'
wp option delete 'loycart_pos_credit_exclude_sale_items_redeeming'
wp option delete 'loycart_pos_credit_earn_percent'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'loycart_pos_credit_exclude_sale_items'
wp option delete 'woocommerce_pos_store_address'
wp option delete 'woocommerce_store_country'
wp option delete 'woocommerce_store_state'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_held_cart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_held_cart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_held_cart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_held_cart_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_held_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_held_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_held_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_held_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_held_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_held_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_held_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_held_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_held_operator_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_held_operator_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_held_operator_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_held_operator_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_held_operator_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_held_operator_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_held_operator_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_held_operator_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_held_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_held_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_held_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_held_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_pos_active_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_pos_active_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_pos_active_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_pos_active_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_store_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_store_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_store_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_store_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loycart_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loycart_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loycart_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loycart_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
