<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_code');
delete_site_option('embed_code');
delete_option('app_id');
delete_site_option('app_id');

