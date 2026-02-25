-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('analytics-integrator-google-analytics-id', 'analytics-integrator-fullstory-id', 'analytics-integrator-hotjar-id', 'analytics-integrator-mouseflow-id', 'analytics-integrator-smartlook-id');

