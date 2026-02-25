<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vigisesc_logs_status');
delete_site_option('vigisesc_logs_status');
delete_option('comment_previously_approved');
delete_site_option('comment_previously_approved');
delete_option('whitelist_keys');
delete_site_option('whitelist_keys');
delete_option('comment_moderation_email');
delete_site_option('comment_moderation_email');
delete_option('vigisesc_settings');
delete_site_option('vigisesc_settings');

