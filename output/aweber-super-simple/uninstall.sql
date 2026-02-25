-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awss_version', 'awss_actions', 'awss_defaultterms', 'awss_subscribe', 'awss_registration_greeting', 'awss_formid', 'awss_unit', 'awss_adtracking', 'awss_alreadysubscribed', 'awss_showterms');

