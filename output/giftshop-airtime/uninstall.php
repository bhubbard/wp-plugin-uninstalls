<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gift_airtime_admin_blog_id');
delete_site_option('gift_airtime_admin_blog_id');

