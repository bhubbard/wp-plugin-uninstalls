-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbci_mail_disable_dequeue', 'pbci_mail_from_name', 'pbci_mail_set_reply_to', 'pbci_mail_reply_to_email', 'pbci_mail_reply_to_name', 'pbci_mail_max_send_attempts', 'pbci_mail_max_batch', 'pbci_mail_dequeue_wait', 'pbci_mail_max_allowed_queue_errors', 'pbci_mail_queue_disable_minutes', 'pbci_mail_ndr_checking', 'pbci_mail_ndr_mbox_server', 'pbci_mail_ndr_mbox_user', 'pbci_mail_ndr_mbox_password', 'pbci_mail_ndr_mbox_port', 'pbci_mail_log_all_mail', 'pbci_mail_debug_mode_server', 'pbci_mail_debug_mode_address');

