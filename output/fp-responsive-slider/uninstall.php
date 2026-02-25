<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('$maxWidth_op');
delete_site_option('$maxWidth_op');
delete_option('$speed_op');
delete_site_option('$speed_op');
delete_option('$img_width_op');
delete_site_option('$img_width_op');
delete_option('$img_height_op');
delete_site_option('$img_height_op');
delete_option('$slide_timeout_op');
delete_site_option('$slide_timeout_op');
delete_option('$fp_pager_op');
delete_site_option('$fp_pager_op');
delete_option('$slide_limit_op');
delete_site_option('$slide_limit_op');
delete_option('$control_arrow_op');
delete_site_option('$control_arrow_op');
delete_option('$hover_control_op');
delete_site_option('$hover_control_op');
delete_option('$auto_play_op');
delete_site_option('$auto_play_op');
delete_option('$random_play_op');
delete_site_option('$random_play_op');

