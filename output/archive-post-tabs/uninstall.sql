-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('archivesposttab_license_status', 'archivesposttab_license_key', 'archivesposttab_license_reff');

