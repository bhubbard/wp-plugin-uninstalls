<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kau-boys_comment_notification_moderators_only');
delete_site_option('kau-boys_comment_notification_moderators_only');

