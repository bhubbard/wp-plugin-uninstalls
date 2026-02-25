-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GOTMLS_settings_array', 'GOTMLS_definitions_array', 'GOTMLS_get_URL_blob', 'GOTMLS_definitions_blob', 'GOTMLS_nonce_blob', 'GOTMLS_Installation_Keys', 'WP_firewall_exclude_terms', 'WP_firewall_whitelisted_ip', 'GOTMLS_get_URL_array', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_blob';
DELETE FROM wp_options WHERE option_name LIKE '%_array';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('GOTMLS_threats_found');
DELETE FROM wp_usermeta WHERE meta_key IN ('GOTMLS_threats_found');
DELETE FROM wp_termmeta WHERE meta_key IN ('GOTMLS_threats_found');
DELETE FROM wp_commentmeta WHERE meta_key IN ('GOTMLS_threats_found');

