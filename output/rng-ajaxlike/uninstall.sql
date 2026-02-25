-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rajl_setting_option', 'rajl_configration_dissmiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rajl_like_wp');
DELETE FROM wp_usermeta WHERE meta_key IN ('rajl_like_wp');
DELETE FROM wp_termmeta WHERE meta_key IN ('rajl_like_wp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rajl_like_wp');

