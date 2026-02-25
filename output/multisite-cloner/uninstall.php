<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmuclone_default_blog');
delete_site_option('wpmuclone_default_blog');
delete_option('wpmuclone_copy_users');
delete_site_option('wpmuclone_copy_users');

