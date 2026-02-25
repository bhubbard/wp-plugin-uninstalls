-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affprodimp_amazon_access_key', 'affprodimp_amazon_secret_key', 'affprodimp_amazon_country_code', 'affprodimp_amazon_affiliate_id', 'affprodimp_settings_remote_image', 'affprodimp_settings_product_type', 'affprodimp_settings_gallery_images', 'affprodimp_settings_product_price', 'affprodimp_settings_product_attributes', 'affprodimp_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('affprodimp_product_img_url', 'affprodimp_product_asin', '_price', '_regular_price', '_sale_price', '_product_url', 'affprodimp_sync_date', '_product_image_gallery', 'affprodimp_product_gallery_url', '_stock_status', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('affprodimp_product_img_url', 'affprodimp_product_asin', '_price', '_regular_price', '_sale_price', '_product_url', 'affprodimp_sync_date', '_product_image_gallery', 'affprodimp_product_gallery_url', '_stock_status', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('affprodimp_product_img_url', 'affprodimp_product_asin', '_price', '_regular_price', '_sale_price', '_product_url', 'affprodimp_sync_date', '_product_image_gallery', 'affprodimp_product_gallery_url', '_stock_status', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('affprodimp_product_img_url', 'affprodimp_product_asin', '_price', '_regular_price', '_sale_price', '_product_url', 'affprodimp_sync_date', '_product_image_gallery', 'affprodimp_product_gallery_url', '_stock_status', '_product_attributes');

