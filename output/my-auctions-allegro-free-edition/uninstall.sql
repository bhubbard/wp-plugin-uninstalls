-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gjmaa_database_version', 'gjmaa_db_version', 'widget_gjmaa_allegro_widget', 'widget_gjmaa_auctions', 'gjwa_pro_product_synchronize_price', 'woocommerce_notify_no_stock_amount', 'gjmaa_reassign_last', 'gjmaa_reassign_processedIds');
DELETE FROM wp_options WHERE option_name LIKE 'gjmaa_category_%';
DELETE FROM wp_options WHERE option_name LIKE 'gjmaa_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_allow_to_show_allegro_link', '_cta_to_show_allegro_link', '_allegro_auction_id', '_allegro_do_not_sync_price', '_product_url', '_button_text', '_wp_attachment_image_alt', '_allegro_url', '_product_image_gallery', '_product_attributes', '_price', '_regular_price', '_stock', '_stock_status', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_allow_to_show_allegro_link', '_cta_to_show_allegro_link', '_allegro_auction_id', '_allegro_do_not_sync_price', '_product_url', '_button_text', '_wp_attachment_image_alt', '_allegro_url', '_product_image_gallery', '_product_attributes', '_price', '_regular_price', '_stock', '_stock_status', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_allow_to_show_allegro_link', '_cta_to_show_allegro_link', '_allegro_auction_id', '_allegro_do_not_sync_price', '_product_url', '_button_text', '_wp_attachment_image_alt', '_allegro_url', '_product_image_gallery', '_product_attributes', '_price', '_regular_price', '_stock', '_stock_status', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_allow_to_show_allegro_link', '_cta_to_show_allegro_link', '_allegro_auction_id', '_allegro_do_not_sync_price', '_product_url', '_button_text', '_wp_attachment_image_alt', '_allegro_url', '_product_image_gallery', '_product_attributes', '_price', '_regular_price', '_stock', '_stock_status', '_wp_attached_file');

