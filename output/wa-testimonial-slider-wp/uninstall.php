<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my-watestimonialslider-rating-dismissed');
delete_site_option('my-watestimonialslider-rating-dismissed');
delete_option('watestimonialsliderwp_options');
delete_site_option('watestimonialsliderwp_options');

