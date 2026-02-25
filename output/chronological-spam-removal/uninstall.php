<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chronological_spam_removal');
delete_site_option('chronological_spam_removal');

// Clear Cron Jobs
wp_clear_scheduled_hook('chronological_spam_removal');

