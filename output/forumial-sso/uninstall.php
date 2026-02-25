<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forumial_clientid');
delete_site_option('forumial_clientid');
delete_option('forumial_secret');
delete_site_option('forumial_secret');

