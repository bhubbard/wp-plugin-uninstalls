-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfrs_review_status', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'gfrs_upgrade_notice', 'gfrs_offer_notice_arrived', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

