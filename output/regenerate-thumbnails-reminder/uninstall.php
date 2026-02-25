<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('regenerate_thumbs_reminder_options');
delete_site_option('regenerate_thumbs_reminder_options');

