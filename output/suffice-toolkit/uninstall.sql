-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suffice_toolkit_admin_notices', 'suffice_toolkit_db_version', 'suffice_toolkit_permalinks', 'suffice_toolkit_admin_footer_text_rated', 'suffice_toolkit_version', 'suffice_toolkit_custom_sidebars', 'st_installing', '_suffice_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'suffice_toolkit_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('layout_type', 'layout_desc', '_example_cb');
DELETE FROM wp_usermeta WHERE meta_key IN ('layout_type', 'layout_desc', '_example_cb');
DELETE FROM wp_termmeta WHERE meta_key IN ('layout_type', 'layout_desc', '_example_cb');
DELETE FROM wp_commentmeta WHERE meta_key IN ('layout_type', 'layout_desc', '_example_cb');

