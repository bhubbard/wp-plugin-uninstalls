-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evwapp_opiton_message_cart', 'evwapp_opiton_text_button_cart', 'evwapp_opiton_cart_button_target', 'evwapp_opiton_remove_price', 'evwapp_opiton_remove_cart_btn', 'evwapp_opiton_remove_btn', 'evwapp_opiton_message', 'evwapp_opiton_text_button', 'evwapp_opiton_target', 'evwapp_opiton_show_btn_single', 'evwapp_opiton_show_cart', 'evwapp_opiton_phone_number', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'omw_install_id', 'omw_install_started_at', 'omw_first_plugin_version', 'evwapp_tracking_code', 'evwapp_opiton_product_order_message', 'evwapp_opiton_order_message', 'evwapp_opiton_show_thank');

