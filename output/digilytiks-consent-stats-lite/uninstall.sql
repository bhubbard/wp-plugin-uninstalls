-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dglytks_cs_version', 'dglytks_cs_settings', 'dglytks_cs_license_key');

