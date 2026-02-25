<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yotpo_settings');
delete_site_option('yotpo_settings');
delete_option('wc_yotpo_just_installed');
delete_site_option('wc_yotpo_just_installed');
delete_option('woocommerce_enable_review_rating');
delete_site_option('woocommerce_enable_review_rating');
delete_option('native_star_ratings_enabled');
delete_site_option('native_star_ratings_enabled');

