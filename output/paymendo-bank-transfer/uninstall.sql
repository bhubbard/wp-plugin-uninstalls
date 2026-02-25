-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paymendo_bank_transfer_admin_sms_message', 'paymendo_bank_transfer_admin_sms_enabled', 'paymendo_bank_transfer_admin_email_enabled', 'paymendo_bank_transfer_admin_sms_number', 'paymendo_bank_transfer_customer_sms_message', 'paymendo_bank_transfer_customer_sms_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paymendo_bank_transfer_bank_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('paymendo_bank_transfer_bank_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('paymendo_bank_transfer_bank_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paymendo_bank_transfer_bank_id');

