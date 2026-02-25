-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_user_register_mail_subject', 'new_user_register_mail_body', 'enable_subscription', 'default_registration_form_hooks', 'wprw_admin_email', 'wprw_from_email', 'wprw_success_msg', 'enable_cfws_newsletter_subscription', 'subscription_page', 'thank_you_page_after_registration_url', 'username_in_registration', 'password_in_registration', 'firstname_in_registration', 'firstname_in_profile', 'is_firstname_required', 'lastname_in_registration', 'lastname_in_profile', 'is_lastname_required', 'displayname_in_registration', 'displayname_in_profile', 'is_displayname_required', 'userdescription_in_registration', 'userdescription_in_profile', 'is_userdescription_required', 'userurl_in_registration', 'userurl_in_profile', 'is_userurl_required', 'captcha_in_registration', 'captcha_in_wordpress_default_registration', 'force_login_after_registration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_reg_with_wprp');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_reg_with_wprp');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_reg_with_wprp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_reg_with_wprp');

