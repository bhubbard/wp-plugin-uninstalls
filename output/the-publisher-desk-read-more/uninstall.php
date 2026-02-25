<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpd_read_more_discourage_from_feeds');
delete_site_option('tpd_read_more_discourage_from_feeds');

