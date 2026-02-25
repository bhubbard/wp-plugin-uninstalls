-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdesk_name', 'wdesk_sender', 'wdesk_url', 'wdesk_date_format', 'wdesk_max_subject', 'wdesk_max_thread');

