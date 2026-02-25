<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmpro_gateway');
delete_site_option('pmpro_gateway');
delete_option('pmpro_coinsnap_webhook');
delete_site_option('pmpro_coinsnap_webhook');

