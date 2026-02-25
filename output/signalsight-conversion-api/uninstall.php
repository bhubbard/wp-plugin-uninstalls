<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('signcoap_p2s_key');
delete_site_option('signcoap_p2s_key');
delete_option('signcoap_base_url');
delete_site_option('signcoap_base_url');
delete_option('signcoap_events');
delete_site_option('signcoap_events');
delete_option('signcoap_pii_data');
delete_site_option('signcoap_pii_data');

