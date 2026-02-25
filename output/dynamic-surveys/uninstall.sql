-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynamic_surveys_activated', 'dynamic_surveys_deactivated', 'dynamic_surveys_cache');

