<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gen_nsw_add_news');
delete_site_option('gen_nsw_add_news');
delete_option('scroller_options');
delete_site_option('scroller_options');

