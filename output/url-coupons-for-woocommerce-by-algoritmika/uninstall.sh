#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_url_coupons_cookie_sec'
wp option delete 'alg_wc_url_coupons_enabled'
wp option delete 'alg_wc_url_coupons_priority'
wp option delete 'alg_wc_url_coupons_delay_coupon'
wp option delete 'alg_wc_url_coupons_delay_notice'
wp option delete 'alg_wc_url_coupons_cart_hide_coupon'
wp option delete 'alg_wc_url_coupons_checkout_hide_coupon'
wp option delete 'alg_wc_url_coupons_add_to_cart_action_force_coupon_redirect'
wp option delete 'alg_wc_url_coupons_wp_rocket_disable_cache_wc_empty_cart'
wp option delete 'alg_wc_url_coupons_save_empty_cart'
wp option delete 'alg_wc_url_coupons_payment_request_product_data'
wp option delete 'alg_wc_url_coupons_data_storage_type'
wp option delete 'alg_wc_url_coupons_key'
wp option delete 'alg_wc_url_coupons_delay_coupon_check_product'
wp option delete 'alg_wc_url_coupons_hide_coupon_condition'
wp option delete 'alg_wc_url_coupons_force_start_session'
wp option delete 'alg_wc_url_coupons_force_start_session_earlier'
wp option delete 'alg_wc_url_coupons_cookie_enabled'
wp option delete 'alg_wc_url_coupons_remove_add_to_cart_key'
wp option delete 'alg_wc_url_coupons_delay_coupon_non_empty_cart'
wp option delete 'alg_wc_url_coupons_delay_coupon_notice'
wp option delete 'alg_wc_url_coupons_main_hook'
wp option delete 'alg_wc_url_coupons_javascript_reload'
wp option delete 'alg_wc_url_coupons_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

