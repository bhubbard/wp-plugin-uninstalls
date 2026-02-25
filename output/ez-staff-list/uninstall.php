<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('staff_mgt_staff');
delete_site_option('staff_mgt_staff');
delete_option('staff_mgt_order_by');
delete_site_option('staff_mgt_order_by');
delete_option('staff_mgt_order_by_direction');
delete_site_option('staff_mgt_order_by_direction');
delete_option('staff_mgt_display_columns');
delete_site_option('staff_mgt_display_columns');
delete_option('staff_mgt_background_color');
delete_site_option('staff_mgt_background_color');
delete_option('staff_mgt_border_color');
delete_site_option('staff_mgt_border_color');
delete_option('staff_mgt_font_color');
delete_site_option('staff_mgt_font_color');

