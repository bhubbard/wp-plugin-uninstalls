<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmk-woocommerce-position');
delete_site_option('tmk-woocommerce-position');
delete_option('tmk-data');
delete_site_option('tmk-data');
delete_option('tmk-status');
delete_site_option('tmk-status');
delete_option('tmk-default-script');
delete_site_option('tmk-default-script');
delete_option('tmk-button-design');
delete_site_option('tmk-button-design');

