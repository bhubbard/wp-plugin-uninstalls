<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_mia_settings');
delete_site_option('woocommerce_mia_settings');
delete_option('miapg_db_version');
delete_site_option('miapg_db_version');

// Delete Transients
delete_transient('miapg_access_token');
delete_site_transient('miapg_access_token');

