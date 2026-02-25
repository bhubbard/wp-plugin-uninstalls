-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('detail_images', '_location', '_wp_page_template', '_attachments');
DELETE FROM wp_usermeta WHERE meta_key IN ('detail_images', '_location', '_wp_page_template', '_attachments');
DELETE FROM wp_termmeta WHERE meta_key IN ('detail_images', '_location', '_wp_page_template', '_attachments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('detail_images', '_location', '_wp_page_template', '_attachments');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'lv_listing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'lv_listing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'lv_listing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lv_listing_%';

