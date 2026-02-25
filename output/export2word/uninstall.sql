-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('e2w_version', 'e2w_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('e2w_doc_save_export', 'e2w_doc_tree_properties', 'e2w_tmpl_content', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('e2w_doc_save_export', 'e2w_doc_tree_properties', 'e2w_tmpl_content', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('e2w_doc_save_export', 'e2w_doc_tree_properties', 'e2w_tmpl_content', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('e2w_doc_save_export', 'e2w_doc_tree_properties', 'e2w_tmpl_content', '_wp_page_template');

