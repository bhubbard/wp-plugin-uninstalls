-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintenance_meta', 'maintenance_options', 'mtnc_db_version');

