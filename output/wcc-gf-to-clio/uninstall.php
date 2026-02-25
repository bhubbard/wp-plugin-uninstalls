<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcc_gf_clio_ignore_spam_entry');
delete_site_option('wcc_gf_clio_ignore_spam_entry');
delete_option('gf_db_version');
delete_site_option('gf_db_version');
delete_option('wccc_gf_clio_notification_send_to   ');
delete_site_option('wccc_gf_clio_notification_send_to   ');
delete_option('wccc_gf_clio_notification_subject');
delete_site_option('wccc_gf_clio_notification_subject');
delete_option('wccc_gf_clio_debug');
delete_site_option('wccc_gf_clio_debug');
delete_option('wccc_gf_clio_notification_send_to	');
delete_site_option('wccc_gf_clio_notification_send_to	');
delete_option('wccc_gf_clio_ignore_spam_entry');
delete_site_option('wccc_gf_clio_ignore_spam_entry');
delete_option('wccc_gf_clio_uninstall');
delete_site_option('wccc_gf_clio_uninstall');
delete_option('wccc_gf_clio_db_version');
delete_site_option('wccc_gf_clio_db_version');

