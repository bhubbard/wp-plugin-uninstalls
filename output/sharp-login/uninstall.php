<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharplogin_settings');
delete_site_option('sharplogin_settings');
delete_option('sl_login_attempts_settings');
delete_site_option('sl_login_attempts_settings');
delete_option('sharplogin_page');
delete_site_option('sharplogin_page');
delete_option('sharplogin_redirect');
delete_site_option('sharplogin_redirect');

// Delete Transients
delete_transient('attempted_login');
delete_site_transient('attempted_login');

