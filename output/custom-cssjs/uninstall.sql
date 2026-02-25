-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_biw_custom_css');
DELETE FROM wp_options WHERE option_name LIKE '_biw_custom_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_biw_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_biw_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_biw_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_biw_custom_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_biw_custom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_biw_custom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_biw_custom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_biw_custom_%';

