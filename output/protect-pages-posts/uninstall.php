<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pur_private_links');
delete_site_option('pur_private_links');
delete_option('updated_htaccess_success');
delete_site_option('updated_htaccess_success');
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('FREE_NOTIFICATION_SETTINGS');
delete_site_option('FREE_NOTIFICATION_SETTINGS');

