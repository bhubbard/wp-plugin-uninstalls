<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pbci_mail_disable_dequeue');
delete_site_option('pbci_mail_disable_dequeue');
delete_option('pbci_mail_from_name');
delete_site_option('pbci_mail_from_name');
delete_option('pbci_mail_set_reply_to');
delete_site_option('pbci_mail_set_reply_to');
delete_option('pbci_mail_reply_to_email');
delete_site_option('pbci_mail_reply_to_email');
delete_option('pbci_mail_reply_to_name');
delete_site_option('pbci_mail_reply_to_name');
delete_option('pbci_mail_max_send_attempts');
delete_site_option('pbci_mail_max_send_attempts');
delete_option('pbci_mail_max_batch');
delete_site_option('pbci_mail_max_batch');
delete_option('pbci_mail_dequeue_wait');
delete_site_option('pbci_mail_dequeue_wait');
delete_option('pbci_mail_max_allowed_queue_errors');
delete_site_option('pbci_mail_max_allowed_queue_errors');
delete_option('pbci_mail_queue_disable_minutes');
delete_site_option('pbci_mail_queue_disable_minutes');
delete_option('pbci_mail_ndr_checking');
delete_site_option('pbci_mail_ndr_checking');
delete_option('pbci_mail_ndr_mbox_server');
delete_site_option('pbci_mail_ndr_mbox_server');
delete_option('pbci_mail_ndr_mbox_user');
delete_site_option('pbci_mail_ndr_mbox_user');
delete_option('pbci_mail_ndr_mbox_password');
delete_site_option('pbci_mail_ndr_mbox_password');
delete_option('pbci_mail_ndr_mbox_port');
delete_site_option('pbci_mail_ndr_mbox_port');
delete_option('pbci_mail_log_all_mail');
delete_site_option('pbci_mail_log_all_mail');
delete_option('pbci_mail_debug_mode_server');
delete_site_option('pbci_mail_debug_mode_server');
delete_option('pbci_mail_debug_mode_address');
delete_site_option('pbci_mail_debug_mode_address');

