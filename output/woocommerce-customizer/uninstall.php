<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_customizer_active_customizations');
delete_site_option('wc_customizer_active_customizations');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_customizer_version');
delete_site_option('wc_customizer_version');

