-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'smartaltfixer_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_smartaltfixer_alt_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_smartaltfixer_alt_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_smartaltfixer_alt_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_smartaltfixer_alt_source');

