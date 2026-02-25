<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remove_all_is_page');
delete_site_option('remove_all_is_page');
delete_option('remove_all_is_post');
delete_site_option('remove_all_is_post');
delete_option('remove_all_is_all');
delete_site_option('remove_all_is_all');

