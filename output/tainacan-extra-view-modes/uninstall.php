<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('tainacan_extra_viewmodes_plugin_notification_dismissed');
delete_site_transient('tainacan_extra_viewmodes_plugin_notification_dismissed');

