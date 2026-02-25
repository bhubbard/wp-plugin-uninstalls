-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alcwp-custom-bg-image', 'alcwp-logo-image-url', 'login-button-gradient', 'alcwp_plugin_do_activation_redirect');

