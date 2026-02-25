-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bulkedittoolkit_bulk_edit_plugin_version', 'bulkedittoolkit_bulk_edit_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%countdown';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%countdown';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%countdown';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%countdown';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%showtext';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%showtext';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%showtext';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%showtext';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%metadata';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%metadata';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%metadata';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%metadata';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%details';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%details';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%details';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%details';

