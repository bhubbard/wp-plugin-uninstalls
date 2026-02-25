-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_top_and_active_vjck_cache_date', 'widget_top_and_active_vjck_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_vjck';

