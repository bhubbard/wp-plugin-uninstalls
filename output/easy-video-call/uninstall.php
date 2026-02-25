<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evc_app_id');
delete_site_option('evc_app_id');
delete_option('evc_button_text');
delete_site_option('evc_button_text');
delete_option('evc_app_certificate');
delete_site_option('evc_app_certificate');
delete_option('evc_video_wrapper_bg_color');
delete_site_option('evc_video_wrapper_bg_color');
delete_option('evc_button_bg_color');
delete_site_option('evc_button_bg_color');
delete_option('evc_button_text_color');
delete_site_option('evc_button_text_color');
delete_option('evc_mik_camera_bg_color');
delete_site_option('evc_mik_camera_bg_color');
delete_option('evc_mik_camera_text_color');
delete_site_option('evc_mik_camera_text_color');
delete_option('evc_leave_call_bg_color');
delete_site_option('evc_leave_call_bg_color');
delete_option('evc_leave_call_text_color');
delete_site_option('evc_leave_call_text_color');

