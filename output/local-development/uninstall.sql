-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('local_dev_extras', 'local_development', 'local_dev_plugins', 'local_dev_themes');

