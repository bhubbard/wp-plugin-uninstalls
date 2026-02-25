<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mp_recent_post_widget_option');
delete_site_option('mp_recent_post_widget_option');

