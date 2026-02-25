<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('generateblocks_dynamic_css_time');
delete_site_option('generateblocks_dynamic_css_time');
delete_option('generateblocks_dynamic_css_posts');
delete_site_option('generateblocks_dynamic_css_posts');
delete_option('generateblocks_version');
delete_site_option('generateblocks_version');
delete_option('generateblocks');
delete_site_option('generateblocks');
delete_option('gb_use_v1_blocks');
delete_site_option('gb_use_v1_blocks');
delete_option('generate_settings');
delete_site_option('generate_settings');
delete_option('generateblocks_do_activation_redirect');
delete_site_option('generateblocks_do_activation_redirect');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('generateblocks_pattern_libraries');
delete_site_option('generateblocks_pattern_libraries');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-patterns_0' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_0', '_site_transient_%_0' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_generateblocks_dynamic_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_generateblocks_dynamic_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_generateblocks_dynamic_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_generateblocks_dynamic_css_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_generateblocks_reusable_blocks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_generateblocks_reusable_blocks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_generateblocks_reusable_blocks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_generateblocks_reusable_blocks' ) );

