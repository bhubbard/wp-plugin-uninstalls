<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_views_stats_counter_plus_dir');
delete_site_option('post_views_stats_counter_plus_dir');
delete_option('pvs_counter_schedule_check');
delete_site_option('pvs_counter_schedule_check');
delete_option('pvs_counter_year_front_value');
delete_site_option('pvs_counter_year_front_value');
delete_option('pvs_counter_month_front_value');
delete_site_option('pvs_counter_month_front_value');
delete_option('pvs_counter_day_front_value');
delete_site_option('pvs_counter_day_front_value');
delete_option('pvs_counter_year_back_value');
delete_site_option('pvs_counter_year_back_value');
delete_option('pvs_counter_month_back_value');
delete_site_option('pvs_counter_month_back_value');
delete_option('pvs_counter_day_back_value');
delete_site_option('pvs_counter_day_back_value');
delete_option('pvs_counter_dayselect_value');
delete_site_option('pvs_counter_dayselect_value');
delete_option('pvs_counter_order_value');
delete_site_option('pvs_counter_order_value');
delete_option('pvs_counter_title_value');
delete_site_option('pvs_counter_title_value');
delete_option('pvs_counter_value_user');
delete_site_option('pvs_counter_value_user');
delete_option('pvs_counter_value_admin');
delete_site_option('pvs_counter_value_admin');
delete_option('pvs_counter_value_reset');
delete_site_option('pvs_counter_value_reset');
delete_option('pvs_counter_value_admin_bots');
delete_site_option('pvs_counter_value_admin_bots');
delete_option('pvs_counter_value_user_bots');
delete_site_option('pvs_counter_value_user_bots');
delete_option('post_views_stats_counter_plus_active');
delete_site_option('post_views_stats_counter_plus_active');
delete_option('jal_db_version');
delete_site_option('jal_db_version');

