<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('archivesposttab_license_status');
delete_site_option('archivesposttab_license_status');
delete_option('archivesposttab_license_key');
delete_site_option('archivesposttab_license_key');
delete_option('archivesposttab_license_reff');
delete_site_option('archivesposttab_license_reff');

