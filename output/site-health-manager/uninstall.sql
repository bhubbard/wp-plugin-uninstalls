-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_health_manager_disabled_tests', 'site_health_manager_disabled_info');

