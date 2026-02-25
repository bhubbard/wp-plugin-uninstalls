-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfa_sh_do_redirect', 'wpfa_cron_token', 'wpfa_block_user_enumeration', 'wpfa_block_new_admins', 'wpfa_disable_xmlrpc', 'wpfa_limit_login_attempts', 'wpfa_admin_bar_lock_status_display', 'wpfa_never_lock_content', 'wpfa_site_lock_auto_enable', 'wpfa_cached_state_last_built', 'wpfa_never_lock_plugins', 'wpfa_never_lock_root', 'folder_auditor_ignored', 'wpfa_scan_settings', 'fa_ignore_list', 'wpfa_report_settings', 'wpfa_never_lock_uploads', 'wpfa_settings', 'wpfa_ignored_db_items', 'wpfa_disable_all_user_creation', 'active_sitewide_plugins', 'wpfa_sh_options', 'wpfa_block_email_login', 'wpfa_last_scan_result', 'wpfa_last_report_result');
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';

