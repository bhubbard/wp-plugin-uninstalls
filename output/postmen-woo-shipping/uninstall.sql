-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'postmen_api_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postmen_wp_api_key', '_aftership_tracking_provider', '_aftership_tracking_number', 'is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('postmen_wp_api_key', '_aftership_tracking_provider', '_aftership_tracking_number', 'is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('postmen_wp_api_key', '_aftership_tracking_provider', '_aftership_tracking_number', 'is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postmen_wp_api_key', '_aftership_tracking_provider', '_aftership_tracking_number', 'is_customer_note');

