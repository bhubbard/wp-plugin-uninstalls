-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_defaults_inserting', 'media_defaults_galleries', 'media_defaults_plugin_version', 'media_defaults_activated');

