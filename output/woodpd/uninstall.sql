-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woodpd_products_button', 'woodpd_simple_product_button ', 'woodpd_after_product_button ', 'woodpd_read_more_text', 'woodpd_cart_url', 'woodpd_add_to_cart_text', 'woodpd_buy_now_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dpd_id', 'dpd_price_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('dpd_id', 'dpd_price_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('dpd_id', 'dpd_price_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dpd_id', 'dpd_price_id');

