-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agent_ai_bot_protect_db_version', 'agent_ai_bot_protect_robots_txt', 'agent_ai_bot_protect_blocking_enabled', 'agent_ai_bot_protect_robots_txt_url');

