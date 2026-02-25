-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ella_media_id', 'widget_block', 'widget_recent-posts', 'widget_archives', 'widget_search', 'sidebars_widgets', 'pixelonetry_companion_item_details_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders');

