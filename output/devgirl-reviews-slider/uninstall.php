<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('devgirl_reviews_option');
delete_site_option('devgirl_reviews_option');
delete_option('devgirl_reviews_style_select');
delete_site_option('devgirl_reviews_style_select');

