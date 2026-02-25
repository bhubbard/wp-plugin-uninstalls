-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpd_settings', 'bulkde_settings', 'bpd_db_version', 'bulkde_db_version');

