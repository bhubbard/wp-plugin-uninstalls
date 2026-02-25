-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gctf_text_coupon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupon_amount', 'billing_email_creator', 'user_email_creator', 'generated_coupon');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupon_amount', 'billing_email_creator', 'user_email_creator', 'generated_coupon');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupon_amount', 'billing_email_creator', 'user_email_creator', 'generated_coupon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupon_amount', 'billing_email_creator', 'user_email_creator', 'generated_coupon');

