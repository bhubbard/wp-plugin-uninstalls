<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frontpagereloadcounter_visit_count');
delete_site_option('frontpagereloadcounter_visit_count');
delete_option('frontpagereloadcounter_last_visit');
delete_site_option('frontpagereloadcounter_last_visit');
delete_option('frontpagereloadcounter_paused');
delete_site_option('frontpagereloadcounter_paused');
delete_option('frontpagereloadcounter_db_version');
delete_site_option('frontpagereloadcounter_db_version');

