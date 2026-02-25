-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('octoprint_url', 'octoprint_api_key', 'octoprint_widget_text');
DELETE FROM wp_options WHERE option_name LIKE '%delete_settings';

