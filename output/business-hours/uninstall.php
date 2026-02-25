<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('biz_hours_day_id');
delete_site_option('biz_hours_day_id');
delete_option('biz_hours_hour_id');
delete_site_option('biz_hours_hour_id');
delete_option('biz_hours_range');
delete_site_option('biz_hours_range');
delete_option('biz_hours_range_hours');
delete_site_option('biz_hours_range_hours');
delete_option('biz_hours_saturday');
delete_site_option('biz_hours_saturday');
delete_option('biz_hours_sunday');
delete_site_option('biz_hours_sunday');
delete_option('biz_hours_monday');
delete_site_option('biz_hours_monday');
delete_option('biz_hours_tuesday');
delete_site_option('biz_hours_tuesday');
delete_option('biz_hours_wednesday');
delete_site_option('biz_hours_wednesday');
delete_option('biz_hours_thursday');
delete_site_option('biz_hours_thursday');
delete_option('biz_hours_friday');
delete_site_option('biz_hours_friday');

