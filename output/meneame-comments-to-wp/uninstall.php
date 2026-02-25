<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('meneame_comments');
delete_site_option('meneame_comments');
delete_option('meneame_comments__check_cache2');
delete_site_option('meneame_comments__check_cache2');
delete_option('meneame_comments__check_cache');
delete_site_option('meneame_comments__check_cache');

