-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ms_files_rewriting', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'broadcast_last_used_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'broadcast_last_used_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'broadcast_last_used_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'broadcast_last_used_settings');

