<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('murls_discounts_gateway_discounts');
delete_site_option('murls_discounts_gateway_discounts');

