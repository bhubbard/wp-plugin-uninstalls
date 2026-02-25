<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saifgs_google_credentials_file');
delete_site_option('saifgs_google_credentials_file');
delete_option('saifgs_supported_plugins');
delete_site_option('saifgs_supported_plugins');

