<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crm_order_barcodes_version');
delete_site_option('crm_order_barcodes_version');

