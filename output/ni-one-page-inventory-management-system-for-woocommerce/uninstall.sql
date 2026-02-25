-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount', 'niwopims_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_location_code', '_address_line', '_address_line2', '_city', '_zip_code', '_state', '_country', '_contact_person_first_name', '_contact_person_last_name', '_email_address', '_contact_no', '_is_active', '_manage_stock', '_stock', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_location_code', '_address_line', '_address_line2', '_city', '_zip_code', '_state', '_country', '_contact_person_first_name', '_contact_person_last_name', '_email_address', '_contact_no', '_is_active', '_manage_stock', '_stock', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_location_code', '_address_line', '_address_line2', '_city', '_zip_code', '_state', '_country', '_contact_person_first_name', '_contact_person_last_name', '_email_address', '_contact_no', '_is_active', '_manage_stock', '_stock', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_location_code', '_address_line', '_address_line2', '_city', '_zip_code', '_state', '_country', '_contact_person_first_name', '_contact_person_last_name', '_email_address', '_contact_no', '_is_active', '_manage_stock', '_stock', '_sku');

