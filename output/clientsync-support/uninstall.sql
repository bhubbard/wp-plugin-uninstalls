-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cs_support_page_id', 'cs_support_helpdesk_settings', 'cs_support_db_version', 'cs_support_helpdesk_data_retention', 'cs_support_notification_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_support_ticket', '_ticket_status', '_comment_author_id', '_ticket_priority', '_ticket_category', '_customer_email', '_customer_name', '_ticket_customer_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_support_ticket', '_ticket_status', '_comment_author_id', '_ticket_priority', '_ticket_category', '_customer_email', '_customer_name', '_ticket_customer_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_support_ticket', '_ticket_status', '_comment_author_id', '_ticket_priority', '_ticket_category', '_customer_email', '_customer_name', '_ticket_customer_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_support_ticket', '_ticket_status', '_comment_author_id', '_ticket_priority', '_ticket_category', '_customer_email', '_customer_name', '_ticket_customer_email');

