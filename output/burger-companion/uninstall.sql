-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appetizer_media_id', 'widget_archives', 'widget_search', 'sidebars_widgets', 'astrocare_media_id', 'item_details_page', 'cozipress_media_id', 'decorme_media_id', 'hotelgalaxy_media_id', 'kundoo_media_id', 'owlpress_media_id', 'seokart_media_id', 'setto_media_id', 'spabiz_media_id', 'spintech_media_id', 'storebiz_media_id', 'storex_media_id', 'widget_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', 'setto_product_cat_icon', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', 'setto_product_cat_icon', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', 'setto_product_cat_icon', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', 'setto_product_cat_icon', 'thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'hg_room_settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'hg_room_settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'hg_room_settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hg_room_settings_%';

