-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdxglobal_options', 'nohackme_defender_options', 'nohackme_defender_license');

