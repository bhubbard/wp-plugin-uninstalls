-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pgpf_payment_confirmed_at', '_give_payment_purchase_key', '_give_payment_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pgpf_payment_confirmed_at', '_give_payment_purchase_key', '_give_payment_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pgpf_payment_confirmed_at', '_give_payment_purchase_key', '_give_payment_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pgpf_payment_confirmed_at', '_give_payment_purchase_key', '_give_payment_form_id');

