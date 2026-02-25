<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcn_settings');
delete_site_option('wcn_settings');

// Delete Transients
delete_transient('wcn_is_notification_sent');
delete_site_transient('wcn_is_notification_sent');
delete_transient('wcn_admin_notification');
delete_site_transient('wcn_admin_notification');

