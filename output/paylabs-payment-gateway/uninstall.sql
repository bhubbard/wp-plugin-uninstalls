-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paylabs_settings', 'woocommerce_paylabs_h5_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paymentType', 'va_number', 'qr_code', 'qr_code_image', 'ewallet_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('paymentType', 'va_number', 'qr_code', 'qr_code_image', 'ewallet_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('paymentType', 'va_number', 'qr_code', 'qr_code_image', 'ewallet_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paymentType', 'va_number', 'qr_code', 'qr_code_image', 'ewallet_link');

