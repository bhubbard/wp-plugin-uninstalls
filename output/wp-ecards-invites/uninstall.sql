-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ecards_credit', 'wp_ecards_woocommerce_enabled', 'wp_ecards_global_thankyou_content', 'wp_ecards_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_ecards_api_key', '_wp_ecard_option_btn_popup', '_wp_ecard_option_post_payment', '_wp_ecard_button_label', '_wp_ecard_modal_content', '_wp_ecard_thankyou_content', '_wp_ecard_qty_limit', '_stock_status', '_manage_stock', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_ecards_api_key', '_wp_ecard_option_btn_popup', '_wp_ecard_option_post_payment', '_wp_ecard_button_label', '_wp_ecard_modal_content', '_wp_ecard_thankyou_content', '_wp_ecard_qty_limit', '_stock_status', '_manage_stock', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_ecards_api_key', '_wp_ecard_option_btn_popup', '_wp_ecard_option_post_payment', '_wp_ecard_button_label', '_wp_ecard_modal_content', '_wp_ecard_thankyou_content', '_wp_ecard_qty_limit', '_stock_status', '_manage_stock', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_ecards_api_key', '_wp_ecard_option_btn_popup', '_wp_ecard_option_post_payment', '_wp_ecard_button_label', '_wp_ecard_modal_content', '_wp_ecard_thankyou_content', '_wp_ecard_qty_limit', '_stock_status', '_manage_stock', '_stock');

