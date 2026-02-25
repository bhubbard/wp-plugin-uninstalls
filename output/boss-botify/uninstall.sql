-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boss_botify_bot_type', 'boss_botify_chatbot_id', 'boss_botify_primary_color', 'boss_botify_secondary_color');

