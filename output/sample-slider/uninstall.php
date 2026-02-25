<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('name');
delete_site_option('name');
delete_option('age');
delete_site_option('age');
delete_option('nickname');
delete_site_option('nickname');

