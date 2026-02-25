<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdt_display_timer_enable_countdown_timer');
delete_site_option('pdt_display_timer_enable_countdown_timer');
delete_option('pdt_display_timer_set_count_timer');
delete_site_option('pdt_display_timer_set_count_timer');
delete_option('pdt_display_timer_show_visited_post_num');
delete_site_option('pdt_display_timer_show_visited_post_num');
delete_option('pdt_display_timer_check_currentPage');
delete_site_option('pdt_display_timer_check_currentPage');
delete_option('pdt_display_timer_completion_code');
delete_site_option('pdt_display_timer_completion_code');
delete_option('pdt_display_timer_start_button');
delete_site_option('pdt_display_timer_start_button');
delete_option('pdt_display_timer_view_number_post');
delete_site_option('pdt_display_timer_view_number_post');
delete_option('pdt_display_timer_random_post');
delete_site_option('pdt_display_timer_random_post');
delete_option('pdt_display_timer_post_urls');
delete_site_option('pdt_display_timer_post_urls');
delete_option('pdt_display_timer_multiple_tab');
delete_site_option('pdt_display_timer_multiple_tab');
delete_option('pdt_display_timer_delayed_timer');
delete_site_option('pdt_display_timer_delayed_timer');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_hits', '_site_transient_%_hits' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

