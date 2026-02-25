<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_defender_enabled');
delete_site_option('login_defender_enabled');
delete_option('login_defender_custom_slug');
delete_site_option('login_defender_custom_slug');

