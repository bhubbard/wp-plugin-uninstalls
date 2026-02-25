-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wepay_mode', 'wepay_accountID', 'wepay_clientID', 'wepay_clientsecret', 'wepay_accesstoken', 'wepay_thankqpage');

