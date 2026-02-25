-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('execvitr_email', 'execvitr_google_api_key', 'execvitr_country', 'execvitr_currency', 'execvitr_km_price', 'execvitr_minimum_price', 'execvitr_max_distance', 'execvitr_whatsapp_number', 'execvitr_notify_admin', 'execvitr_notify_whatsapp', 'execvitr_distance_unit', 'execvitr_enable_cash', 'execvitr_min_booking_hours', 'execvitr_cars', 'execvitr_form_page_id', 'execvitr_product_id', 'execvitr_needs_product_setup', 'execvitr_company_name', 'execvitr_company_taxno', 'execvitr_company_iban', 'execvitr_google_server_key', 'vts_google_api_key', 'vts_country');
DELETE FROM wp_options WHERE option_name LIKE 'execvitr_%';
DELETE FROM wp_options WHERE option_name LIKE 'vts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_execvitr_booking_product', '_virtual', '_sold_individually', '_manage_stock', '_stock_status', '_regular_price', '_price', '_tax_status', '_visibility', '_catalog_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('_execvitr_booking_product', '_virtual', '_sold_individually', '_manage_stock', '_stock_status', '_regular_price', '_price', '_tax_status', '_visibility', '_catalog_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('_execvitr_booking_product', '_virtual', '_sold_individually', '_manage_stock', '_stock_status', '_regular_price', '_price', '_tax_status', '_visibility', '_catalog_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_execvitr_booking_product', '_virtual', '_sold_individually', '_manage_stock', '_stock_status', '_regular_price', '_price', '_tax_status', '_visibility', '_catalog_visibility');

