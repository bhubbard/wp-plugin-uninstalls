-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zarincall_api_key', 'zarincall_wellcome_isEnable', 'zarincall_woocommrece_onOrderCompelete_isEnable', 'zarincall_woocommrece_add_phone_register_isEnable', 'zarincall_wellcome_fileId', 'zarincall_woocommrece_onOrderCompelete_fileId');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zarincall_phone_number', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('zarincall_phone_number', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('zarincall_phone_number', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zarincall_phone_number', 'billing_phone');

