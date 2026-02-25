-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'attachments_migrated', 'attachments_ignore_migration', 'attachments_settings', 'attachments_pro_migrated', 'attachments_pro_ignore_migration', '_iti_apro_settings', 'attachments_pro_functions', 'attachments_pro_template', 'attachments_pro_functions ', 'attachments_pro_template ', 'attachments_store_native');
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE 'attachments_cpt_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_attachments', 'attachments', '_attachments_pro', '_wp_attachment_image_alt', 'rich_editing');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_attachments', 'attachments', '_attachments_pro', '_wp_attachment_image_alt', 'rich_editing');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_attachments', 'attachments', '_attachments_pro', '_wp_attachment_image_alt', 'rich_editing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_attachments', 'attachments', '_attachments_pro', '_wp_attachment_image_alt', 'rich_editing');

