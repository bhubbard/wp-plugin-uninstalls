-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_gallery_widget_lite_version', 'a3_wc_widget_product_slider_just_installed', 'wc_widget_product_slider_lite_style_version', 'wc_product_slider_a3_card_skin_card_layout_settings', 'woocommerce_db_version', 'wc_product_slider_widget_skin_settings', 'woocommerce_version', 'wc_product_slider_a3_widget_skin_global_settings', 'wc_product_slider_a3_widget_skin_dimensions_settings', 'wc_product_slider_a3_widget_skin_control_settings', 'wc_product_slider_a3_widget_skin_pager_settings', 'wc_product_slider_a3_widget_skin_title_settings', 'wc_product_slider_a3_widget_skin_price_settings', 'wc_product_slider_a3_widget_skin_product_link_settings', 'wc_product_slider_a3_widget_skin_category_tag_link_settings', 'wc_product_slider_global_settings', 'wc_product_slider_a3_card_skin_global_settings', 'wc_product_slider_a3_card_skin_card_style_settings', 'wc_product_slider_a3_card_skin_control_settings', 'wc_product_slider_a3_card_skin_description_settings', 'wc_product_slider_a3_card_skin_footer_cell_settings', 'wc_product_slider_a3_card_skin_pager_settings', 'wc_product_slider_a3_card_skin_price_settings', 'wc_product_slider_a3_card_skin_title_settings', 'wc_product_slider_a3_mobile_skin_card_container_settings', 'wc_product_slider_a3_mobile_skin_category_tag_link_settings', 'wc_product_slider_a3_mobile_skin_pager_settings', 'wc_product_slider_a3_mobile_skin_price_settings', 'wc_product_slider_a3_mobile_skin_title_settings', 'wc_product_slider_a3_carousel_global_settings', 'wc_product_slider_a3_carousel_container_settings', 'wc_product_slider_a3_carousel_control_settings', 'wc_product_slider_a3_carousel_pager_settings', 'update_plugins', 'wc_featured_products', 'wc_products_onsale');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';

