<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wphub_last_invoice_number');
delete_site_option('_wphub_last_invoice_number');
delete_option('_wphub_invoice');
delete_site_option('_wphub_invoice');

