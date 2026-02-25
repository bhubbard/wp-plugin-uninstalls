<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slope_options');
delete_site_option('slope_options');
delete_option('slope_global_settings');
delete_site_option('slope_global_settings');
delete_option('slope_promo');
delete_site_option('slope_promo');
delete_option('slope_promotions_options');
delete_site_option('slope_promotions_options');

