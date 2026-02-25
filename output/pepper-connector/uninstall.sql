-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pepper_settings_option_name', 'pepper_settings_option_name_key', 'pepper_settings_option_name_webhook_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pepper_signatured_post', 'company_id', 'integrated_account_id', 'assignment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pepper_signatured_post', 'company_id', 'integrated_account_id', 'assignment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pepper_signatured_post', 'company_id', 'integrated_account_id', 'assignment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pepper_signatured_post', 'company_id', 'integrated_account_id', 'assignment_id');

