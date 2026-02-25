<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('govivace_bot_uid');
delete_site_option('govivace_bot_uid');
delete_option('govivace_show_credit');
delete_site_option('govivace_show_credit');

