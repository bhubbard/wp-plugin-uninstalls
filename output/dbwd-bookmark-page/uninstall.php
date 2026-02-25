<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DBWD_Menu_Control');
delete_site_option('DBWD_Menu_Control');
delete_option('DBWD_Bookmark_Page_Lite');
delete_site_option('DBWD_Bookmark_Page_Lite');
delete_option('DBWD_bookmark_page');
delete_site_option('DBWD_bookmark_page');

