<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Hashavshevet_sync_consumer_key');
delete_site_option('Hashavshevet_sync_consumer_key');
delete_option('Hashavshevet_sync_consumer_secret');
delete_site_option('Hashavshevet_sync_consumer_secret');

