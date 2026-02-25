-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai12z_control_version', 'ai12z_version', 'ai12z_api_key', 'ai12z_connector_id', 'ai12z_project_id');

