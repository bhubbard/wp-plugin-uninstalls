-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modula_importer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('foogallery_attachments', '_foogallery_settings', 'foogallery_template', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', 'modula-settings', 'modula-images');
DELETE FROM wp_usermeta WHERE meta_key IN ('foogallery_attachments', '_foogallery_settings', 'foogallery_template', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', 'modula-settings', 'modula-images');
DELETE FROM wp_termmeta WHERE meta_key IN ('foogallery_attachments', '_foogallery_settings', 'foogallery_template', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', 'modula-settings', 'modula-images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('foogallery_attachments', '_foogallery_settings', 'foogallery_template', '_wp_attachment_image_alt', '_foogallery_custom_url', '_foogallery_custom_target', 'modula-settings', 'modula-images');

