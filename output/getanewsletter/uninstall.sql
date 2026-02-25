-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_user', 'newsletter_pass', 'newsletter_apikey', 'newsletter_msg_success', 'newsletter_msg_confirm', 'gan_enable_popup_forms', 'gan_user_hash', 'newsletter_plugin_version', 'newsletter_default_verify_mail_subject', 'newsletter_default_verify_mail_text', 'widget_getanewsletter', 'gan_redirect_after_activation', 'newsletter_flash_message');
DELETE FROM wp_options WHERE option_name LIKE 'gan_auth_failed_%';
DELETE FROM wp_options WHERE option_name LIKE 'gan_auth_email_sent_%';

