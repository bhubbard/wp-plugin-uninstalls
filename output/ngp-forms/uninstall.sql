-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngp_employment_info', 'ngp_api_key', 'ngp_secure_url', 'ngp_support_phone', 'ngp_thanks_url', 'ngp_footer_info', 'ngp_accept_amex', 'ngp_coo_api_key', 'ngp_campaignid', 'ngp_userid', 'ngp_signup_thanks_url', 'ngp_volunteer_thanks_url');

