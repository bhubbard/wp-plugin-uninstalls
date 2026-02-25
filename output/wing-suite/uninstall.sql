-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wingsuite_wingsuite_modules', 'wingsuite_dm_settings');
DELETE FROM wp_options WHERE option_name LIKE 'wingsuite_%';
DELETE FROM wp_options WHERE option_name LIKE 'wingsuite_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wingsuite_search');
DELETE FROM wp_usermeta WHERE meta_key IN ('wingsuite_search');
DELETE FROM wp_termmeta WHERE meta_key IN ('wingsuite_search');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wingsuite_search');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wingsuite_core_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wingsuite_core_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wingsuite_core_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wingsuite_core_errors_%';

