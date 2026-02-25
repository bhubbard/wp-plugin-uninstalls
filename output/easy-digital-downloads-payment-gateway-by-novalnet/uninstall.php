<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edd_settings');
delete_site_option('edd_settings');
delete_option('temp_subs_payment');
delete_site_option('temp_subs_payment');
delete_option('edd_recurring_version');
delete_site_option('edd_recurring_version');
delete_option('novalnet_db_version');
delete_site_option('novalnet_db_version');
delete_option('novalnet_version_update');
delete_site_option('novalnet_version_update');

