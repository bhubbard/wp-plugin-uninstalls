-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7m_rebrand_seen', 'cf7m_onboarding_completed', 'cf7m_onboarding_skipped', 'cf7m_features', 'cf7m_install_date', 'divi_cf7_styler_install_date', 'cf7m_current_version', 'cf7m_webhook_urls', 'cf7m_onboarding_step', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'cf7m_run_onboarding_%';

