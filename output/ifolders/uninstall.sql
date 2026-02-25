-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ifolders_dismiss_first_use_notification', 'ifolders_version', 'ifolders_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ifolders_settings', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ifolders_settings', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ifolders_settings', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ifolders_settings', '_wp_attachment_image_alt');

