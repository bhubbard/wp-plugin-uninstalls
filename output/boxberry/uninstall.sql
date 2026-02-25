-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boxberry_reception_point_notice_active', 'boxberry_deliveries_renamed', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'boxberry_is_export_done', 'woocommerce_calc_taxes', 'wiidget_url');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_boxberry_array');
DELETE FROM wp_usermeta WHERE meta_key IN ('_boxberry_array');
DELETE FROM wp_termmeta WHERE meta_key IN ('_boxberry_array');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_boxberry_array');

