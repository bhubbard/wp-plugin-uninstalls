-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('free_writer_plugin_options', 'free_writer_activate_redirect');

