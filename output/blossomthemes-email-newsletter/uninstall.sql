-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blossomthemes_email_newsletter_settings', 'bten_aw_auth_info', 'bten_sib_temp_list');
DELETE FROM wp_options WHERE option_name LIKE 'bten_sib_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'sib_attributes_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bten_api_update_admin_notice', 'blossomthemes_email_newsletter_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('bten_api_update_admin_notice', 'blossomthemes_email_newsletter_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('bten_api_update_admin_notice', 'blossomthemes_email_newsletter_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bten_api_update_admin_notice', 'blossomthemes_email_newsletter_setting');

