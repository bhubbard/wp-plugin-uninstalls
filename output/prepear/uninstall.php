<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prepear_auth');
delete_site_option('prepear_auth');
delete_option('prepear_settings');
delete_site_option('prepear_settings');

