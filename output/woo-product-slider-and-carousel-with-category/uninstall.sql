-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcpscwc_sf_optin', 'wcpscwc_install_notice', 'espbw_plugins_data');

