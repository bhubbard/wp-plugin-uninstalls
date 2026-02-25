-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailflatrate-successfully-subscribeed', 'mailflatrate-invalid-email-address', 'mailflatate_already_subscribed', 'mailflatrate-agree_to_terms', 'missing-email-address', 'data-protection', 'mailflatrate_public_key', 'mailflatrate_private_key', 'mailflatrate_sync_status_text', 'mailflatrate-sync-list-export', 'mailflatrate-sync-sel_import_into', 'mailflatrate-sync-fieldEmail', 'mailflatrate-sync-fieldfirstname', 'mailflatrate-sync-fieldlastname', 'mailflatrate_form_code', 'mailflatrate-list', 'mailflatrate-successfully-subscribeed-color', 'mailflatrate-agree_to_terms-color', 'mailflatrate-invalid-email-address-color', 'mailflatrate-field-missing', 'mailflatate_already_subscribed-color', 'mailflatrate_form_error', 'mailflatrate_form_unsubscribed', 'mailflatrate_form_not_subscribed', 'mailflatrate_form_no_lists_selected', 'missing-email-address-color', 'data-protection-color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'display_name', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'display_name', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'display_name', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'display_name', 'first_name', 'last_name');

