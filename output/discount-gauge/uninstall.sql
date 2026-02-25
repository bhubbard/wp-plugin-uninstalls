-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disgau_product_discount_type', 'disgau_product_discount_custom_phrase', 'disgau_product_discount_text_color', 'disgau_product_discount_bg_color');

