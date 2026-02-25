<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lockr_default_deleted');
delete_site_option('lockr_default_deleted');
delete_option('lockr_options');
delete_site_option('lockr_options');
delete_option('lockr_partner');
delete_site_option('lockr_partner');
delete_option('lockr_cert');
delete_site_option('lockr_cert');
delete_option('lockr_region');
delete_site_option('lockr_region');
delete_option('lockr_encrypt_posts');
delete_site_option('lockr_encrypt_posts');
delete_option('lockr_hash_pass');
delete_site_option('lockr_hash_pass');
delete_option('lockr_prod_migrate');
delete_site_option('lockr_prod_migrate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_abstract_migrated' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('give_settings');
delete_site_option('give_settings');
delete_option('staging_environment');
delete_site_option('staging_environment');
delete_option('lockr_db_version');
delete_site_option('lockr_db_version');
delete_option('lockr_prod_abstract_migrated');
delete_site_option('lockr_prod_abstract_migrated');
delete_option('lockr_dev_abstract_migrated');
delete_site_option('lockr_dev_abstract_migrated');

