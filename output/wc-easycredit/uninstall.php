<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_easycredit_settings');
delete_site_option('woocommerce_easycredit_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('woocommerce_easycredit_infopage_page_id');
delete_site_option('woocommerce_easycredit_infopage_page_id');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('easycredit-settings-checked');
delete_site_transient('easycredit-settings-checked');
delete_transient('woocommerce_cache_excluded_uris');
delete_site_transient('woocommerce_cache_excluded_uris');

