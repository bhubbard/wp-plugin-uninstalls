<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('announcement_notification_bar_options');
delete_site_option('announcement_notification_bar_options');

// Delete Transients
delete_transient('announcement_notification_bar_activation_notice');
delete_site_transient('announcement_notification_bar_activation_notice');

