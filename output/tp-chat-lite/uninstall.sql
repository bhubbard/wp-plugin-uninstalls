-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpcl_phone_option', 'tpcl_support_option', 'tpcl_plugin_do_activation_redirect', 'tpcl_installed');

