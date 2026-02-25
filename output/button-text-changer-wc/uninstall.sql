-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btcwc_update_cart_btn_text', 'btcwc_coupon_btn_text', 'btcwc_fild_single_page_ajax_btn', 'btcwc_account_dashboard_text', 'btcwc_account_orders_text', 'btcwc_account_downloads_text', 'btcwc_account_address_text', 'btcwc_account_details_text', 'btcwc_account_log_out_text', 'btcwc_checkout_btn_text', 'btcwc_order_btn_text', 'btcwc_back_to_shop_btn_text', 'btcwc_variable_add_to_cart', 'btcwc_group_product_add_to_cart', 'btcwc_fild_btcwc_add_to_cart');

