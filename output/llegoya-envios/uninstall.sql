-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llegoya_envios_settings');
DELETE FROM wp_options WHERE option_name LIKE 'ly_deposito_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_llegoya_modo', '_llegoya_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_llegoya_modo', '_llegoya_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_llegoya_modo', '_llegoya_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_llegoya_modo', '_llegoya_sent');

