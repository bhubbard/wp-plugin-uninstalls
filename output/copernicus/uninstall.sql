-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'cp_css_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_js_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_term_meta_%';
DELETE FROM wp_options WHERE option_name LIKE 'cp_translation_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cp_template', 'first_name', 'last_name', 'meta_title', 'post_title', 'meta_description', '_cp_thumbnails', 'language', '_wp_attachment_image_alt', 'alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cp_template', 'first_name', 'last_name', 'meta_title', 'post_title', 'meta_description', '_cp_thumbnails', 'language', '_wp_attachment_image_alt', 'alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cp_template', 'first_name', 'last_name', 'meta_title', 'post_title', 'meta_description', '_cp_thumbnails', 'language', '_wp_attachment_image_alt', 'alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cp_template', 'first_name', 'last_name', 'meta_title', 'post_title', 'meta_description', '_cp_thumbnails', 'language', '_wp_attachment_image_alt', 'alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_title%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_title%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_title%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_title%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'post_title%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'post_title%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'post_title%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'post_title%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_description%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_description%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_description%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_description%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'content%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'content%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'content%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'content%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';

