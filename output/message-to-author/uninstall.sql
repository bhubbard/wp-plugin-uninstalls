-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('m2a_after_post', 'm2a_allow_visitor', 'm2a_layout', 'm2a_style', 'm2a_labels', 'm2a_captcha_flag', 'm2a_captcha_conf', 'm2a_mail_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('message');
DELETE FROM wp_usermeta WHERE meta_key IN ('message');
DELETE FROM wp_termmeta WHERE meta_key IN ('message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('message');

