<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buymecoffee_payment_settings_paypal');
delete_site_option('buymecoffee_payment_settings_paypal');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'buymecoffee_payment_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('buymecoffee_payment_settings_stripe');
delete_site_option('buymecoffee_payment_settings_stripe');
delete_option('buymecoffee_payment_setting');
delete_site_option('buymecoffee_payment_setting');

