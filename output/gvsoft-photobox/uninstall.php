<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gvpb_border_color');
delete_site_option('gvpb_border_color');
delete_option('gvpb_border_width');
delete_site_option('gvpb_border_width');
delete_option('gvpb_button_color');
delete_site_option('gvpb_button_color');
delete_option('gvpb_label_color');
delete_site_option('gvpb_label_color');
delete_option('gvpb_border_radius');
delete_site_option('gvpb_border_radius');
delete_option('gvpb_delay');
delete_site_option('gvpb_delay');
delete_option('gvpb_animation');
delete_site_option('gvpb_animation');
delete_option('gvpb_speedOldImgAnim');
delete_site_option('gvpb_speedOldImgAnim');
delete_option('gvpb_speedNewImgAnim');
delete_site_option('gvpb_speedNewImgAnim');
delete_option('gvpb_OldImgAnim');
delete_site_option('gvpb_OldImgAnim');
delete_option('gvpb_NewImgAnim');
delete_site_option('gvpb_NewImgAnim');

