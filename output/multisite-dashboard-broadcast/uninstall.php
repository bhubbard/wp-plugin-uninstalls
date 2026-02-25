<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('broadcast_message');
delete_site_option('broadcast_message');
delete_option('broadcast_message_title');
delete_site_option('broadcast_message_title');

