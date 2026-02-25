-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mareike_use_webdav', 'mareike_webdav_host', 'mareike_webdav_user', 'mareike_webdav_pass', 'mareike_receipt_uploaddir', 'mareike_sepa_settings_account_owner', 'mareike_sepa_settings_account_iban', 'mareike_sepa_settings_account_bic', 'mareike_last_version', 'page_used_for_state');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'iban', 'account_owner');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'iban', 'account_owner');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'iban', 'account_owner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'iban', 'account_owner');

