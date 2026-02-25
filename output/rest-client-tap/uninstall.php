<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TAP_BOOKIES');
delete_site_option('TAP_BOOKIES');
delete_option('TAP_DEPORTES');
delete_site_option('TAP_DEPORTES');
delete_option('TAP_COMPETICIONES');
delete_site_option('TAP_COMPETICIONES');

