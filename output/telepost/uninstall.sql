-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('telegram_fetch_settings_option_name', 'last_tg_cron_executed');

