<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('force_login_multisite_minlevel');
delete_site_option('force_login_multisite_minlevel');

