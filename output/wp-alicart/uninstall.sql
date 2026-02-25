-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alicart_title', 'alicart_empty', 'alipay_return_url', 'alicart_add_button_name', 'alipay_name', 'alipay_email', 'alipay_partner_id', 'alipay_key', 'alicart_base_shipping_cost', 'alicart_free_shipping_threshold', 'alicart_my_cart', 'alicart_check_out', 'alicart_products_page_url', 'alicart_image_hide', 'alicart_not_empty', 'alipay_cart_use_profile_shipping', 'alipay_cart_collect_address');

