<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('websitebox_tables_back_plan');
delete_site_option('websitebox_tables_back_plan');
delete_option('websitebox_tables_back_plan_time');
delete_site_option('websitebox_tables_back_plan_time');
delete_option('websitebox_base');
delete_site_option('websitebox_base');
delete_option('websitebox_sanheyi');
delete_site_option('websitebox_sanheyi');
delete_option('websitebox_kefu');
delete_site_option('websitebox_kefu');
delete_option('websitebox_shoujikefu');
delete_site_option('websitebox_shoujikefu');
delete_option('websitebox_liuyan');
delete_site_option('websitebox_liuyan');
delete_option('websitebox_sitebg');
delete_site_option('websitebox_sitebg');
delete_option('websitebox_alert');
delete_site_option('websitebox_alert');
delete_option('websitebox_scroll');
delete_site_option('websitebox_scroll');
delete_option('websitebox_guanggao');
delete_site_option('websitebox_guanggao');
delete_option('websitebox_picload');
delete_site_option('websitebox_picload');
delete_option('websitebox_shubiaotexiao');
delete_site_option('websitebox_shubiaotexiao');
delete_option('websitebox_youhua');
delete_site_option('websitebox_youhua');
delete_option('websitebox_tongji');
delete_site_option('websitebox_tongji');
delete_option('websitebox_is_mianze');
delete_site_option('websitebox_is_mianze');
delete_option('websitebox_shuiyin');
delete_site_option('websitebox_shuiyin');
delete_option('websitebox_log');
delete_site_option('websitebox_log');
delete_option('websitebox_level');
delete_site_option('websitebox_level');

// Clear Cron Jobs
wp_clear_scheduled_hook('websitebox_cronhook1');
wp_clear_scheduled_hook('websitebox_cronhook');

