-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('compare_payment_values');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cp_own', 'cp_trans_fee', 'cp_trans_additoinal_fee', 'cp_min_trans_fee', 'cp_card_body', 'cp_card_bottom');
DELETE FROM wp_usermeta WHERE meta_key IN ('cp_own', 'cp_trans_fee', 'cp_trans_additoinal_fee', 'cp_min_trans_fee', 'cp_card_body', 'cp_card_bottom');
DELETE FROM wp_termmeta WHERE meta_key IN ('cp_own', 'cp_trans_fee', 'cp_trans_additoinal_fee', 'cp_min_trans_fee', 'cp_card_body', 'cp_card_bottom');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cp_own', 'cp_trans_fee', 'cp_trans_additoinal_fee', 'cp_min_trans_fee', 'cp_card_body', 'cp_card_bottom');

