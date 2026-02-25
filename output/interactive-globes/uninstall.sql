-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ittglobe_version', 'ittglobes', 'csf_demo_mode', 'fs_active_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('globe_id', 'globe_info', 'points_info', 'dotLabels_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('globe_id', 'globe_info', 'points_info', 'dotLabels_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('globe_id', 'globe_info', 'points_info', 'dotLabels_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('globe_id', 'globe_info', 'points_info', 'dotLabels_info');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

