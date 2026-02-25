<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('packageTables');
delete_site_option('packageTables');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_feature' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_option' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wrcpt_spare_me');
delete_site_option('wrcpt_spare_me');
delete_option('wrcpt_activation_time');
delete_site_option('wrcpt_activation_time');
delete_option('packageCount');
delete_site_option('packageCount');
delete_option('packageIDs');
delete_site_option('packageIDs');
delete_option('IDsCount');
delete_site_option('IDsCount');
delete_option('external_updates-wrc-pricing-tables');
delete_site_option('external_updates-wrc-pricing-tables');

