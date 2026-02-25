-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('owcpv_form_product', 'owcpv_settings_value', 'owcpv_json_value', 'owcpv_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('owcpv_form_product', 'owcpv_settings_value', 'owcpv_json_value', 'owcpv_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('owcpv_form_product', 'owcpv_settings_value', 'owcpv_json_value', 'owcpv_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('owcpv_form_product', 'owcpv_settings_value', 'owcpv_json_value', 'owcpv_form');

