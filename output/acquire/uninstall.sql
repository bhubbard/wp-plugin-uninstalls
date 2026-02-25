-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acquire_plugin_status', 'acquire_wp_live_chat_widget', 'acquire_user_account_ID');

