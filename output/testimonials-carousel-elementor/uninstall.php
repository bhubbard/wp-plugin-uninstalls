<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('testimonials_openai_validate');
delete_site_option('testimonials_openai_validate');
delete_option('elementor_experiment-e_swiper_latest');
delete_site_option('elementor_experiment-e_swiper_latest');
delete_option('elementor_openai_api_key');
delete_site_option('elementor_openai_api_key');

