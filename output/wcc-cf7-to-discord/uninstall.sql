-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccc_cf7_discord_ignore_spam_entry', 'cf7_db_version', 'wccc_cf7_discord_notification_send_to  ', 'wccc_cf7_discord_notification_subject', 'wccc_cf7_discord_debug', 'wccc_cf7_discord_notification_send_to	', 'wccc_cf7_discord_uninstall', 'wccc_cf7_discord_db_version');

