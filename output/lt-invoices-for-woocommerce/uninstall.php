<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wltinv_isaf_next');
delete_site_option('wltinv_isaf_next');
delete_option('wltinv_pvm_next');
delete_site_option('wltinv_pvm_next');
delete_option('wltinv_seller_email');
delete_site_option('wltinv_seller_email');
delete_option('wltinv_token_ttl_min');
delete_site_option('wltinv_token_ttl_min');
delete_option('wltinv_secure_download');
delete_site_option('wltinv_secure_download');
delete_option('wltinv_show_vat_breakdown_migrated');
delete_site_option('wltinv_show_vat_breakdown_migrated');
delete_option('wltinv_show_vat_breakdown');
delete_site_option('wltinv_show_vat_breakdown');
delete_option('wltinv_activated_at');
delete_site_option('wltinv_activated_at');
delete_option('wltinv_isaf_start');
delete_site_option('wltinv_isaf_start');
delete_option('wltinv_pvm_start');
delete_site_option('wltinv_pvm_start');

// Clear Cron Jobs
wp_clear_scheduled_hook('wltinv_cleanup_tmp_pdfs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wltinv_supply_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wltinv_supply_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wltinv_supply_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wltinv_supply_date' ) );

