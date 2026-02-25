<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adblockly_title');
delete_site_option('adblockly_title');
delete_option('adblockly_message');
delete_site_option('adblockly_message');

