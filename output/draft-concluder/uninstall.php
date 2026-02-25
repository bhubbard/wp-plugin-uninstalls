<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('draft_concluder_time');
delete_site_option('draft_concluder_time');
delete_option('draft_concluder_prev_time');
delete_site_option('draft_concluder_prev_time');
delete_option('draft_concluder_when');
delete_site_option('draft_concluder_when');
delete_option('draft_concluder_what');
delete_site_option('draft_concluder_what');
delete_option('draft_concluder_age');
delete_site_option('draft_concluder_age');
delete_option('draft_concluder_since');
delete_site_option('draft_concluder_since');
delete_option('draft_concluder_output');
delete_site_option('draft_concluder_output');

// Clear Cron Jobs
wp_clear_scheduled_hook('draft_concluder_mailer');

