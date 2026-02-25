<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('markerly');
delete_site_option('markerly');
delete_option('pub_id');
delete_site_option('pub_id');

