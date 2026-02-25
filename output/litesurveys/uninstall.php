<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsapp_litesurveys_version');
delete_site_option('lsapp_litesurveys_version');
delete_option('LSAPP_litesurveys_settings');
delete_site_option('LSAPP_litesurveys_settings');

// Delete Transients
delete_transient('litesurveys_active_surveys');
delete_site_transient('litesurveys_active_surveys');
delete_transient('litesurveys_has_active');
delete_site_transient('litesurveys_has_active');

