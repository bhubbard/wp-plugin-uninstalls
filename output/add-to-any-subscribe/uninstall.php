<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('A2A_SUBSCRIBE_button_opens_new_window');
delete_site_option('A2A_SUBSCRIBE_button_opens_new_window');
delete_option('A2A_SUBSCRIBE_onclick');
delete_site_option('A2A_SUBSCRIBE_onclick');
delete_option('A2A_SUBSCRIBE_button');
delete_site_option('A2A_SUBSCRIBE_button');
delete_option('A2A_SUBSCRIBE_button_custom');
delete_site_option('A2A_SUBSCRIBE_button_custom');
delete_option('A2A_SUBSCRIBE_button_text');
delete_site_option('A2A_SUBSCRIBE_button_text');
delete_option('A2A_SUBSCRIBE_widget_title');
delete_site_option('A2A_SUBSCRIBE_widget_title');
delete_option('A2A_SUBSCRIBE_additional_js_variables');
delete_site_option('A2A_SUBSCRIBE_additional_js_variables');

