-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('headspace_options', 'plugin_slugs');
DELETE FROM wp_options WHERE option_name LIKE 'headspace_%';

