<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('make-pdf-newspaper-options');
delete_site_option('make-pdf-newspaper-options');
delete_option('rss_language');
delete_site_option('rss_language');

