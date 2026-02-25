<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('tainacan_url_plugin_notification_dismissed');
delete_site_transient('tainacan_url_plugin_notification_dismissed');

