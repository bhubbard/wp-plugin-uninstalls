<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('realTimeFeedback_poll_options');
delete_site_option('realTimeFeedback_poll_options');
delete_option('realTimeFeedback_version');
delete_site_option('realTimeFeedback_version');

