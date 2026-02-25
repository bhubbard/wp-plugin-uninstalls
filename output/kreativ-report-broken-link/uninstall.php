<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('krbl_notify_email');
delete_site_option('krbl_notify_email');
delete_option('krbl_enabled_post_types');
delete_site_option('krbl_enabled_post_types');

