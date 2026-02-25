-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lottiefiles_activation_redirect', 'lottie_config_admin', 'lottiefiles_options');

