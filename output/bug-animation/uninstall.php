<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buganimation_enabled');
delete_site_option('buganimation_enabled');
delete_option('buganimation_min_bugs');
delete_site_option('buganimation_min_bugs');
delete_option('buganimation_max_bugs');
delete_site_option('buganimation_max_bugs');
delete_option('buganimation_mouse_over');
delete_site_option('buganimation_mouse_over');

