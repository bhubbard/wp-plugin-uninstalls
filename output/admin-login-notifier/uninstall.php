<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aln_login_attempts');
delete_site_option('aln_login_attempts');
delete_option('aln_login_attempts_since_viewed');
delete_site_option('aln_login_attempts_since_viewed');
delete_option('aln_current_version');
delete_site_option('aln_current_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('aln_send_daily_email');

