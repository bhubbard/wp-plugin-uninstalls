-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwlp-primary-color', 'cwlp-secondary-color', 'cwlp-login-logo', 'login-background-image', 'cwlp-logo-brightness', 'cwlp_plugin_do_activation_redirect');

