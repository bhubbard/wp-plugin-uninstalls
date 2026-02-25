-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slcp_auto_open', 'slcp_phone', 'slcp_agent', 'slcp_avatar', 'slcp_color', 'slcp_agents_list');

