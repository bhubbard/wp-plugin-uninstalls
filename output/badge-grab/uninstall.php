<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('badge_grab_url');
delete_site_option('badge_grab_url');
delete_option('badge_grab_title');
delete_site_option('badge_grab_title');
delete_option('badge_grab_image');
delete_site_option('badge_grab_image');

