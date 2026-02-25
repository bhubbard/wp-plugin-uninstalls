-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_siga4w_setting', 'widget_siga4w_widget', 'siga4w_get_today_cache', 'siga4w_get_all_cache', 'sig4w_charts_month', 'sig4w_charts_year', 'sig4w_hot_posts_today', 'sig4w_hot_posts_week');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

