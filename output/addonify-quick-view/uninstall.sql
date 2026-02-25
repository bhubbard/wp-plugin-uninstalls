-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udp_agent_allow_tracking', 'udp_agent_tracking_msg_last_shown_at', 'udp_installed_agents', 'udp_active_agent_basename');
DELETE FROM wp_options WHERE option_name LIKE '%delete_plugin_data_on_deactivation';

