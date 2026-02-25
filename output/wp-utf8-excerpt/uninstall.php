<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('home_excerpt_length');
delete_site_option('home_excerpt_length');
delete_option('archive_excerpt_length');
delete_site_option('archive_excerpt_length');
delete_option('allowd_tag');
delete_site_option('allowd_tag');
delete_option('read_more_link');
delete_site_option('read_more_link');

