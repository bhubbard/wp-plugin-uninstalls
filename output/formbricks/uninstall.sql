-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formbricks_environment_id', 'formbricks_api_host', 'formbricks_global_toggle');

