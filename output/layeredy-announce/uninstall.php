<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('layeredy_announce_user_id');
delete_site_option('layeredy_announce_user_id');

