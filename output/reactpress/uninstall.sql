-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('repr_version', 'repr_apps', 'graphql_general_settings');

