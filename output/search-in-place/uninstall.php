<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('search_in_place_own_only');
delete_site_option('search_in_place_own_only');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CPSPAutocomplete');
delete_site_option('CPSPAutocomplete');
delete_option('search_in_place_number_of_posts');
delete_site_option('search_in_place_number_of_posts');
delete_option('search_in_place_more_results_text');
delete_site_option('search_in_place_more_results_text');
delete_option('search_in_place_minimum_char_number');
delete_site_option('search_in_place_minimum_char_number');
delete_option('search_in_place_summary_char_number');
delete_site_option('search_in_place_summary_char_number');
delete_option('search_in_place_connection_operator');
delete_site_option('search_in_place_connection_operator');
delete_option('search_in_place_highlight_resulting_page');
delete_site_option('search_in_place_highlight_resulting_page');
delete_option('search_in_place_highlight_colors');
delete_site_option('search_in_place_highlight_colors');
delete_option('search_in_place_selectors');
delete_site_option('search_in_place_selectors');
delete_option('search_in_place_initial_search_box_design');
delete_site_option('search_in_place_initial_search_box_design');
delete_option('search_in_place_display_author');
delete_site_option('search_in_place_display_author');
delete_option('search_in_place_display_thumbnail');
delete_site_option('search_in_place_display_thumbnail');
delete_option('search_in_place_display_summary');
delete_site_option('search_in_place_display_summary');
delete_option('search_in_place_display_date');
delete_site_option('search_in_place_display_date');
delete_option('search_in_place_date_format');
delete_site_option('search_in_place_date_format');
delete_option('search_in_place_box_background_color');
delete_site_option('search_in_place_box_background_color');
delete_option('search_in_place_box_border_color');
delete_site_option('search_in_place_box_border_color');
delete_option('search_in_place_label_text_color');
delete_site_option('search_in_place_label_text_color');
delete_option('search_in_place_label_text_shadow');
delete_site_option('search_in_place_label_text_shadow');
delete_option('search_in_place_label_background_start_color');
delete_site_option('search_in_place_label_background_start_color');
delete_option('search_in_place_label_background_end_color');
delete_site_option('search_in_place_label_background_end_color');
delete_option('search_in_place_active_item_background_color');
delete_site_option('search_in_place_active_item_background_color');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

