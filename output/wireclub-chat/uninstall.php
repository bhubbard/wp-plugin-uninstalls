<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ChatRoomName');
delete_site_option('ChatRoomName');
delete_option('ChatRoomHeight');
delete_site_option('ChatRoomHeight');

