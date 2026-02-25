-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genesis-cpt-archive-settings-portfolio');
DELETE FROM wp_options WHERE option_name LIKE '%portfolio';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'layout');

