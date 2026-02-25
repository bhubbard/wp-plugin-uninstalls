<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fastcron_id');
delete_site_option('fastcron_id');
delete_option('fastcron_secret');
delete_site_option('fastcron_secret');

