<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gigs-calendar');
delete_site_option('gigs-calendar');
delete_option('gig_db_version');
delete_site_option('gig_db_version');

