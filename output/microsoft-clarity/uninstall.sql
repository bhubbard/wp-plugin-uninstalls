-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clarity_project_id', 'clarity_wordpress_site_id', 'clarity_is_latest_plugin_version', 'clarity_is_agent_enabled', 'clarity_activation_redirect', 'clarity_collect_batch');

