<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custlode_logo');
delete_site_option('custlode_logo');
delete_option('custlode_form_background_color');
delete_site_option('custlode_form_background_color');
delete_option('custlode_background_color');
delete_site_option('custlode_background_color');
delete_option('custlode_input_style');
delete_site_option('custlode_input_style');
delete_option('custlode_heading_color');
delete_site_option('custlode_heading_color');
delete_option('custlode_label_color');
delete_site_option('custlode_label_color');
delete_option('custlode_link_color');
delete_site_option('custlode_link_color');

