<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mail_replyto_migration_v200');
delete_site_option('wp_mail_replyto_migration_v200');
delete_option('wp_mail_replyto_email');
delete_site_option('wp_mail_replyto_email');
delete_option('wp_mail_replyto_name');
delete_site_option('wp_mail_replyto_name');
delete_option('wp_mail_replyto_contexts');
delete_site_option('wp_mail_replyto_contexts');

