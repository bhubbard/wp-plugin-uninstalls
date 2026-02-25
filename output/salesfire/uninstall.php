<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('salesfire_tracking');
delete_site_option('salesfire_tracking');
delete_option('salesfire_uuid');
delete_site_option('salesfire_uuid');
delete_option('salesfire_product_prefix');
delete_site_option('salesfire_product_prefix');

