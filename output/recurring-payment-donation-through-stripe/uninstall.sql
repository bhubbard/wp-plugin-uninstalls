-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpadts_apiMode', 'rpadts_currency', 'rpadts_secretKey_test', 'rpadts_publishKey_test', 'rpadts_secretKey_live', 'rpadts_publishKey_live', 'rpadts_popup_name', 'rpadts_popup_desc', 'stripe_custom_logo', 'rpadts_recurring_payment_check', 'rpadts_email_subject', 'rpadts_email_messagebody', 'rpadts_email_receipt_sender_address', 'rpadts_cc_payment_receipt');

