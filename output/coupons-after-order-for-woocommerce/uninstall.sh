#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coupons_after_order_settings'
wp option delete 'wccao_coupons_after_order_email_subject'
wp option delete 'wccao_coupons_after_order_email_header'
wp option delete 'wccao_coupons_after_order_email_content'
wp option delete 'wccao_coupons_after_order_email_bt_title'
wp option delete 'wccao_coupons_after_order_email_bt_url'
wp option delete 'wccao_coupons_after_order_email_bt_color'
wp option delete 'wccao_coupons_after_order_email_bt_bg_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'wccao_coupons_after_order_coupon_font_color'
wp option delete 'wccao_coupons_after_order_coupon_bg_color'
wp option delete 'wccao_coupons_after_order_email_bt_font_size'
wp option delete 'wccao_coupons_after_order_enable'
wp option delete 'wccao_coupons_after_order_availability_start_enabled'
wp option delete 'wccao_coupons_after_order_availability_start_date'
wp option delete 'wccao_coupons_after_order_validity_type'
wp option delete 'wccao_coupons_after_order_validitydays'
wp option delete 'wccao_coupons_after_order_validitydate'
wp option delete 'wccao_coupons_after_order_count'
wp option delete 'wccao_coupons_after_order_usage_limit'
wp option delete 'wccao_coupons_after_order_individual_use'
wp option delete 'wccao_coupons_after_order_min_amount'
wp option delete 'wccao_coupons_after_order_email_restriction'
wp option delete 'wccao_coupons_after_order_prefix'
wp option delete 'wccao_coupons_after_order_url_parameter'
wp option delete 'wccao_coupons_after_order_data_uninstall'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_header_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wccao_customer_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wccao_customer_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wccao_customer_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wccao_customer_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coupons_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coupons_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coupons_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coupons_generated'"
