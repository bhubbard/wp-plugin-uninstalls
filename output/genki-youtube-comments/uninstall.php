<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('genki_youtube_schedule');
delete_site_option('genki_youtube_schedule');
delete_option('genki_youtube_skipspam');
delete_site_option('genki_youtube_skipspam');
delete_option('genki_commentlog');
delete_site_option('genki_commentlog');

// Clear Cron Jobs
wp_clear_scheduled_hook('genki_youtube_cron');

