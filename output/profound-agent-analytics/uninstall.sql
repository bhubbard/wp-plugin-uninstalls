-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agent_analytics_settings', 'agent_analytics_site_id', 'agent_analytics_db_version', 'agent_analytics_install_time', 'agent_analytics_remove_data_on_uninstall', 'agent_analytics_preserve_data_on_uninstall', 'agent_analytics_network_settings', 'agent_analytics_sending_lock', 'agent_analytics_circuit_breaker', 'agent_analytics_last_send', 'agent_analytics_last_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('agent_analytics_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('agent_analytics_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('agent_analytics_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('agent_analytics_dismissed_notice');

