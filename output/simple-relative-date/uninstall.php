<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('replace_post_date');
delete_site_option('replace_post_date');
delete_option('replace_comment_date');
delete_site_option('replace_comment_date');

