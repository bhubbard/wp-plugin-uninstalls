-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advausro_oauth2_settings', 'advausro_custom_capabilities', 'advausro_timezone_pending', 'advausro_timezone_string', 'advausro_gmt_offset');
DELETE FROM wp_options WHERE option_name LIKE 'advausro_oauth2_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_advausro_original_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_advausro_original_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_advausro_original_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_advausro_original_roles');

