-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fttg_bot_token', 'fttg_chat_id', 'fttg_enabled', 'fttg_active');

