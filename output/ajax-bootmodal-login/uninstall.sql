-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('option_bs3patch', 'modal_theme', 'option_checkbox', 'option_usermodal', 'can_register_option', 'lable_setting', 'button_text', 'button_text2', 'enable_login_captcha', 'enable_register_captcha', 'enable_lostpass_captcha', 'captcha_font', 'default_buttons', 'default_sizes', 'remove_btn_block', 'alimir_login_redirect', 'alimir_register_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alimir_viewed_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('alimir_viewed_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('alimir_viewed_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alimir_viewed_posts');

