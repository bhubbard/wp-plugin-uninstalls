-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myhome_version', 'myhome_guid', 'plugin_error');

