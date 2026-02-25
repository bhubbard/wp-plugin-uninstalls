-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pw_merchant_key', 'pw_merchant_id', 'pw_sandbox_merchant_id', 'pw_sandbox_merchant_key', 'pw_enable_sandbox', 'pw_show_single_product', 'pw_show_carts_page', 'pw_show_quick_signup', 'pw_show_single_product_position', 'pw_show_carts_page_position', 'woocommerce_enable_order_comments', 'pw_image_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_dustid_order', '_thankyou_action_done', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_dustid_order', '_thankyou_action_done', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_dustid_order', '_thankyou_action_done', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_dustid_order', '_thankyou_action_done', '_shipping_first_name', '_shipping_last_name', '_shipping_address_1', '_shipping_city', '_shipping_country', '_shipping_postcode');

