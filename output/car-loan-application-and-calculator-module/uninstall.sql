-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clm_vehicles', 'clm_provinces', 'clm_emails', 'clm_clean_db', 'clm_version');

