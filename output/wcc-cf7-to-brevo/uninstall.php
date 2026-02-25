<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccc_cf7_brevo_ignore_spam_entry');
delete_site_option('wccc_cf7_brevo_ignore_spam_entry');
delete_option('cf7_db_version');
delete_site_option('cf7_db_version');
delete_option('wcc_cf7_brevo_notification_send_to');
delete_site_option('wcc_cf7_brevo_notification_send_to');
delete_option('wcc_cf7_brevo_notification_subject');
delete_site_option('wcc_cf7_brevo_notification_subject');
delete_option('wccc_cf7_brevo_debug');
delete_site_option('wccc_cf7_brevo_debug');
delete_option('wccc_cf7_brevo_notification_send_to	');
delete_site_option('wccc_cf7_brevo_notification_send_to	');
delete_option('wccc_cf7_brevo_notification_subject');
delete_site_option('wccc_cf7_brevo_notification_subject');
delete_option('wccc_cf7_brevo_uninstall');
delete_site_option('wccc_cf7_brevo_uninstall');
delete_option('wccc_cf7_brevo_db_version');
delete_site_option('wccc_cf7_brevo_db_version');

