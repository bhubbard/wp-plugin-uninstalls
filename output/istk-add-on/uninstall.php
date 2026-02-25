<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('istk_add_on_portfolio_data_description');
delete_site_option('istk_add_on_portfolio_data_description');
delete_option('istk_add_on_portfolio_category_display_footer');
delete_site_option('istk_add_on_portfolio_category_display_footer');
delete_option('istk_add_on_portfolio_category_display_footer_in_front');
delete_site_option('istk_add_on_portfolio_category_display_footer_in_front');
delete_option('istk_add_on_portfolio_category_title');
delete_site_option('istk_add_on_portfolio_category_title');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'istk_add_on_category_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'istk_add_on_category_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'istk_add_on_category_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'istk_add_on_category_image_id' ) );

