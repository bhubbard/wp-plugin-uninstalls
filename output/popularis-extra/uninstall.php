<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popularis_extra_active_time');
delete_site_option('popularis_extra_active_time');
delete_option('popularis_extra_review_dismiss');
delete_site_option('popularis_extra_review_dismiss');
delete_option('popularis_extra_maybe_later');
delete_site_option('popularis_extra_maybe_later');
delete_option('popularis_extra_active_pro_time');
delete_site_option('popularis_extra_active_pro_time');
delete_option('popularis_extra_active_pro_time_verse');
delete_site_option('popularis_extra_active_pro_time_verse');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('_wc_needs_pages');
delete_site_option('_wc_needs_pages');
delete_option('woocommerce_single_image_width');
delete_site_option('woocommerce_single_image_width');
delete_option('woocommerce_thumbnail_image_width');
delete_site_option('woocommerce_thumbnail_image_width');
delete_option('woocommerce_thumbnail_cropping');
delete_site_option('woocommerce_thumbnail_cropping');
delete_option('woocommerce_thumbnail_cropping_custom_width');
delete_site_option('woocommerce_thumbnail_cropping_custom_width');
delete_option('woocommerce_thumbnail_cropping_custom_height');
delete_site_option('woocommerce_thumbnail_cropping_custom_height');
delete_option('elementor_container_width');
delete_site_option('elementor_container_width');
delete_option('elementor_experiment-container');
delete_site_option('elementor_experiment-container');
delete_option('popularis_wizard');
delete_site_option('popularis_wizard');
delete_option('automatic_2nd_notice');
delete_site_option('automatic_2nd_notice');
delete_option('2nd_notice');
delete_site_option('2nd_notice');
delete_option('popularis_plugin_do_activation_redirect');
delete_site_option('popularis_plugin_do_activation_redirect');

// Delete Transients
delete_transient('_wc_activation_redirect');
delete_site_transient('_wc_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('add_second_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_menu_item_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_menu_item_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_menu_item_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_menu_item_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

