-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlgm_general_settings', 'mlgm_style_settings', 'ydsts_general_settings', 'ydsgm_style_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mlgm_address', 'yds_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('mlgm_address', 'yds_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('mlgm_address', 'yds_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mlgm_address', 'yds_address');

