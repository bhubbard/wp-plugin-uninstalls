<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scheduled_unsticky_days');
delete_site_option('scheduled_unsticky_days');
delete_option('scheduled_unsticky_cron');
delete_site_option('scheduled_unsticky_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('scheduled_unsticky_posts');

