-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppssl_ssl_activated', 'wpssl_basedomain', 'wpssl_iswildcard', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpssl_current_certificate', 'wpssl_cert_expired', 'wpssl_cert_renewed', 'wpssl_no_renew_yet', 'wpssl_scheduled_autorenew', 'wpssl_autoinstall', 'wpssl_renew_ran', 'wpssl_email', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

