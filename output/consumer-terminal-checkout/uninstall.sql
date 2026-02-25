-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctcp_merchant_id', 'ctc_merchant_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctcp_payment_email', '_ctcp_card_exp_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctcp_payment_email', '_ctcp_card_exp_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctcp_payment_email', '_ctcp_card_exp_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctcp_payment_email', '_ctcp_card_exp_date');

