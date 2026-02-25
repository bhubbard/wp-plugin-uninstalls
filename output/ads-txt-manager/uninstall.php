<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adstxtmanager_status');
delete_site_option('adstxtmanager_status');
delete_option('adstxtmanager_id');
delete_site_option('adstxtmanager_id');

