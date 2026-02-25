<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fresh_install');
delete_site_option('fresh_install');
delete_option('wplogin_google_key');
delete_site_option('wplogin_google_key');
delete_option('wplogin_google_s_key');
delete_site_option('wplogin_google_s_key');
delete_option('wplogin_google_type');
delete_site_option('wplogin_google_type');

