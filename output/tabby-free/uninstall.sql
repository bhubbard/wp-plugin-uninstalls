-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agwp_tabby_settings_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('agwp_tabby_post_options', 'agwp_tabby_options_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('agwp_tabby_post_options', 'agwp_tabby_options_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('agwp_tabby_post_options', 'agwp_tabby_options_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('agwp_tabby_post_options', 'agwp_tabby_options_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_agm_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_agm_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_agm_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_agm_errors_%';

