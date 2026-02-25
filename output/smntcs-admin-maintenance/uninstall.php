<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smntcs_admin_maintenance_enable');
delete_site_option('smntcs_admin_maintenance_enable');
delete_option('smntcs_admin_maintenance_uid');
delete_site_option('smntcs_admin_maintenance_uid');

