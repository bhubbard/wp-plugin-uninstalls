-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'shwcp_db_ver');
DELETE FROM wp_options WHERE option_name LIKE 'shwcp_main_settings%';
DELETE FROM wp_options WHERE option_name LIKE 'shwcp_permissions%';
DELETE FROM wp_options WHERE option_name LIKE 'shwcp_frontend_settings%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcp_db_select', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcp_db_select', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcp_db_select', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcp_db_select', '_wp_page_template');

