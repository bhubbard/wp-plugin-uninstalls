<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('best_testimonial_options');
delete_site_option('best_testimonial_options');
delete_option('i13_default_form_options');
delete_site_option('i13_default_form_options');
delete_option('best_testimonial_slider_messages');
delete_site_option('best_testimonial_slider_messages');

