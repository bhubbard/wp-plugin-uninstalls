-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_views_stats_counter_plus_dir', 'pvs_counter_schedule_check', 'pvs_counter_year_front_value', 'pvs_counter_month_front_value', 'pvs_counter_day_front_value', 'pvs_counter_year_back_value', 'pvs_counter_month_back_value', 'pvs_counter_day_back_value', 'pvs_counter_dayselect_value', 'pvs_counter_order_value', 'pvs_counter_title_value', 'pvs_counter_value_user', 'pvs_counter_value_admin', 'pvs_counter_value_reset', 'pvs_counter_value_admin_bots', 'pvs_counter_value_user_bots', 'post_views_stats_counter_plus_active', 'jal_db_version');

