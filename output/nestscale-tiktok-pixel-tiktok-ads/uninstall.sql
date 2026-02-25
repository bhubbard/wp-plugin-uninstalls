-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpns_tt_allow_nestads_api', 'wpns_tt_pwd', 'wpns_tt_consumer_key', 'wpns_tt_pixel_codes');

