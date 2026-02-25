<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('randavatarX');
delete_site_option('randavatarX');
delete_option('widget_randavatarx_recent_comments');
delete_site_option('widget_randavatarx_recent_comments');

