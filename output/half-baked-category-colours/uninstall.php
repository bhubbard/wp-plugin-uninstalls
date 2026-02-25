<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pg_cat_colors_enable_pills');
delete_site_option('pg_cat_colors_enable_pills');
delete_option('pg_cat_colors_enable_tint');
delete_site_option('pg_cat_colors_enable_tint');
delete_option('pg_cat_colors_enable_underline');
delete_site_option('pg_cat_colors_enable_underline');
delete_option('pg_cat_colors_default_color');
delete_site_option('pg_cat_colors_default_color');
delete_option('pg_cat_colors_pill_gap');
delete_site_option('pg_cat_colors_pill_gap');
delete_option('pg_cat_colors_border_thickness');
delete_site_option('pg_cat_colors_border_thickness');
delete_option('pg_cat_colors_pill_shape');
delete_site_option('pg_cat_colors_pill_shape');
delete_option('pg_cat_colors_case_storage');
delete_site_option('pg_cat_colors_case_storage');
delete_option('pg_cat_colors_case_auto');
delete_site_option('pg_cat_colors_case_auto');
delete_option('pg_cat_colors_case_display');
delete_site_option('pg_cat_colors_case_display');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pg_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pg_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pg_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pg_category_color' ) );

