<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tactics_iga_tracking_id');
delete_site_option('tactics_iga_tracking_id');

