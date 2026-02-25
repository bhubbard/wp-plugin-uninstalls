-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unlock_protocol_installed', 'unlock_protocol_version', 'unlock_protocol_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('unlock_ethereum_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('unlock_ethereum_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('unlock_ethereum_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('unlock_ethereum_address');

