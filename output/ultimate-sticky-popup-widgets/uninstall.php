<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uspaw_button_layout');
delete_site_option('uspaw_button_layout');
delete_option('uspaw_popup_active');
delete_site_option('uspaw_popup_active');
delete_option('uspaw_social_share_active');
delete_site_option('uspaw_social_share_active');
delete_option('uspaw_popup_title');
delete_site_option('uspaw_popup_title');
delete_option('uspaw_popup_color');
delete_site_option('uspaw_popup_color');
delete_option('uspaw_popup_image');
delete_site_option('uspaw_popup_image');
delete_option('uspaw_popup_right_icon_border');
delete_site_option('uspaw_popup_right_icon_border');
delete_option('uspaw_popup_header_color');
delete_site_option('uspaw_popup_header_color');
delete_option('uspaw_popup_header_border_color');
delete_site_option('uspaw_popup_header_border_color');
delete_option('uspaw_popup_place');
delete_site_option('uspaw_popup_place');
delete_option('uspaw_popup_top_margin');
delete_site_option('uspaw_popup_top_margin');
delete_option('uspaw_popup_content');
delete_site_option('uspaw_popup_content');

