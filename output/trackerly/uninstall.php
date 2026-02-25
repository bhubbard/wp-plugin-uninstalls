<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackerly_install_folder');
delete_site_option('trackerly_install_folder');
delete_option('trackerly_track_pages');
delete_site_option('trackerly_track_pages');

