<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpreftrack_addons_active_list');
delete_site_option('cpreftrack_addons_active_list');
delete_option('cp_cpreftrack_rep_enable');
delete_site_option('cp_cpreftrack_rep_enable');
delete_option('cp_cpreftrack_rep_days');
delete_site_option('cp_cpreftrack_rep_days');
delete_option('cp_cpreftrack_bocsvexclude');
delete_site_option('cp_cpreftrack_bocsvexclude');
delete_option('CP_APPB_CSV_CHARFIX');
delete_site_option('CP_APPB_CSV_CHARFIX');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cp_cpreftrack_last_sent_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cpreftrack_del_old_hook_fmin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cpreftrack_woocommerce_referrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cpreftrack_woocommerce_referrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cpreftrack_woocommerce_referrer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cpreftrack_woocommerce_referrer' ) );

