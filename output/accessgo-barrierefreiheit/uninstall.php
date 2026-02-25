<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acceba_visited');
delete_site_option('acceba_visited');
delete_option('acceba_activated');
delete_site_option('acceba_activated');

