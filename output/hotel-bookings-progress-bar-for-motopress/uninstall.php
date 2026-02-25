<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mphbpb_step_1');
delete_site_option('mphbpb_step_1');
delete_option('mphbpb_step_2');
delete_site_option('mphbpb_step_2');
delete_option('mphbpb_step_3');
delete_site_option('mphbpb_step_3');
delete_option('mphbpb_greyed_out');
delete_site_option('mphbpb_greyed_out');
delete_option('mphbpb_active');
delete_site_option('mphbpb_active');
delete_option('mphbpb_show_submitted');
delete_site_option('mphbpb_show_submitted');
delete_option('mphb_search_results_page');
delete_site_option('mphb_search_results_page');
delete_option('mphb_checkout_page');
delete_site_option('mphb_checkout_page');
delete_option('mphb_booking_confirmation_page');
delete_site_option('mphb_booking_confirmation_page');

