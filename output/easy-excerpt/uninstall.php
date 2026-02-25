<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_excerpt_length');
delete_site_option('easy_excerpt_length');
delete_option('easy_excerpt_more');
delete_site_option('easy_excerpt_more');
delete_option('easy_excerpt_more_link');
delete_site_option('easy_excerpt_more_link');
delete_option('easy_excerpt');
delete_site_option('easy_excerpt');

