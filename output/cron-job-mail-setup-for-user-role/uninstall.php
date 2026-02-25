<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cjmailerTo');
delete_site_option('cjmailerTo');
delete_option('cjmailerSubject');
delete_site_option('cjmailerSubject');
delete_option('cjmailerBody');
delete_site_option('cjmailerBody');
delete_option('cjmailerUser');
delete_site_option('cjmailerUser');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('cjmailerto');
delete_site_option('cjmailerto');

// Clear Cron Jobs
wp_clear_scheduled_hook('CJMailSchdule');

