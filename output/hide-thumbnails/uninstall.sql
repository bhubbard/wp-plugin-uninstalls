-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide-thumbnails-option', 'hide_thumbnails_plugin_do_activation_redirect');

