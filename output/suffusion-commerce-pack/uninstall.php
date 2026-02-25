<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jigoshop_db_version');
delete_site_option('jigoshop_db_version');
delete_option('woocommerce_frontend_css');
delete_site_option('woocommerce_frontend_css');

