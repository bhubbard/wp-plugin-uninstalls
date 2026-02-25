<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nicen_make_plugin_save_result');
delete_site_option('nicen_make_plugin_save_result');
delete_option('nicen_last_auto_publish');
delete_site_option('nicen_last_auto_publish');
delete_option('nicen_last_batch');
delete_site_option('nicen_last_batch');
delete_option('nicen_make_publish_date_start');
delete_site_option('nicen_make_publish_date_start');
delete_option('nicen_make_publish_date_end');
delete_site_option('nicen_make_publish_date_end');
delete_option('nicen_make_publish_time_start');
delete_site_option('nicen_make_publish_time_start');
delete_option('nicen_make_publish_time_end');
delete_site_option('nicen_make_publish_time_end');
delete_option('nicen_make_plugin_interval');
delete_site_option('nicen_make_plugin_interval');
delete_option('nicen_make_plugin_order');
delete_site_option('nicen_make_plugin_order');
delete_option('nicen_make_plugin_publish_local');
delete_site_option('nicen_make_plugin_publish_local');
delete_option('nicen_make_publish_date');
delete_site_option('nicen_make_publish_date');
delete_option('nicen_make_plugin_publish_num');
delete_site_option('nicen_make_plugin_publish_num');
delete_option('nicen_make_publish_type');
delete_site_option('nicen_make_publish_type');
delete_option('nicen_make_plugin_auto_publish');
delete_site_option('nicen_make_plugin_auto_publish');
delete_option('nicen_make_publish_white');
delete_site_option('nicen_make_publish_white');
delete_option('nicen_make_plugin_record_log');
delete_site_option('nicen_make_plugin_record_log');
delete_option('nicen_make_plugin_adjust');
delete_site_option('nicen_make_plugin_adjust');
delete_option('nicen_make_plugin_private');
delete_site_option('nicen_make_plugin_private');
delete_option('nicen_plugin_error_log');
delete_site_option('nicen_plugin_error_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('nicen_plugin_auto_publish');

