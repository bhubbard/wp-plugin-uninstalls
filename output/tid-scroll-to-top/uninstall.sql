-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tid-primary-color', 'tid-button-position', 'tid-rounded-corner', 'tid_plugin_do_activation_redirect');

