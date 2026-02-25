<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deixto_recommender_options');
delete_site_option('deixto_recommender_options');
delete_option('deixto_recommender_options_shortcode');
delete_site_option('deixto_recommender_options_shortcode');
delete_option('deixto_recommender_options_Shortcode');
delete_site_option('deixto_recommender_options_Shortcode');

