-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prafe_settings', 'prafe_installed', 'prafe_version', 'prafe_wc_missing_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_settings', 'prafe_version', 'custom_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_settings', 'prafe_version', 'custom_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_settings', 'prafe_version', 'custom_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_settings', 'prafe_version', 'custom_form');

