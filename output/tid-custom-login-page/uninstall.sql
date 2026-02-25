-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tidlogin-primary-color', 'tidlogin-seconday-color', 'tidlogin-logo-image-url', 'tidlogin-custom-bg-image', 'tidlogin-custom-bg-britness', 'tidlogin_plugin_do_activation_redirect');

