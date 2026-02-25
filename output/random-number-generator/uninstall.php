<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('random_number_generator_shortcode');
delete_site_option('random_number_generator_shortcode');
delete_option('random_number_generator_parent_menu');
delete_site_option('random_number_generator_parent_menu');
delete_option('random_number_generator_from');
delete_site_option('random_number_generator_from');
delete_option('random_number_generator_to');
delete_site_option('random_number_generator_to');
delete_option('random_number_generator_format');
delete_site_option('random_number_generator_format');

