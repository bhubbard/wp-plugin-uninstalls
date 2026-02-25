-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NDTAN_MAINTENANCE_options', 'ndt_maintenance_options', 'ndt_maintenance_themes');

