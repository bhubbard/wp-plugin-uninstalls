<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_on_front_user_role');
delete_site_option('page_on_front_user_role');
delete_option('page_on_front_logged_in');
delete_site_option('page_on_front_logged_in');

