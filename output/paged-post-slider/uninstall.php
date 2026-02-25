<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pps_scroll_up');
delete_site_option('pps_scroll_up');
delete_option('pps_style_sheet');
delete_site_option('pps_style_sheet');
delete_option('pps_show_all_link');
delete_site_option('pps_show_all_link');
delete_option('pps_nav_position');
delete_site_option('pps_nav_position');
delete_option('pps_loop_slides');
delete_site_option('pps_loop_slides');
delete_option('pps_count_position');
delete_site_option('pps_count_position');

