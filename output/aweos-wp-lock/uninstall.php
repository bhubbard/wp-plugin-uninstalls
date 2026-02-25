<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpLockMode');
delete_site_option('wpLockMode');
delete_option('wpLockUntil');
delete_site_option('wpLockUntil');
delete_option('wpLockFor');
delete_site_option('wpLockFor');
delete_option('wpLockForI');
delete_site_option('wpLockForI');
delete_option('wpLockUpdated');
delete_site_option('wpLockUpdated');
delete_option('wpLockUnlockFrom');
delete_site_option('wpLockUnlockFrom');
delete_option('wpLockUnlockTo');
delete_site_option('wpLockUnlockTo');
delete_option('wpLockLockFrom');
delete_site_option('wpLockLockFrom');
delete_option('wpLockLockTo');
delete_site_option('wpLockLockTo');
delete_option('wpLockMessage');
delete_site_option('wpLockMessage');
delete_option('wpLockDisableFor');
delete_site_option('wpLockDisableFor');
delete_option('wpLockDisableForI');
delete_site_option('wpLockDisableForI');
delete_option('wpLockEnableFor');
delete_site_option('wpLockEnableFor');
delete_option('wpLockEnableForI');
delete_site_option('wpLockEnableForI');
delete_option('wpLockAllowedRoles');
delete_site_option('wpLockAllowedRoles');
delete_option('wpLockLogo');
delete_site_option('wpLockLogo');

// Clear Cron Jobs
wp_clear_scheduled_hook('wplock_check_status');

