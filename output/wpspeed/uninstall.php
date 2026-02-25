<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpspeed_settings');
delete_site_option('wpspeed_settings');
delete_option('ftp_credentials');
delete_site_option('ftp_credentials');

// Delete Transients
delete_transient('wpspeed_notices');
delete_site_transient('wpspeed_notices');

