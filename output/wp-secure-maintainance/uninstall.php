<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-secure-settings_options');
delete_site_option('wp-secure-settings_options');
delete_option('wpsp-background-color');
delete_site_option('wpsp-background-color');
delete_option('wpsp-background-image');
delete_site_option('wpsp-background-image');
delete_option('_background_image');
delete_site_option('_background_image');
delete_option('_pin');
delete_site_option('_pin');
delete_option('_crb_background');
delete_site_option('_crb_background');
delete_option('wpsp-logo');
delete_site_option('wpsp-logo');
delete_option('_logo_image');
delete_site_option('_logo_image');
delete_option('_logo_width');
delete_site_option('_logo_width');
delete_option('_logo_height');
delete_site_option('_logo_height');
delete_option('_pin_placeholder');
delete_site_option('_pin_placeholder');
delete_option('_submit_label');
delete_site_option('_submit_label');
delete_option('_try_again_error');
delete_site_option('_try_again_error');
delete_option('_description');
delete_site_option('_description');
delete_option('_title_field');
delete_site_option('_title_field');
delete_option('_enable');
delete_site_option('_enable');

