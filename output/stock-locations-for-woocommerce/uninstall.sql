-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpso_options', 'slw_api_status', 'slw_api_request_validated', 'slw_api_request_sources', 'slw_logger', 'slw_logs_status', 'slw_update_product_locations_stock_values', 'slw_crons_status', 'slw_cron_request_validated', 'slw_settings', 'slw_update_products', 'slw_cron_request_sources', 'slw-archives-status', 'woocommerce_manage_stock', 'woocommerce_hold_stock_minutes', 'woocommerce_hide_out_of_stock_items', 'woocommerce_stock_format', 'slw-google-api-key', 'slw-location-selection');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_price', '_regular_price', 'slw_location_assignment', 'slw_location_status', 'slw_map_status', 'slw_auto_allocate', 'slw_location_priority', 'slw_default_location', '_low_stock_amount', '_backorders', 'slw_location_notice', 'slw_backorder_location', 'slw_location_email', 'slw_location_address', 'slw_location_popup', 'slw_location_timings', 'slw_location_phone', 'slw_lat', 'slw_lng', '_slw_default_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_price', '_regular_price', 'slw_location_assignment', 'slw_location_status', 'slw_map_status', 'slw_auto_allocate', 'slw_location_priority', 'slw_default_location', '_low_stock_amount', '_backorders', 'slw_location_notice', 'slw_backorder_location', 'slw_location_email', 'slw_location_address', 'slw_location_popup', 'slw_location_timings', 'slw_location_phone', 'slw_lat', 'slw_lng', '_slw_default_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_price', '_regular_price', 'slw_location_assignment', 'slw_location_status', 'slw_map_status', 'slw_auto_allocate', 'slw_location_priority', 'slw_default_location', '_low_stock_amount', '_backorders', 'slw_location_notice', 'slw_backorder_location', 'slw_location_email', 'slw_location_address', 'slw_location_popup', 'slw_location_timings', 'slw_location_phone', 'slw_lat', 'slw_lng', '_slw_default_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manage_stock', '_stock', '_stock_status', '_price', '_regular_price', 'slw_location_assignment', 'slw_location_status', 'slw_map_status', 'slw_auto_allocate', 'slw_location_priority', 'slw_default_location', '_low_stock_amount', '_backorders', 'slw_location_notice', 'slw_backorder_location', 'slw_location_email', 'slw_location_address', 'slw_location_popup', 'slw_location_timings', 'slw_location_phone', 'slw_lat', 'slw_lng', '_slw_default_location');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_stock_location_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_stock_location_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_stock_location_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stock_location_price_%';

