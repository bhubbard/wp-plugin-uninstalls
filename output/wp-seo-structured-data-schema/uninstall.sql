-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kcseo_wp_schema_settings', 'kcseo_bf_2022');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kcseo_ative_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kcseo_ative_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kcseo_ative_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kcseo_ative_tab');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_schema_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_schema_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_schema_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_schema_%';

