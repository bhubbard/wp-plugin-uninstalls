-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmlim_enable_location_selection', 'wcmlim_radio_btn_with_display_view', 'wcmlim_txt_in_fdiv', 'wcmlim_txt_in_btn_instock', 'wcmlim_txt_in_btn_outofstock', 'wcmlim_custom_css_enable', 'wcmlim_custom_css', 'wcmlim_enable_shop_filter', 'wcmlim_enable_location_address', 'wcmlim_enable_location_city', 'wcmlim_enable_location_postcode', 'wcmlim_enable_location_state', 'wcmlim_enable_location_country', 'wcmlim_enable_location_email', 'wcmlim_enable_location_phone', 'wcmlim_enable_location_business_hours', 'wcmlim_listing_preset_location', 'wcmlim_display_view', 'wcmlim_location_display_heading', 'wcmlim_instock_button_text', 'wcmlim_outofstock_button_text', 'wcmlim_taxonomy_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcmlim_street_number', 'wcmlim_city', 'wcmlim_postal_code', 'wcmlim_country', 'wcmlim_email', 'wcmlim_phone', 'wcmlim_location_order', 'wcmlim_state', '_stock', '_stock_status', 'wcmlim_business_hours', 'wcmlim_location_priority', 'wcmlim_group_description', 'wcmlim_product_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcmlim_street_number', 'wcmlim_city', 'wcmlim_postal_code', 'wcmlim_country', 'wcmlim_email', 'wcmlim_phone', 'wcmlim_location_order', 'wcmlim_state', '_stock', '_stock_status', 'wcmlim_business_hours', 'wcmlim_location_priority', 'wcmlim_group_description', 'wcmlim_product_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcmlim_street_number', 'wcmlim_city', 'wcmlim_postal_code', 'wcmlim_country', 'wcmlim_email', 'wcmlim_phone', 'wcmlim_location_order', 'wcmlim_state', '_stock', '_stock_status', 'wcmlim_business_hours', 'wcmlim_location_priority', 'wcmlim_group_description', 'wcmlim_product_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcmlim_street_number', 'wcmlim_city', 'wcmlim_postal_code', 'wcmlim_country', 'wcmlim_email', 'wcmlim_phone', 'wcmlim_location_order', 'wcmlim_state', '_stock', '_stock_status', 'wcmlim_business_hours', 'wcmlim_location_priority', 'wcmlim_group_description', 'wcmlim_product_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcmlim_stock_at_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcmlim_stock_at_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcmlim_stock_at_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcmlim_stock_at_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%';

