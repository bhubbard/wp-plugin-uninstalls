-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tnt_video_list_manager_db_version', 'tntVideoManageOptions');

