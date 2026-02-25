<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('st_disable_comments_post_cat');
delete_site_option('st_disable_comments_post_cat');

