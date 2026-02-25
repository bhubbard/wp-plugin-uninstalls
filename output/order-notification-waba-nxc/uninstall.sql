-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('waba_chat_settings', 'waba_active_carts');
DELETE FROM wp_options WHERE option_name LIKE 'waba_cart_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_email');

