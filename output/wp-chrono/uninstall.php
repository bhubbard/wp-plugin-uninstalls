<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpch-notices-afterinstallmessage-dismissed');
delete_site_option('wpch-notices-afterinstallmessage-dismissed');

