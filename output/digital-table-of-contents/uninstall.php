<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dtoc_compatibility');
delete_site_option('dtoc_compatibility');
delete_option('dtoc_dashboard_options');
delete_site_option('dtoc_dashboard_options');
delete_option('dtoc_dashboard');
delete_site_option('dtoc_dashboard');
delete_option('dtoc_incontent');
delete_site_option('dtoc_incontent');
delete_option('dtoc_incontent_mobile');
delete_site_option('dtoc_incontent_mobile');
delete_option('dtoc_incontent_tablet');
delete_site_option('dtoc_incontent_tablet');
delete_option('dtoc_shortcode');
delete_site_option('dtoc_shortcode');
delete_option('dtoc_shortcode_mobile');
delete_site_option('dtoc_shortcode_mobile');
delete_option('dtoc_shortcode_tablet');
delete_site_option('dtoc_shortcode_tablet');
delete_option('dtoc_sliding_sticky');
delete_site_option('dtoc_sliding_sticky');
delete_option('dtoc_sliding_sticky_mobile');
delete_site_option('dtoc_sliding_sticky_mobile');
delete_option('dtoc_sliding_sticky_tablet');
delete_site_option('dtoc_sliding_sticky_tablet');
delete_option('dtoc_floating');
delete_site_option('dtoc_floating');
delete_option('dtoc_floating_mobile');
delete_site_option('dtoc_floating_mobile');
delete_option('dtoc_floating_tablet');
delete_site_option('dtoc_floating_tablet');

// Delete Transients
delete_transient('dtoc_meta_type');
delete_site_transient('dtoc_meta_type');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dtoc_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dtoc_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dtoc_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dtoc_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'saswp_custom_schema_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'saswp_custom_schema_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'saswp_custom_schema_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'saswp_custom_schema_field' ) );

