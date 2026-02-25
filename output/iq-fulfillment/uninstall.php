<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iq_fulfillment_activated');
delete_site_option('iq_fulfillment_activated');
delete_option('iq_fulfillment_installed');
delete_site_option('iq_fulfillment_installed');
delete_option('iq_fulfillment_version');
delete_site_option('iq_fulfillment_version');

