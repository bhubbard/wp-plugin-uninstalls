<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquidizer_lite_wp_form');
delete_site_option('liquidizer_lite_wp_form');
delete_option('liquidizer_lite_wp_which_form_element');
delete_site_option('liquidizer_lite_wp_which_form_element');
delete_option('liquidizer_lite_wp_form_width');
delete_site_option('liquidizer_lite_wp_form_width');

