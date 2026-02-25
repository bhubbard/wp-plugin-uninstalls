-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zt_msg91_authtoken', 'zt_msg91_country', 'zt_msg91_sender_name', 'zt_msg91_msgtxt', 'zt_msg91_route');

