-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taptotop-primary-color', 'taptotop-border-color', ' taptotop-button-position', 'taptotop-rounded-corner', 'taptotop-button-position', 'taptotop_plugin_do_activation_redirect');

