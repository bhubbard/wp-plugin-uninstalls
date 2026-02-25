<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcdp_sponsor_link');
delete_site_option('fcdp_sponsor_link');
delete_option('fcdp_form_url');
delete_site_option('fcdp_form_url');
delete_option('fcdp_xml_options');
delete_site_option('fcdp_xml_options');
delete_option('fcdp_title');
delete_site_option('fcdp_title');
delete_option('fcdp_target_date');
delete_site_option('fcdp_target_date');
delete_option('fcdp_target_time');
delete_site_option('fcdp_target_time');
delete_option('fcdp_target_timezone');
delete_site_option('fcdp_target_timezone');
delete_option('fcdp_background_color');
delete_site_option('fcdp_background_color');
delete_option('fcdp_header_color');
delete_site_option('fcdp_header_color');
delete_option('fcdp_header_txt_color');
delete_site_option('fcdp_header_txt_color');
delete_option('fcdp_panel_color');
delete_site_option('fcdp_panel_color');
delete_option('fcdp_countdown_txt_color');
delete_site_option('fcdp_countdown_txt_color');
delete_option('fcdp_panel_txt_color');
delete_site_option('fcdp_panel_txt_color');
delete_option('fcdp_image_url');
delete_site_option('fcdp_image_url');

