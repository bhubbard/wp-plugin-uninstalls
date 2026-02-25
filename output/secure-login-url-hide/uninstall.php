<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secure_login_url_hide_settings');
delete_site_option('secure_login_url_hide_settings');

