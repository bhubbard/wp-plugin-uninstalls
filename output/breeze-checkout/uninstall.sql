-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b1cco_plugin_options', 'b1cco_btn_enable_product_weight_in_gm', 'b1cco_get_local_atom_url', 'b1cco_script_url', 'b1cco_get_custom_cookie_data', 'b1cco_btn_enable_utm_params', 'b1cco_btn_enable_cartflow_abandoned_flow', 'b1cco_btn_enable_validate_order_status', 'breeze_refund_api_signkey', 'breeze_api_key_details', 'b1cco_btn_enable_order_refund', 'breeze_cart_button_enable', 'breeze_cart_drawer_button_enable', 'breeze_refund_shop_id', 'breeze_enable_refund');

