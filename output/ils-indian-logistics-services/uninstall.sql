-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'wpils_key_validation_result');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ils_tracking_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ils_tracking_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ils_tracking_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ils_tracking_details');

