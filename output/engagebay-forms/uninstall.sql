-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('engagebay_domain', 'engagebay_rest_api', 'engagebay_email', 'engagebay_password');

