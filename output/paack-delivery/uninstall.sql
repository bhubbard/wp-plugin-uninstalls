-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paack_testing', 'api_token', 'store_id', 'is_store_valid', 'text_popup', 'zip_codes', 'paack_message_zip_code_success', 'paack_message_zip_code_error');

