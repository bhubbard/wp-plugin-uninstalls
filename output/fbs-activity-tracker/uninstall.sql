-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbsat_retention_days', 'fbsat_auto_cleanup', 'fbsat_db_version');

