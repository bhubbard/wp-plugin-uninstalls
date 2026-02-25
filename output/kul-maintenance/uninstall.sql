-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kul_maintenance_options', 'kul_maintenance_slider_status', 'kul_maintenance_status');

