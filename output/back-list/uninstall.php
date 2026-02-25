<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('back_list_blog');
delete_site_option('back_list_blog');
delete_option('back_list_white');
delete_site_option('back_list_white');
delete_option('back_list_black');
delete_site_option('back_list_black');

