<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mstteam_login_logout_settings');
delete_site_option('mstteam_login_logout_settings');

