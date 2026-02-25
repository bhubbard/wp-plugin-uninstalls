<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multisite_login_logos_settings');
delete_site_option('multisite_login_logos_settings');
delete_option('multisite_login_logos_custom');
delete_site_option('multisite_login_logos_custom');

