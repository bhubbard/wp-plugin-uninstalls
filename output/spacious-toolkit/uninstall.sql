-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spacious_toolkit_admin_notices', 'spacious_toolkit_db_version', 'spacious_toolkit_admin_footer_text_rated', 'spacious_toolkit_version', 'spt_installing', '_spacious_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'spacious_toolkit_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode');

