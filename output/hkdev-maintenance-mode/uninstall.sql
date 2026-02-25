-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkdev_maintenance_mode_version', 'hkdev_mm');

