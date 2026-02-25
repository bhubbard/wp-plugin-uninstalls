<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cloogooq_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cloogooq_user_min_hits_key');
delete_site_option('cloogooq_user_min_hits_key');
delete_option('cloogooq_user_min_hits_phr');
delete_site_option('cloogooq_user_min_hits_phr');
delete_option('cloogooq_user_min_char');
delete_site_option('cloogooq_user_min_char');
delete_option('cloogooq_user_include_numbers');
delete_site_option('cloogooq_user_include_numbers');
delete_option('cloogooq_user_exclude_numbers');
delete_site_option('cloogooq_user_exclude_numbers');
delete_option('cloogooq_user_min_font_size');
delete_site_option('cloogooq_user_min_font_size');
delete_option('cloogooq_user_min_font_color');
delete_site_option('cloogooq_user_min_font_color');
delete_option('cloogooq_user_max_number_of_items');
delete_site_option('cloogooq_user_max_number_of_items');
delete_option('cloogooq_user_max_font_size');
delete_site_option('cloogooq_user_max_font_size');
delete_option('cloogooq_user_max_font_color');
delete_site_option('cloogooq_user_max_font_color');
delete_option('cloogooq_user_perc_line_height');
delete_site_option('cloogooq_user_perc_line_height');
delete_option('cloogooq_user_separator');
delete_site_option('cloogooq_user_separator');
delete_option('cloogooq_user_sep_space_prior');
delete_site_option('cloogooq_user_sep_space_prior');
delete_option('cloogooq_user_sep_space_after');
delete_site_option('cloogooq_user_sep_space_after');
delete_option('cloogooq_user_exclude_domain');
delete_site_option('cloogooq_user_exclude_domain');
delete_option('cloogooq_user_exclude');
delete_site_option('cloogooq_user_exclude');
delete_option('cloogooq_user_include');
delete_site_option('cloogooq_user_include');
delete_option('cloogooq_user_table_name');
delete_site_option('cloogooq_user_table_name');
delete_option('cloogooq_user_table_key');
delete_site_option('cloogooq_user_table_key');
delete_option('cloogooq_user_include_local_search');
delete_site_option('cloogooq_user_include_local_search');
delete_option('cloogooq_user_table_name_local');
delete_site_option('cloogooq_user_table_name_local');
delete_option('cloogooq_user_table_key_local');
delete_site_option('cloogooq_user_table_key_local');
delete_option('cloogooq_user_querykeys');
delete_site_option('cloogooq_user_querykeys');
delete_option('cloogooq_user_link_to');
delete_site_option('cloogooq_user_link_to');
delete_option('cloogooq_user_sort');
delete_site_option('cloogooq_user_sort');
delete_option('cloogooq_user_scaling');
delete_site_option('cloogooq_user_scaling');
delete_option('cloogooq_user_limit');
delete_site_option('cloogooq_user_limit');
delete_option('cloogooq_user_table_id');
delete_site_option('cloogooq_user_table_id');

