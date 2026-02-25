-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkd_telcell_version_option', 'language_payment_telcell', 'hkdigital_telcell_checkout_id', 'hkd_check_activation_telcell', 'hkdigital_dump_telcell', 'woocommerce_hkd_telcell_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('PaymentID');
DELETE FROM wp_usermeta WHERE meta_key IN ('PaymentID');
DELETE FROM wp_termmeta WHERE meta_key IN ('PaymentID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('PaymentID');

