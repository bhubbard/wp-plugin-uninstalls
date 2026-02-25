<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pppiboi_enable_plugin');
delete_site_option('pppiboi_enable_plugin');
delete_option('pppiboi_show_on_devices');
delete_site_option('pppiboi_show_on_devices');
delete_option('pppiboi_button_design');
delete_site_option('pppiboi_button_design');
delete_option('pppiboi_button_position');
delete_site_option('pppiboi_button_position');
delete_option('pppiboi_button_size');
delete_site_option('pppiboi_button_size');
delete_option('pppiboi_button_type');
delete_site_option('pppiboi_button_type');
delete_option('pppiboi_show_in_locations');
delete_site_option('pppiboi_show_in_locations');
delete_option('pppiboi_exclude_urls');
delete_site_option('pppiboi_exclude_urls');
delete_option('pppiboi_exclude_mode');
delete_site_option('pppiboi_exclude_mode');

