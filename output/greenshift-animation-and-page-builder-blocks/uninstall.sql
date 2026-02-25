-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gspb_global_settings', 'gspb_block_js', 'gspb_edd_licenses', 'greenshift_global_classes', 'gspb_css_save', 'gspb_stylebook_id', 'greenshift_theme_options', 'gspb-dynamic-icons-render');
DELETE FROM wp_options WHERE option_name LIKE 'gs_countdown_sale%';
DELETE FROM wp_options WHERE option_name LIKE 'gs_countdown_sale_hours%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email', 'name', '_thumbnail_id', '_product_image_gallery', 'thumbnail_id', '_sale_price_dates_to', '_sale_price_dates_from', '_gspb_post_css', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('email', 'name', '_thumbnail_id', '_product_image_gallery', 'thumbnail_id', '_sale_price_dates_to', '_sale_price_dates_from', '_gspb_post_css', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('email', 'name', '_thumbnail_id', '_product_image_gallery', 'thumbnail_id', '_sale_price_dates_to', '_sale_price_dates_from', '_gspb_post_css', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email', 'name', '_thumbnail_id', '_product_image_gallery', 'thumbnail_id', '_sale_price_dates_to', '_sale_price_dates_from', '_gspb_post_css', '_wp_page_template');

