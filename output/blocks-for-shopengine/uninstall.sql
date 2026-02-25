-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'woocommerce_enable_myaccount_registration', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_shop_page_id', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_enable_order_comments', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_ship_to_destination', 'woocommerce_hide_out_of_stock_items', 'shopengine_product_id', 'woocommerce_enable_guest_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color', 'gutenova_font_link', 'gutenova_css', '_wp_attachment_image_alt', 'shopengine_tag_bg_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color', 'gutenova_font_link', 'gutenova_css', '_wp_attachment_image_alt', 'shopengine_tag_bg_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color', 'gutenova_font_link', 'gutenova_css', '_wp_attachment_image_alt', 'shopengine_tag_bg_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color', 'gutenova_font_link', 'gutenova_css', '_wp_attachment_image_alt', 'shopengine_tag_bg_color');

