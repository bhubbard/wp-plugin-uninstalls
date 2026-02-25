-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('engagebay_lp_builder_domain', 'engagebay_lp_builder_rest_api', 'engagebay_lp_builder_email', 'engagebay_lp_builder_password');

