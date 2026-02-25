<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('texttome_settings');
delete_site_option('texttome_settings');
delete_option('texttomeSelect');
delete_site_option('texttomeSelect');
delete_option('texttome-phonenumber');
delete_site_option('texttome-phonenumber');
delete_option('texttome-message');
delete_site_option('texttome-message');

