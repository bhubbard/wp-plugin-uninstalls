-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmcc_post_types', 'wmcc_user_roles', 'wmcc_blogs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_lock', '_edit_last', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_lock', '_edit_last', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_lock', '_edit_last', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_lock', '_edit_last', '_thumbnail_id', '_wp_attachment_image_alt', '_wp_page_template');

