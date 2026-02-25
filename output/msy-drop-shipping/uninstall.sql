-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msy_price_settings_options', 'msy_user_registration_data', 'msy_imported_products_ids', 'msy_main_settings_options', 'msyds_notice_message', 'msyds_last_order_sync_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('msyds_margin_price', '_shipping_first_name', '_shipping_last_name', 'msyds_order_synced', 'msyds_product_include', 'msyds_main_order_id', 'msyds_order_deleted', '_stock', '_stock_status', '_thumbnail_id', 'msyds_pics_urls', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('msyds_margin_price', '_shipping_first_name', '_shipping_last_name', 'msyds_order_synced', 'msyds_product_include', 'msyds_main_order_id', 'msyds_order_deleted', '_stock', '_stock_status', '_thumbnail_id', 'msyds_pics_urls', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('msyds_margin_price', '_shipping_first_name', '_shipping_last_name', 'msyds_order_synced', 'msyds_product_include', 'msyds_main_order_id', 'msyds_order_deleted', '_stock', '_stock_status', '_thumbnail_id', 'msyds_pics_urls', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('msyds_margin_price', '_shipping_first_name', '_shipping_last_name', 'msyds_order_synced', 'msyds_product_include', 'msyds_main_order_id', 'msyds_order_deleted', '_stock', '_stock_status', '_thumbnail_id', 'msyds_pics_urls', '_product_image_gallery');

