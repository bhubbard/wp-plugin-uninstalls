-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_api_enabled', 'woocommerce_weight_unit', 'woocommerce_currency', 'woocommerce_dimension_unit', 'SCCSP_SENDCLOUD_SCHEMA_VERSION', 'service_point_carriers');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('productUpdateHash');
DELETE FROM wp_usermeta WHERE meta_key IN ('productUpdateHash');
DELETE FROM wp_termmeta WHERE meta_key IN ('productUpdateHash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('productUpdateHash');

