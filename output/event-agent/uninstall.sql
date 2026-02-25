-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EVENT_AGENT_CONFIG_KEY', 'EVENT_AGENT_ADMIN_KEY', 'EVENT_AGENT_PUBLIC_KEY', 'EVENT_AGENT_URL', 'Event_Agent_Url');

