#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdp_criteria_no'
wp option delete 'woocommerce_plus_discount_type'
wp option delete 'woocommerce_discount_type'
wp option delete 'wdp_qd'
wp option delete 'wpdp_special_offer'
wp option delete 'woocommerce_user_roles'
wp option delete 'woocommerce_enable_plus_discounts'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_css_old_price'
wp option delete 'woocommerce_css_new_price'
wp option delete 'woocommerce_show_on_subtotal'
wp option delete 'woocommerce_show_on_order_subtotal'
wp option delete 'woocommerce_cart_info'
wp option delete 'woocommerce_remove_discount_on_coupon'
wp option delete 'woocommerce_discount_on_sale'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdp_qd_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdp_qdw_%'"
wp option delete 'wcdp_pricing_scale_text'
wp option delete 'gj_logic_status'
wp option delete 'wcdp_urgent_sale_page_id'
wp option delete 'wcdp_urgent_sale_categories'
wp option delete 'wcdp_urgent_sale_expiry'
wp option delete 'wcdp_sale_banner_status'
wp option delete 'wcdp_sale_emails_status'
wp option delete 'wcdp_sales_email_settings'
wp option delete 'bt_urgent_sale_product'
wp option delete 'wcdp_unsubscribed_emails'
wp option delete 'wcdp_sales_email_frequency'
wp option delete 'wcdp_sales_promotional_discount'
wp option delete 'wcdp_sales_email_times'
wp option delete 'wcdp_promotional_email_batches'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdp_%'"
wp option delete 'woocommerce_show_discounts_on_shipping_decision'
wp option delete 'wcdp_dac_error_messages'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wd_cart_criteria'
wp option delete 'wcdp_cats'
wp option delete 'woocommerce_discount_label'
wp option delete 'wdp_s2member'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_variations_separate'
wp option delete 'woocommerce_plus_discount_condition'
wp option delete 'woocommerce_show_discounted_price'
wp option delete 'woocommerce_tiers'
wp option delete 'woocommerce_show_discounted_price_sp'
wp option delete 'woocommerce_show_discounted_price_shop'

# Clear Cron Jobs
wp cron event delete 'wcdp_update_daily_product_mapping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plus_discount_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plus_discount_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plus_discount_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plus_discount_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_cat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_cat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_cat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_cat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_discount_love'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_discount_love'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_discount_love'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_discount_love'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plus_discount_text_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plus_discount_text_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plus_discount_text_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plus_discount_text_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plus_discount_excluding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plus_discount_excluding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plus_discount_excluding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plus_discount_excluding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plus_discount_product_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plus_discount_product_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plus_discount_product_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plus_discount_product_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plus_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plus_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plus_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plus_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdp_total_discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdp_total_discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdp_total_discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdp_total_discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcdp_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcdp_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcdp_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcdp_cart_discount'"
