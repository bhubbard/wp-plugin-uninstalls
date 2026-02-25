<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpklikandpay_store_mainoption');
delete_site_option('wpklikandpay_store_mainoption');
delete_option('wpklikandpay_store_urloption');
delete_site_option('wpklikandpay_store_urloption');
delete_option('wpklikandpay_db_option');
delete_site_option('wpklikandpay_db_option');
delete_option('storeTpe');
delete_site_option('storeTpe');
delete_option('environnement');
delete_site_option('environnement');

