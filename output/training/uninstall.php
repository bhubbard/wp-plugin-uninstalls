<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tr_def_course_image');
delete_site_option('tr_def_course_image');
delete_option('trainingtoolpage');
delete_site_option('trainingtoolpage');

