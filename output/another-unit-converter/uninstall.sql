-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aucp_settings', 'aucp-exchange-rates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_aucp_api_key_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_aucp_api_key_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_aucp_api_key_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_aucp_api_key_notice');

