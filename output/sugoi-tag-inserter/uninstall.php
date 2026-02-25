<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sugotag_insert_header');
delete_site_option('sugotag_insert_header');
delete_option('sugotag_insert_footer');
delete_site_option('sugotag_insert_footer');
delete_option('sugotag_gtm_id');
delete_site_option('sugotag_gtm_id');
delete_option('sugotag_aw_id');
delete_site_option('sugotag_aw_id');
delete_option('sugotag_ga_id');
delete_site_option('sugotag_ga_id');
delete_option('sugotag_gtm_enabled');
delete_site_option('sugotag_gtm_enabled');
delete_option('sugotag_aw_enabled');
delete_site_option('sugotag_aw_enabled');
delete_option('sugotag_ga_enabled');
delete_site_option('sugotag_ga_enabled');
delete_option('sugotag_insert_hidden_header');
delete_site_option('sugotag_insert_hidden_header');
delete_option('sugotag_insert_hidden_footer');
delete_site_option('sugotag_insert_hidden_footer');
delete_option('sugotag_cross_domain_enabled');
delete_site_option('sugotag_cross_domain_enabled');
delete_option('sugotag_cross_domain_1st');
delete_site_option('sugotag_cross_domain_1st');
delete_option('sugotag_cross_domain_2nd');
delete_site_option('sugotag_cross_domain_2nd');

