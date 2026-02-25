-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vasp_superuser_id', 'vasp_options', 'vasp_events_table_dimensions', 'vasp_cron_timezone', 'vasp_canonical_dimensions', 'vasp_articles_imported', 'vasp_db_version', 'vasp_last_cron_run', 'vasp_last_cron_error', 'vasp_last_cron_error_message', 'vasp_cron_rescheduled_to_4am', 'valserv_cron_fix_notice_shown', 'valserv_clearance_fix_notice_shown', 'valserv_options', 'sp_post_totals', 'vasp_daily_integrity_check', 'vasp_file_tampering_alert', 'vasp_last_save_time', 'vasp_cron_last_init', 'vasp_cron_running', 'vasp_manual_cron_running', 'vasp_ajax_cron_trigger', 'vasp_menu_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vasp_views', '_vasp_sessions', 'vasp_cron_timezone', 'vasp_clearance_level', 'wp_capabilities', 'vasp_access', 'vasp_last_privilege_change', 'vasp_clearance_integrity');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vasp_views', '_vasp_sessions', 'vasp_cron_timezone', 'vasp_clearance_level', 'wp_capabilities', 'vasp_access', 'vasp_last_privilege_change', 'vasp_clearance_integrity');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vasp_views', '_vasp_sessions', 'vasp_cron_timezone', 'vasp_clearance_level', 'wp_capabilities', 'vasp_access', 'vasp_last_privilege_change', 'vasp_clearance_integrity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vasp_views', '_vasp_sessions', 'vasp_cron_timezone', 'vasp_clearance_level', 'wp_capabilities', 'vasp_access', 'vasp_last_privilege_change', 'vasp_clearance_integrity');

