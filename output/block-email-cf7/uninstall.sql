-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('form_email_fields', 'display_error_message', 'list_of_block_domains');

