-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('on_send_admin', 'on_send_subscriber', 'messenger_email_to');

