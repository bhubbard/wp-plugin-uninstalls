-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hclpage', 'error_msg_database_bproductiv_lite_version', 'tasks_database_bproductiv_lite_version', 'calendar_database_bproductiv_lite_version', 'user_info_database_bproductiv_lite_version', 'bproductiv_delete_data', 'bproductiv_time_zone', 'bproductiv_date_format', 'bproductiv_super_admin', 'bproductiv_default_email');

