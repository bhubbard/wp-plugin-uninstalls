<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jne_shipping_email');
delete_site_option('jne_shipping_email');
delete_option('jne_shipping_donation');
delete_site_option('jne_shipping_donation');
delete_option('jne_shipping_onlist_status');
delete_site_option('jne_shipping_onlist_status');
delete_option('jne_shipping_name');
delete_site_option('jne_shipping_name');
delete_option('wpe_jneshipp_base_location');
delete_site_option('wpe_jneshipp_base_location');
delete_option('wpe_jneshipp_base_location_code');
delete_site_option('wpe_jneshipp_base_location_code');

