-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gap_options', 'googlesitekit_analytics_settings');
DELETE FROM wp_options WHERE option_name LIKE '%ga_plugin';
DELETE FROM wp_options WHERE option_name LIKE '%promotion_off';
DELETE FROM wp_options WHERE option_name LIKE '%has_todos';

