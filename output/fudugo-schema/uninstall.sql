-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fssc_use_data', '_fssc_advanced_settings', '_fssc_schema_main_settings', '_fssc_licence_settings', '_fssc_server_url', '_fspi_server_url', 'woocommerce_currency', 'fs_schema_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fssc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fssc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fssc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fssc_%';

