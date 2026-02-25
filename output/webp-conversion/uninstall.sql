-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webpc_auto', 'webpc_svg', 'webpc_ico', 'webpc_remove', 'webpc_conversion_library', 'webpc_200kb', 'webpc_1000kb', 'webpc_2500kb', 'webpc_more_2500kb', 'webpc_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'webpc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webpc_backup_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webpc_backup_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webpc_backup_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webpc_backup_file');

