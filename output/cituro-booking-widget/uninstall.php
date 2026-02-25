<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cituro_account_number');
delete_site_option('cituro_account_number');
delete_option('cituro_preset_service');
delete_site_option('cituro_preset_service');
delete_option('cituro_preset_category');
delete_site_option('cituro_preset_category');
delete_option('cituro_preset_resource');
delete_site_option('cituro_preset_resource');
delete_option('cituro_preset_location');
delete_site_option('cituro_preset_location');
delete_option('cituro_enable_custom_script');
delete_site_option('cituro_enable_custom_script');
delete_option('cituro_custom_script');
delete_site_option('cituro_custom_script');
delete_option('cituro_booking_widget_opened');
delete_site_option('cituro_booking_widget_opened');

