-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmb_clientid', 'cmb_clientsecret', 'cmb_calendarid', 'cmb_tytext', 'access_token');

