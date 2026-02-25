-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'media_webp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes');

