<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('settingsClientID');
delete_site_option('settingsClientID');
delete_option('settingsClientSecret');
delete_site_option('settingsClientSecret');

