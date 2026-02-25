<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('private_feed_keys_db_version');
delete_site_option('private_feed_keys_db_version');

