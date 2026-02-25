<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('si_contact_form_gb');
delete_site_option('si_contact_form_gb');
delete_option('sicf_ctct_valid');
delete_site_option('sicf_ctct_valid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sicf_ctct_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sicf_ctct');
delete_site_option('sicf_ctct');

// Delete Transients
delete_transient('sicf_ctct_cc_lists');
delete_site_transient('sicf_ctct_cc_lists');

