-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xlanguage_options', 'plugin_urbangiraffe_rss');
DELETE FROM wp_options WHERE option_name LIKE 'widget_available_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_config_%';

