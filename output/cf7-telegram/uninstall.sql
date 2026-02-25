-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7_telegram_chats', 'wpcf7_telegram_pre_releases', 'wpcf7_telegram_tkn', 'wpcf7_telegram_last_update_id', 'cf7tg_version');
DELETE FROM wp_options WHERE option_name LIKE 'cf7tg_migration_%';

