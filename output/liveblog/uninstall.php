<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_autourls');
delete_site_option('embed_autourls');
delete_option('liveblog_rewrites_version');
delete_site_option('liveblog_rewrites_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('auto_archive_check_hook');

