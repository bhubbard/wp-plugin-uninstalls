<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oss_settings_page');
delete_site_option('oss_settings_page');
delete_option('OneSignalWPSetting');
delete_site_option('OneSignalWPSetting');

