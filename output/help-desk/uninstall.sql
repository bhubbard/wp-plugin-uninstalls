-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_admins', 'helpdesk_subject', 'helpdesk_admin-notifacation', 'helpdesk_new_ticket_message', 'helpdesk_ticket-submission-message', 'helpdesk_submission-conformation', 'helpdesk_open-close', 'helpdesk_response_message', 'helpdesk_ticket-update-message', 'helpdesk_message-order', 'helpdesk_email-subject', 'helpdesk_version');

