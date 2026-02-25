-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailotpauthn_templatesdata', 'emailotpauthn_extremedemo', 'emailotpauthn_isaddonfilplcd', 'emailotpauthn_enable', 'emailotpauthn_useupgrdfiture', 'emailotpauthn_email_subject', 'emailotpauthn_email_body', 'emailotpauthn_dfltextrnalcss', 'emailotpauthn_mdfdextrnalcss', 'emailotpauthn_message', 'emailotpauthn_settingsdetls', 'emailotpauthn_formnoticentxt', 'emailotpauthn_blockedemails', 'emailotpauthn_allowedemails', 'emailotpauthn_blockedmailid', 'emailotpauthn_emailsettings', 'emailotpauthn_firelimit', 'emailotpauthn_duralimit', 'emailotpauthn_validfor', 'emailotpauthn_cleanaftrdays', 'emailotpauthn_lognatmptlimit', 'emailotpauthn_rgstratmptlmit', 'emailotpauthn_useratmptlimit', 'emailotpauthn_tokenvlidfrmbr', 'emailotpauthn_guestatmptlmit', 'emailotpauthn_tokenvlidfrgst', 'emailotpauthn_isactvfrmmail', 'emailotpauthn_mmbrrjtrdcturl', 'emailotpauthn_gustrjtrdcturl', 'emailotpauthn_mmbrvrfrdcturl', 'emailotpauthn_gustvrfrdcturl', 'is_eotpa_data_eximported', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'emailotpauthn_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_data_attribute', 'emilotpauthn', 'emilotpatmpt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_data_attribute', 'emilotpauthn', 'emilotpatmpt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_data_attribute', 'emilotpauthn', 'emilotpatmpt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_data_attribute', 'emilotpauthn', 'emilotpatmpt');

