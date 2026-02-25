<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coming-soon-for-woocommerce');
delete_site_option('coming-soon-for-woocommerce');

