<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fatcxe_options');
delete_site_option('fatcxe_options');
delete_option('fatcxe_next_export');
delete_site_option('fatcxe_next_export');
delete_option('fatcxe_last_export');
delete_site_option('fatcxe_last_export');
delete_option('fatcxe_version');
delete_site_option('fatcxe_version');
delete_option('fatcxe_exports_log');
delete_site_option('fatcxe_exports_log');

