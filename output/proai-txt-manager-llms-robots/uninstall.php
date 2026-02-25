<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proai_txt_manager_enable_llms_txt');
delete_site_option('proai_txt_manager_enable_llms_txt');
delete_option('proai_txt_manager_enable_robots_txt');
delete_site_option('proai_txt_manager_enable_robots_txt');
delete_option('proai_txt_manager_auto_regenerate');
delete_site_option('proai_txt_manager_auto_regenerate');
delete_option('proai_txt_manager_llms_custom_content');
delete_site_option('proai_txt_manager_llms_custom_content');
delete_option('proai_txt_manager_robots_custom_rules');
delete_site_option('proai_txt_manager_robots_custom_rules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'proai_txt_manager_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('proai_txt_manager_include_sitemap_in_robots');
delete_site_option('proai_txt_manager_include_sitemap_in_robots');
delete_option('proai_txt_manager_disallow_admin');
delete_site_option('proai_txt_manager_disallow_admin');
delete_option('proai_txt_manager_disallow_wp_includes');
delete_site_option('proai_txt_manager_disallow_wp_includes');

