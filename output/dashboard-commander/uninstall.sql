-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dcmd_dashboard_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'dcmd_%';

