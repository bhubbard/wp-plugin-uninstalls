-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('discount_type', 'discount_amount', 'expiry_in_days', 'mail_from_address', 'mail_replyto_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('discount_type', 'discount_amount', 'expiry_in_days', 'mail_from_address', 'mail_replyto_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('discount_type', 'discount_amount', 'expiry_in_days', 'mail_from_address', 'mail_replyto_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('discount_type', 'discount_amount', 'expiry_in_days', 'mail_from_address', 'mail_replyto_address');

