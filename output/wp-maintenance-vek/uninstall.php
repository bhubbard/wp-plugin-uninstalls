<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('db_vek');
delete_site_option('db_vek');
delete_option('db_vek_subscriber_email');
delete_site_option('db_vek_subscriber_email');

