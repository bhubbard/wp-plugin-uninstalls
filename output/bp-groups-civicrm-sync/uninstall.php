<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_groups_civicrm_sync_settings');
delete_site_option('bp_groups_civicrm_sync_settings');
delete_option('bp_groups_civicrm_sync_version');
delete_site_option('bp_groups_civicrm_sync_version');

