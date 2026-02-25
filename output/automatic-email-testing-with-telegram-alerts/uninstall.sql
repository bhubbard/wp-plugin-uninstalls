-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aetwtaha4cca_email_address', 'aetwtaha4cca_telegram_bot_id', 'aetwtaha4cca_telegram_chat_id', 'aetwtaha4cca_start_time', 'aetwtaha4cca_email_scheduler_activated');

