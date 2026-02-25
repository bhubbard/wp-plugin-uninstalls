<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpbu_deleted_posts_log');
delete_site_option('dpbu_deleted_posts_log');

