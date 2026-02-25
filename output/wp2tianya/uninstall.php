<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2tianyauser');
delete_site_option('wp2tianyauser');
delete_option('wp2tianyapass');
delete_site_option('wp2tianyapass');
delete_option('tianya_sdurl');
delete_site_option('tianya_sdurl');

