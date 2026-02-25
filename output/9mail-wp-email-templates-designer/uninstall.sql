-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emtmpl_admin_bar_stt', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emtmpl_settings_type', 'emtmpl_email_structure', 'emtmpl_enable_img_for_default_template', 'emtmpl_img_size_for_default_template', 'emtmpl_custom_css', 'emtmpl_settings_direction', 'emtmpl_admin_note', 'emtmpl_settings_categories', 'emtmpl_settings_countries');
DELETE FROM wp_usermeta WHERE meta_key IN ('emtmpl_settings_type', 'emtmpl_email_structure', 'emtmpl_enable_img_for_default_template', 'emtmpl_img_size_for_default_template', 'emtmpl_custom_css', 'emtmpl_settings_direction', 'emtmpl_admin_note', 'emtmpl_settings_categories', 'emtmpl_settings_countries');
DELETE FROM wp_termmeta WHERE meta_key IN ('emtmpl_settings_type', 'emtmpl_email_structure', 'emtmpl_enable_img_for_default_template', 'emtmpl_img_size_for_default_template', 'emtmpl_custom_css', 'emtmpl_settings_direction', 'emtmpl_admin_note', 'emtmpl_settings_categories', 'emtmpl_settings_countries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emtmpl_settings_type', 'emtmpl_email_structure', 'emtmpl_enable_img_for_default_template', 'emtmpl_img_size_for_default_template', 'emtmpl_custom_css', 'emtmpl_settings_direction', 'emtmpl_admin_note', 'emtmpl_settings_categories', 'emtmpl_settings_countries');

