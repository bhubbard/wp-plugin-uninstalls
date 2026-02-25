-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mirrar_brand_id', 'mirrar_all_post_type', 'mirrar_button_position', 'mirrar_btn_product_class', 'mirrar_hover_color', 'mirrar_button_icon', 'mirrar_icon_position', 'mirrar_style', 'mirrar_button_text', 'mirrar_button_alignment', 'mirrar_shop', 'mirrar_single_product', 'mirrar_btn_product_css', 'mirrar_all_taxonomy', 'mirrar_btn_category_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mirrar_show', 'mirrar_brand_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mirrar_show', 'mirrar_brand_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mirrar_show', 'mirrar_brand_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mirrar_show', 'mirrar_brand_id');

