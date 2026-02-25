<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wps%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsdb_key');
delete_site_option('wpsdb_key');
delete_option('wpsdb_secret');
delete_site_option('wpsdb_secret');
delete_option('wpsdb_auth_step');
delete_site_option('wpsdb_auth_step');
delete_option('wpsdb_auth_token');
delete_site_option('wpsdb_auth_token');
delete_option('wpsdb_auth_token_secret');
delete_site_option('wpsdb_auth_token_secret');
delete_option('wpsdb_menu_pref');
delete_site_option('wpsdb_menu_pref');
delete_option('wpsdb_thank_color');
delete_site_option('wpsdb_thank_color');
delete_option('wpsdb_php_pear');
delete_site_option('wpsdb_php_pear');
delete_option('wpsdb_path');
delete_site_option('wpsdb_path');
delete_option('wpsdb_temp_path');
delete_site_option('wpsdb_temp_path');
delete_option('wpsdb_allow_ext');
delete_site_option('wpsdb_allow_ext');
delete_option('wpsdb_thank_message');
delete_site_option('wpsdb_thank_message');
delete_option('wpsdb_show_progress');
delete_site_option('wpsdb_show_progress');
delete_option('wpsdb_show_multi');
delete_site_option('wpsdb_show_multi');
delete_option('wpsdb_show_form');
delete_site_option('wpsdb_show_form');
delete_option('wpsdb_delete_file');
delete_site_option('wpsdb_delete_file');
delete_option('wpsdb_multi_link_text');
delete_site_option('wpsdb_multi_link_text');
delete_option('wpsdb_redirect_page');
delete_site_option('wpsdb_redirect_page');
delete_option('wpsdb_activation_redirect');
delete_site_option('wpsdb_activation_redirect');
delete_option('wpsdb_show_multi_size');
delete_site_option('wpsdb_show_multi_size');
delete_option('wpdb_version_number');
delete_site_option('wpdb_version_number');
delete_option('wpsdb_version_number');
delete_site_option('wpsdb_version_number');

