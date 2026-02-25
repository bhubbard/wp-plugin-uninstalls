-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uptimerobot_apikey', 'uptimerobot_show_ratio', 'uptimerobot_custom_period', 'uptimerobot_show_psp_link', 'uptimerobot_psp_url', 'uptimerobot_widget_cache');
DELETE FROM wp_options WHERE option_name LIKE 'uptimerobot_widget_cache_%';

