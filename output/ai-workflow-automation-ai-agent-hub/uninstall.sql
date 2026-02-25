-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awfah_rbac_initialized', 'wp_ai_client_provider_credentials');
DELETE FROM wp_options WHERE option_name LIKE 'ai_agent_hub_oauth_state_%';

