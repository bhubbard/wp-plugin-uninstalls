-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('miusettings', 'miu_return_value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_attachment_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_attachment_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_attachment_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_attachment_ids');

