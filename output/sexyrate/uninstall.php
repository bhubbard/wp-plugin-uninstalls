<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('perfect');
delete_site_option('perfect');
delete_option('good');
delete_site_option('good');
delete_option('bad');
delete_site_option('bad');
delete_option('toobad');
delete_site_option('toobad');

