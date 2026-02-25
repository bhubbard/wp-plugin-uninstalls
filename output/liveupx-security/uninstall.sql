-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xsec_settings', 'xsec_activated', 'xsec_db_version');

