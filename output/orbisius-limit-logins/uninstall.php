<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orbisius_limit_logins_options');
delete_site_option('orbisius_limit_logins_options');

