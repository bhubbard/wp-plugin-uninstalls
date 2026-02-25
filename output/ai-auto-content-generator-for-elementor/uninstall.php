<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_remove_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aacgfe-installDate');
delete_site_option('aacgfe-installDate');
delete_option('aacgfe-ratingDiv');
delete_site_option('aacgfe-ratingDiv');
delete_option('aacgfe_initial_save_version');
delete_site_option('aacgfe_initial_save_version');
delete_option('aacgfe-install-date');
delete_site_option('aacgfe-install-date');
delete_option('aacgfe-version');
delete_site_option('aacgfe-version');
delete_option('aacgfe-plugin-type');
delete_site_option('aacgfe-plugin-type');
delete_option('aacgfe_plugin_redirect');
delete_site_option('aacgfe_plugin_redirect');
delete_option('AACGFE_prompt_data');
delete_site_option('AACGFE_prompt_data');

