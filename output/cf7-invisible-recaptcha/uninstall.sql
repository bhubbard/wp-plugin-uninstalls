-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invisible_recaptcha_sitekey', 'invisible_recaptcha_secretkey', 'invisible_recaptcha_badge', 'invisible_recaptcha_badge_position', 'invisible_recaptcha_button_class', 'invisible_recaptcha_badge_exclude', 'invisible_recaptcha_enable', 'wpgdprc_integrations_contact-form-7_error_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_messages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_messages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_messages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_messages');

