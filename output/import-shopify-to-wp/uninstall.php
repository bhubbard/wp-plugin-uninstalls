<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopify2wp_current_step');
delete_site_option('shopify2wp_current_step');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

