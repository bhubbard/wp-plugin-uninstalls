<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpd_settings');
delete_site_option('bpd_settings');
delete_option('bulkde_settings');
delete_site_option('bulkde_settings');
delete_option('bpd_db_version');
delete_site_option('bpd_db_version');
delete_option('bulkde_db_version');
delete_site_option('bulkde_db_version');

