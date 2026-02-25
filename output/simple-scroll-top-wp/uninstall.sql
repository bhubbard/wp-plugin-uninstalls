-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sstt-primary-color', 'sstt-image-position', 'sstt-round-corner', 'sstt_plugin_do_activation_redirect');

