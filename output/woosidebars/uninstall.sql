-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_condition', '_sidebar_to_replace', 'admin_color', '_enable_sidebar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_condition', '_sidebar_to_replace', 'admin_color', '_enable_sidebar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_condition', '_sidebar_to_replace', 'admin_color', '_enable_sidebar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_condition', '_sidebar_to_replace', 'admin_color', '_enable_sidebar');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

