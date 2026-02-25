-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uwp_settings', '_uwp_recaptcha_activation_redirect');

