<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('archivise_posts');
delete_site_transient('archivise_posts');

// Clear Cron Jobs
wp_clear_scheduled_hook('scheduled_archiving');

