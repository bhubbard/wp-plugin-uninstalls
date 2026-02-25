<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('postapanduri_setari_generale');
delete_site_option('postapanduri_setari_generale');
delete_option('postapanduri_setari_pachetomat');
delete_site_option('postapanduri_setari_pachetomat');
delete_option('postapanduri_setari_puncte_ridicare');
delete_site_option('postapanduri_setari_puncte_ridicare');
delete_option('postapanduri_setari_curierat');
delete_site_option('postapanduri_setari_curierat');
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');

// Clear Cron Jobs
wp_clear_scheduled_hook('postapanduri_generate_sitemaps_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'id_pachetomat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'id_pachetomat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'id_pachetomat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'id_pachetomat' ) );

