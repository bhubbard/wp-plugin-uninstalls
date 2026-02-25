<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('creamailer-featured-image-for-rss');
delete_site_option('creamailer-featured-image-for-rss');

