-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cross_service_solutions_show_provider', 'cross_service_solutions_all_activate_plugins', 'cross_service_solutions_api_key');

