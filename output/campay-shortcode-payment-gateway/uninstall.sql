-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('campay_app_username', 'campay_app_password', 'campay_testmode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('button_amount', 'button_currency', 'button_ref', 'button_title', 'button_created_date', 'button_success_url', 'button_failure_url', 'room_numner', 'payment_type', 'payment_status', 'payment_completed_date', 'payment_details', 'transaction_ref', 'operator', 'payment_amount', 'payment_number', 'payment_currency', 'payment_created_date', 'payment_status_returned');
DELETE FROM wp_usermeta WHERE meta_key IN ('button_amount', 'button_currency', 'button_ref', 'button_title', 'button_created_date', 'button_success_url', 'button_failure_url', 'room_numner', 'payment_type', 'payment_status', 'payment_completed_date', 'payment_details', 'transaction_ref', 'operator', 'payment_amount', 'payment_number', 'payment_currency', 'payment_created_date', 'payment_status_returned');
DELETE FROM wp_termmeta WHERE meta_key IN ('button_amount', 'button_currency', 'button_ref', 'button_title', 'button_created_date', 'button_success_url', 'button_failure_url', 'room_numner', 'payment_type', 'payment_status', 'payment_completed_date', 'payment_details', 'transaction_ref', 'operator', 'payment_amount', 'payment_number', 'payment_currency', 'payment_created_date', 'payment_status_returned');
DELETE FROM wp_commentmeta WHERE meta_key IN ('button_amount', 'button_currency', 'button_ref', 'button_title', 'button_created_date', 'button_success_url', 'button_failure_url', 'room_numner', 'payment_type', 'payment_status', 'payment_completed_date', 'payment_details', 'transaction_ref', 'operator', 'payment_amount', 'payment_number', 'payment_currency', 'payment_created_date', 'payment_status_returned');

