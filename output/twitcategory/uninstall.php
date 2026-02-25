<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitcategory_uid');
delete_site_option('twitcategory_uid');
delete_option('twitcategory_password');
delete_site_option('twitcategory_password');
delete_option('twitcategory_category');
delete_site_option('twitcategory_category');
delete_option('twitcategory_message');
delete_site_option('twitcategory_message');
delete_option('twitcategory_db_version');
delete_site_option('twitcategory_db_version');

