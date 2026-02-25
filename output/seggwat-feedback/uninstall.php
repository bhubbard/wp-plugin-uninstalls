<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seggwat_project_key');
delete_site_option('seggwat_project_key');
delete_option('seggwat_button_color');
delete_site_option('seggwat_button_color');
delete_option('seggwat_button_position');
delete_site_option('seggwat_button_position');
delete_option('seggwat_default_behavior');
delete_site_option('seggwat_default_behavior');
delete_option('seggwat_language');
delete_site_option('seggwat_language');
delete_option('seggwat_show_powered_by');
delete_site_option('seggwat_show_powered_by');

