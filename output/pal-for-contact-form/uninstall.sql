-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pal_contact_form_notice_shown', 'pal_contact_form_sandbox', 'pal_contact_form_sandbox_account', 'pal_contact_form_live_account', 'pal_contact_form_currency', 'pal_contact_form_language', 'pal_contact_form_return_url', 'pal_contact_form_cancel_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pal_contact_form_setting_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pal_contact_form_setting_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pal_contact_form_setting_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pal_contact_form_setting_data');

