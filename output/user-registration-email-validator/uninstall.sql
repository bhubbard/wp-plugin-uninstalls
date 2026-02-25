-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urev_allowed_email_types', 'urev_access_key_status', 'urev_access_key_status_color', 'urev_access_key', 'urev_block_on_error');

