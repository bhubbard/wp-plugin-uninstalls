<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oemm_plugin_options_logger');
delete_site_option('oemm_plugin_options_logger');
delete_option('oemm_plugin_options_adminbar');
delete_site_option('oemm_plugin_options_adminbar');
delete_option('oemm_plugin_options_usecdn');
delete_site_option('oemm_plugin_options_usecdn');
delete_option('oemm_plugin_options_nag');
delete_site_option('oemm_plugin_options_nag');
delete_option('oemm_consumer_misc_disable_consumer');
delete_site_option('oemm_consumer_misc_disable_consumer');
delete_option('oemm_consumer_misc_mode');
delete_site_option('oemm_consumer_misc_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oemm_consumer_rules_block_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oemm_consumer_rules_param_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'oemm_consumer_rules_text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('oemm_consumer_advanced_clickable');
delete_site_option('oemm_consumer_advanced_clickable');
delete_option('oemm_consumer_advanced_ttl');
delete_site_option('oemm_consumer_advanced_ttl');
delete_option('oemm_consumer_advanced_timeout');
delete_site_option('oemm_consumer_advanced_timeout');
delete_option('oemm_consumer_advanced_size');
delete_site_option('oemm_consumer_advanced_size');
delete_option('oemm_producer_disable_producer');
delete_site_option('oemm_producer_disable_producer');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

