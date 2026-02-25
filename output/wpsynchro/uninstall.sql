-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsynchro_healthcheck_timestamp', 'wpsynchro_dbversion', 'wpsynchro_filepopulation_current', 'wpsynchro_filepopulation_current_download_id', 'wpsynchro_filepopulation_problems', 'wpsynchro_success_count', 'wpsynchro_sync_logs', 'wpsynchro_migrations', 'wpsynchro_dismiss_review_request', 'wpsynchro_accesskey', 'wpsynchro_license_key', 'wpsynchro_migration_last_run_timestamp', 'wpsynchro_usage_reporting_selection', 'wpsynchro_setup_basic_auth', 'wpsynchro_slow_hosting_optimize', 'wpsynchro_muplugin_enabled', 'wpsynchro_allowed_methods', 'wpsynchro_ip_security_enabled', 'wpsynchro_debuglogging_enabled');

