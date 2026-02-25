-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrstar_show_today', 'mrstar_show_yesterday', 'mrstar_show_last_7_days', 'mrstar_show_last_30_days', 'mrstar_show_this_month', 'mrstar_show_this_year', 'mrstar_show_total');
DELETE FROM wp_options WHERE option_name LIKE 'mrstar_show_%';

