<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('firebase_credentials');
delete_site_option('firebase_credentials');
delete_option('firebase_database');
delete_site_option('firebase_database');

