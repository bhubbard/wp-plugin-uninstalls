-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('highlight_wp_options', 'highlight_wp_plugin_do_activation_redirect');

