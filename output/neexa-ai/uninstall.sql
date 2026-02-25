-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neexa-ai-active-options', 'neexa_ai_access_token', 'do_neexa_ai_activation', 'neexa-ai-options', 'neexa_ai_agents_configs');

