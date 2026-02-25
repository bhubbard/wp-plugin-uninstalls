-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spreadr_token', 'spreadr_button_text', 'spreadr_review_token', 'spreadr_review_userid', 'spreadr_is_review_on', 'spreadr_review_display', 'spreadr_custom_single_page', 'spreadr_button_type', 'spreadr_tags', 'spreadr_custom_collection_page', 'spreadr_is_analytics', 'spreadr_geo_localize', 'is_facebook_pixel', 'spreadr_custom_javascript', 'spreadr_custom_button_type', 'spreadr_exit_popup', 'spreadr_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_virtual', '_stock_status', '_manage_stock', '_backorders', '_regular_price', '_sale_price', '_price', '_product_url', 'product-source', 'spreadr_product_button_type', 'spreadr-url', 'spreadr-title', 'spreadr-region', 'spreadr_product_button_text', 'spreadr-asin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_virtual', '_stock_status', '_manage_stock', '_backorders', '_regular_price', '_sale_price', '_price', '_product_url', 'product-source', 'spreadr_product_button_type', 'spreadr-url', 'spreadr-title', 'spreadr-region', 'spreadr_product_button_text', 'spreadr-asin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_virtual', '_stock_status', '_manage_stock', '_backorders', '_regular_price', '_sale_price', '_price', '_product_url', 'product-source', 'spreadr_product_button_type', 'spreadr-url', 'spreadr-title', 'spreadr-region', 'spreadr_product_button_text', 'spreadr-asin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_virtual', '_stock_status', '_manage_stock', '_backorders', '_regular_price', '_sale_price', '_price', '_product_url', 'product-source', 'spreadr_product_button_type', 'spreadr-url', 'spreadr-title', 'spreadr-region', 'spreadr_product_button_text', 'spreadr-asin');

