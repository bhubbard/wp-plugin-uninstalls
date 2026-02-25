<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livesite_plugin_settings');
delete_site_option('livesite_plugin_settings');
delete_option('ls_pm_payment_icons');
delete_site_option('ls_pm_payment_icons');

