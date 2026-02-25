-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clpwp-primary-color', 'clpwp-sec-color', 'clpwp-logo-image-url', 'clpwp-custom-bg-image', 'clpwp-custom-bg-brightness', 'clpwp_plugin_do_activation_redirect');

