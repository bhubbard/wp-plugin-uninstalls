<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('most_comments_options');
delete_site_option('most_comments_options');
delete_option('widget_most_comments');
delete_site_option('widget_most_comments');

