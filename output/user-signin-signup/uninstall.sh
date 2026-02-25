#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iusisu_primary_color'
wp option delete 'iusisu_secondary_color'
wp option delete 'iusisu_pre_secondary_color'
wp option delete 'iusisu_pre_secondary_hover_color'
wp option delete 'iusisu_registration_form'
wp option delete 'iusisu_login_form'
wp option delete 'iusisu_my_account'
wp option delete 'iusisu_forgot_password'
wp option delete 'iusisu_change_password'
wp option delete 'iusisu_role'
wp option delete 'iusisu_login_msg'
wp option delete 'iusisu_registration_msg'
wp option delete 'iusisu_forget_pass_msg'
wp option delete 'iusisu_change_pass_msg'
wp option delete 'iusisu_user_from_email'
wp option delete 'iusisu_user_signature'
wp option delete 'iusisu_user_subject'
wp option delete 'iusisu_admin_subject'
wp option delete 'iusisu_userforgot_subject'
wp option delete 'iusisu_userchange_subject'
wp option delete 'iusisu_user_registration_email_body'
wp option delete 'iusisu_user_registration_email_body_admin'
wp option delete 'iusisu_user_forget_password_email_body'
wp option delete 'iusisu_user_password_change_email_body'
wp option delete 'iusisu_user_login_page'
wp option delete 'iusisu_user_registration_page'
wp option delete 'iusisu_user_my_account_page'
wp option delete 'iusisu_user_forgot_pass_page'
wp option delete 'iusisu_user_logo_img'
wp option delete 'admin_subject'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
