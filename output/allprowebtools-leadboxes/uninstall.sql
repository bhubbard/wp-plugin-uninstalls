-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('APWTAPIKEY', 'APWTAPIAUTH', 'APWT_THIS_VERSION');

