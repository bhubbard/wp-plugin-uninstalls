-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azoads_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aa_position', 'aa_type', 'aa_expire_datetime', 'aa_show_by_days', 'aa_adsense_type', 'aa_adsense_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('aa_position', 'aa_type', 'aa_expire_datetime', 'aa_show_by_days', 'aa_adsense_type', 'aa_adsense_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('aa_position', 'aa_type', 'aa_expire_datetime', 'aa_show_by_days', 'aa_adsense_type', 'aa_adsense_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aa_position', 'aa_type', 'aa_expire_datetime', 'aa_show_by_days', 'aa_adsense_type', 'aa_adsense_size');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'aa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'aa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'aa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'aa_%';

