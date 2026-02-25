-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_rc_credentials', '_rc_authorization_code', '_rc_token', '_yc_rc_messages');
DELETE FROM wp_options WHERE option_name LIKE '_rc_businesses_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_refund_id', '_transaction_refunds');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_refund_id', '_transaction_refunds');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_refund_id', '_transaction_refunds');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_refund_id', '_transaction_refunds');

