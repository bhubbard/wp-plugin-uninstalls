-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cancelled_order_email_enabled', 'cancorem_email_subject', 'cancelled_order_email_message', 'cancorem_email_message_html', 'cancelled_order_email_count');

