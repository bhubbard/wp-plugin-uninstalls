-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('staempfli_crowd_login_option_name', 'staempfli_crowd_login_test_option_name', 'staempfli_crowd_login_mode', 'staempfli_crowd_login_securitymode', 'staempfli_crowd_account_type', 'staempfli_crowd_url', 'staempfli_crowd_application_name', 'staempfli_crowd_application_password', 'staempfli_crowd_group', 'staempfli_crowd_test_username', 'staempfli_crowd_test_password');

