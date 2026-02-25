-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfd404_base_index_initialized', 'wfd404_email_enabled', 'wfd404_email_address', 'wfd404_notify_new_urls');
DELETE FROM wp_options WHERE option_name LIKE 'wfd404_%';

