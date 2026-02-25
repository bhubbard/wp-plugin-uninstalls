<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('form04_sitelock_settings');
delete_site_option('form04_sitelock_settings');

// Delete Transients
delete_transient('form04_sitelock_login_error');
delete_site_transient('form04_sitelock_login_error');

