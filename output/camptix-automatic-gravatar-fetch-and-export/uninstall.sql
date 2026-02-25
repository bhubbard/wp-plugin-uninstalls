-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('camptix_zip_folder_path');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tix_type', 'tix_access_token', 'tix_ticket_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_transaction_id', 'tix_coupon', 'tix_receipt_email', 'tix_questions');
DELETE FROM wp_usermeta WHERE meta_key IN ('tix_type', 'tix_access_token', 'tix_ticket_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_transaction_id', 'tix_coupon', 'tix_receipt_email', 'tix_questions');
DELETE FROM wp_termmeta WHERE meta_key IN ('tix_type', 'tix_access_token', 'tix_ticket_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_transaction_id', 'tix_coupon', 'tix_receipt_email', 'tix_questions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tix_type', 'tix_access_token', 'tix_ticket_id', 'tix_first_name', 'tix_last_name', 'tix_email', 'tix_transaction_id', 'tix_coupon', 'tix_receipt_email', 'tix_questions');

