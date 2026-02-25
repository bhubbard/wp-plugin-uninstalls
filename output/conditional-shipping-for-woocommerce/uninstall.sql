-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcs_debug_mode', 'wcs_disable_all', 'wcs_ruleset_order', 'wcs_pro_features', 'wcs_ruleset_fields', 'woocommerce_dimension_unit', 'wcs_updated_340', 'wcs_updated_3401', 'wcs_updated_200', 'wcs_conditions', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcs_enabled', '_wcs_operator', '_wcs_conditions', '_wcs_actions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcs_enabled', '_wcs_operator', '_wcs_conditions', '_wcs_actions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcs_enabled', '_wcs_operator', '_wcs_conditions', '_wcs_actions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcs_enabled', '_wcs_operator', '_wcs_conditions', '_wcs_actions');

