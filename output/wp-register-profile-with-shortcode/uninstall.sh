#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_user_register_mail_subject'
wp option delete 'new_user_register_mail_body'
wp option delete 'enable_subscription'
wp option delete 'default_registration_form_hooks'
wp option delete 'wprw_admin_email'
wp option delete 'wprw_from_email'
wp option delete 'wprw_success_msg'
wp option delete 'enable_cfws_newsletter_subscription'
wp option delete 'subscription_page'
wp option delete 'thank_you_page_after_registration_url'
wp option delete 'username_in_registration'
wp option delete 'password_in_registration'
wp option delete 'firstname_in_registration'
wp option delete 'firstname_in_profile'
wp option delete 'is_firstname_required'
wp option delete 'lastname_in_registration'
wp option delete 'lastname_in_profile'
wp option delete 'is_lastname_required'
wp option delete 'displayname_in_registration'
wp option delete 'displayname_in_profile'
wp option delete 'is_displayname_required'
wp option delete 'userdescription_in_registration'
wp option delete 'userdescription_in_profile'
wp option delete 'is_userdescription_required'
wp option delete 'userurl_in_registration'
wp option delete 'userurl_in_profile'
wp option delete 'is_userurl_required'
wp option delete 'captcha_in_registration'
wp option delete 'captcha_in_wordpress_default_registration'
wp option delete 'force_login_after_registration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_reg_with_wprp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_reg_with_wprp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_reg_with_wprp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_reg_with_wprp'"
