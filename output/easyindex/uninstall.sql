-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EasyIndex');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easyindex', '_menu_item_object_id', 'easyindexSourceUrl', 'easyindexInvalidate', 'easyindexGenerate', '_wp_page_template', 'thesis_post_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('easyindex', '_menu_item_object_id', 'easyindexSourceUrl', 'easyindexInvalidate', 'easyindexGenerate', '_wp_page_template', 'thesis_post_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('easyindex', '_menu_item_object_id', 'easyindexSourceUrl', 'easyindexInvalidate', 'easyindexGenerate', '_wp_page_template', 'thesis_post_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easyindex', '_menu_item_object_id', 'easyindexSourceUrl', 'easyindexInvalidate', 'easyindexGenerate', '_wp_page_template', 'thesis_post_image');

