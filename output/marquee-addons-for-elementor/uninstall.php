<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deensimc_never_show_notice');
delete_site_option('deensimc_never_show_notice');
delete_option('marquee_addons_widgets');
delete_site_option('marquee_addons_widgets');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_deensimc_rate_us_%', '_site_transient_deensimc_rate_us_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

