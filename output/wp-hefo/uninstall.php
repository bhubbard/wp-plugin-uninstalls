<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hefo_version');
delete_site_option('hefo_version');
delete_option('hefo_settings');
delete_site_option('hefo_settings');

