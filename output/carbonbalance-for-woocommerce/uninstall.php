<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carbonbalance_button_template');
delete_site_option('carbonbalance_button_template');
delete_option('carbonbalance_statistics');
delete_site_option('carbonbalance_statistics');
delete_option('carbonbalance_optout');
delete_site_option('carbonbalance_optout');
delete_option('carbonbalance_cfp');
delete_site_option('carbonbalance_cfp');
delete_option('carbonbalance_gif_feature');
delete_site_option('carbonbalance_gif_feature');
delete_option('carbonbalance_ab_research');
delete_site_option('carbonbalance_ab_research');
delete_option('carbonbalance_widgetmark_footer');
delete_site_option('carbonbalance_widgetmark_footer');
delete_option('carbonbalance_checkout_placement');
delete_site_option('carbonbalance_checkout_placement');
delete_option('carbonbalance_disable_button_on_cart');
delete_site_option('carbonbalance_disable_button_on_cart');
delete_option('carbonbalance_site_key');
delete_site_option('carbonbalance_site_key');
delete_option('carbonbalance_site_skey');
delete_site_option('carbonbalance_site_skey');
delete_option('carbonbalance_id');
delete_site_option('carbonbalance_id');
delete_option('carbonbalance_bbApi_token');
delete_site_option('carbonbalance_bbApi_token');
delete_option('carbonbalance_bbApi_token_refresh');
delete_site_option('carbonbalance_bbApi_token_refresh');
delete_option('carbonbalance_bbApi_token_expire');
delete_site_option('carbonbalance_bbApi_token_expire');
delete_option('carbonbalance_compensation_count');
delete_site_option('carbonbalance_compensation_count');
delete_option('carbonbalance_impact');
delete_site_option('carbonbalance_impact');
delete_option('carbonbalance_code');
delete_site_option('carbonbalance_code');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('carbonbalance_bbApi_id');
delete_site_option('carbonbalance_bbApi_id');
delete_option('carbonbalance_bbApi_pass');
delete_site_option('carbonbalance_bbApi_pass');

// Clear Cron Jobs
wp_clear_scheduled_hook('carbonbalance_participation_cron_hook');
wp_clear_scheduled_hook('carbonbalance_clv_cron_hook');
wp_clear_scheduled_hook('carbonbalance_ab_results_cron_hook');
wp_clear_scheduled_hook('update_merchant_cron_hook');
wp_clear_scheduled_hook('carbonbalance_impact_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_email' ) );

