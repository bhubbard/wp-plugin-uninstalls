-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dal_plugin_version', 'dal_post_types', 'dal_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dal_userlevel', 'dal_postlevel');
DELETE FROM wp_usermeta WHERE meta_key IN ('dal_userlevel', 'dal_postlevel');
DELETE FROM wp_termmeta WHERE meta_key IN ('dal_userlevel', 'dal_postlevel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dal_userlevel', 'dal_postlevel');

