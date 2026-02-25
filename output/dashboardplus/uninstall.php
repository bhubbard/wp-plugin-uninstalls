<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dashplsb_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dashpls_branding');
delete_site_option('dashpls_branding');
delete_option('dashpl_branding');
delete_site_option('dashpl_branding');
delete_option('dashpls_customization');
delete_site_option('dashpls_customization');
delete_option('DASHPLS_branding');
delete_site_option('DASHPLS_branding');
delete_option('admin_email_lifespan');
delete_site_option('admin_email_lifespan');
delete_option('DASHPLS_login_customizer_flush_url');
delete_site_option('DASHPLS_login_customizer_flush_url');

