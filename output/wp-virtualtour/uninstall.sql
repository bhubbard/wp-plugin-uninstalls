-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_virtualtours_tours');
DELETE FROM wp_options WHERE option_name LIKE 'wp_virtualtours_tour_%';

