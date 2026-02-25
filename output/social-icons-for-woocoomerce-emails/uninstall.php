<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siwce_text_before_icons');
delete_site_option('siwce_text_before_icons');
delete_option('siwce_img_width');
delete_site_option('siwce_img_width');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'siwce_url_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

