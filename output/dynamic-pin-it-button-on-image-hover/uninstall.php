<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwl_pin_it_button_settings');
delete_site_option('dwl_pin_it_button_settings');
delete_option('dwl_pin_it_activation_time');
delete_site_option('dwl_pin_it_activation_time');
delete_option('dwl_pin_it_version');
delete_site_option('dwl_pin_it_version');

