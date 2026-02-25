<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssg_title');
delete_site_option('ssg_title');
delete_option('ssg_width');
delete_site_option('ssg_width');
delete_option('ssg_height');
delete_site_option('ssg_height');
delete_option('ssg_pause');
delete_site_option('ssg_pause');
delete_option('ssg_fadeduration');
delete_site_option('ssg_fadeduration');
delete_option('ssg_descreveal');
delete_site_option('ssg_descreveal');
delete_option('ssg_descreveal1');
delete_site_option('ssg_descreveal1');
delete_option('ssg_cycles');
delete_site_option('ssg_cycles');
delete_option('ssg_random');
delete_site_option('ssg_random');
delete_option('ssg_type');
delete_site_option('ssg_type');

