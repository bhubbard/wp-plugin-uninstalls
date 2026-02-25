-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apex_folders_needs_migration', 'apex_folders_show_debug_tools', 'apex_folders_remove_all_data', 'apex_folder_counts');
DELETE FROM wp_options WHERE option_name LIKE 'apex_folder_for_%';

