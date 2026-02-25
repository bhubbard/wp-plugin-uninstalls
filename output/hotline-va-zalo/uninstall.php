<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zalo_number_settings_input_field');
delete_site_option('zalo_number_settings_input_field');
delete_option('zalo_text_settings_input_field');
delete_site_option('zalo_text_settings_input_field');
delete_option('hotline_number_settings_input_field');
delete_site_option('hotline_number_settings_input_field');
delete_option('hotline_text_settings_input_field');
delete_site_option('hotline_text_settings_input_field');

