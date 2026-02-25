-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpz_payments_settings', 'wpz_payments_first_activate', 'wpz_payments_notice_hidden', 'wpz_payments_debug_log');
DELETE FROM wp_options WHERE option_name LIKE 'wpz_payments_stripe_intent_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', '_source_id', '_transaction_id', '_pending_status', '_total', '_currency', '_description', '_quantity', '_payment_error', '_wp_trash_meta_status', '_internal_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', '_source_id', '_transaction_id', '_pending_status', '_total', '_currency', '_description', '_quantity', '_payment_error', '_wp_trash_meta_status', '_internal_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', '_source_id', '_transaction_id', '_pending_status', '_total', '_currency', '_description', '_quantity', '_payment_error', '_wp_trash_meta_status', '_internal_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', '_source_id', '_transaction_id', '_pending_status', '_total', '_currency', '_description', '_quantity', '_payment_error', '_wp_trash_meta_status', '_internal_notes');

