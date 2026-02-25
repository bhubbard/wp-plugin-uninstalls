-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dw_twitteruser', 'dw_consumerkey', 'dw_consumersecret', 'dw_accesstoken', 'dw_accesstokensecret');

