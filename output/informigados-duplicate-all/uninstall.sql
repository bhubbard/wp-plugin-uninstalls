-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('informigados_duplicate_all_options', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('informigados_duplicate_all_debug_log', 'informigados_duplicate_all_admin_notice', '_elementor_edit_mode', '_elementor_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('informigados_duplicate_all_debug_log', 'informigados_duplicate_all_admin_notice', '_elementor_edit_mode', '_elementor_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('informigados_duplicate_all_debug_log', 'informigados_duplicate_all_admin_notice', '_elementor_edit_mode', '_elementor_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('informigados_duplicate_all_debug_log', 'informigados_duplicate_all_admin_notice', '_elementor_edit_mode', '_elementor_version');

