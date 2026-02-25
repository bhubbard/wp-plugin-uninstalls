-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('refiner_project_id', 'refiner_identify_users', 'refiner_version');

