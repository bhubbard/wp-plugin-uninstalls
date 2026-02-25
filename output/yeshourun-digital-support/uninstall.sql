-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Yeshourun_Access', 'Yeshourun_Brand', 'Yeshourun_Create');

