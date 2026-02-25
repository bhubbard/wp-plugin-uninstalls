-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etimeclockwp_firstrun', 'etimeclockwp_install_date', 'etimeclockwp_settings', 'etimeclockwp_activation_notice', '_etimeclockwp_extensions_feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uid', 'count', 'notices', 'in', 'out', 'etimeclockwp_name', 'etimeclockwp_id', 'etimeclockwp_pwd', 'etimeclockwp_wp_account', 'etimeclockwp_meta_id', 'total');
DELETE FROM wp_usermeta WHERE meta_key IN ('uid', 'count', 'notices', 'in', 'out', 'etimeclockwp_name', 'etimeclockwp_id', 'etimeclockwp_pwd', 'etimeclockwp_wp_account', 'etimeclockwp_meta_id', 'total');
DELETE FROM wp_termmeta WHERE meta_key IN ('uid', 'count', 'notices', 'in', 'out', 'etimeclockwp_name', 'etimeclockwp_id', 'etimeclockwp_pwd', 'etimeclockwp_wp_account', 'etimeclockwp_meta_id', 'total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uid', 'count', 'notices', 'in', 'out', 'etimeclockwp_name', 'etimeclockwp_id', 'etimeclockwp_pwd', 'etimeclockwp_wp_account', 'etimeclockwp_meta_id', 'total');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'status_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'total_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'total_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'total_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'total_%';

