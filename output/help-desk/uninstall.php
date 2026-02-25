<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_admins');
delete_site_option('site_admins');
delete_option('helpdesk_subject');
delete_site_option('helpdesk_subject');
delete_option('helpdesk_admin-notifacation');
delete_site_option('helpdesk_admin-notifacation');
delete_option('helpdesk_new_ticket_message');
delete_site_option('helpdesk_new_ticket_message');
delete_option('helpdesk_ticket-submission-message');
delete_site_option('helpdesk_ticket-submission-message');
delete_option('helpdesk_submission-conformation');
delete_site_option('helpdesk_submission-conformation');
delete_option('helpdesk_open-close');
delete_site_option('helpdesk_open-close');
delete_option('helpdesk_response_message');
delete_site_option('helpdesk_response_message');
delete_option('helpdesk_ticket-update-message');
delete_site_option('helpdesk_ticket-update-message');
delete_option('helpdesk_message-order');
delete_site_option('helpdesk_message-order');
delete_option('helpdesk_email-subject');
delete_site_option('helpdesk_email-subject');
delete_option('helpdesk_version');
delete_site_option('helpdesk_version');

