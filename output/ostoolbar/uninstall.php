<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ostoolbar_permissions');
delete_site_option('ostoolbar_permissions');
delete_option('ostoolbar_apikey');
delete_site_option('ostoolbar_apikey');
delete_option('ostoolbar_videos');
delete_site_option('ostoolbar_videos');

