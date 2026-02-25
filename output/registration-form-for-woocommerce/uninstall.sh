#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_tgwcfb_form_id'
wp option delete '_tgwcfb_captcha_type'
wp option delete '_tgwcfb_site_key'
wp option delete '_tgwcfb_secret_key'
wp option delete '_tgwcfb_recaptcha_v3_site_key'
wp option delete '_tgwcfb_recaptcha_v3_secrete_key'
wp option delete '_tgwcfb_hcaptcha_site_key'
wp option delete '_tgwcfb_hcaptcha_secrete_key'
wp option delete '_tgwcfb_checkout_form_id'
wp option delete '_tgwcfb_checkout_fields'
wp option delete '_tgwcfb_admin_email_settings'
wp option delete 'tgwcfb_version'
wp option delete '_tgwcfb_default_form_id'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgwcfb_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgwcfb_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgwcfb_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgwcfb_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_user_approval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_user_approval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_user_approval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_user_approval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgwcfb_confirm_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgwcfb_confirm_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgwcfb_confirm_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgwcfb_confirm_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgwcfb_confirm_email_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgwcfb_confirm_email_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgwcfb_confirm_email_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgwcfb_confirm_email_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_recaptcha_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_recaptcha_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_recaptcha_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_recaptcha_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_recaptcha_v3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_recaptcha_v3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_recaptcha_v3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_recaptcha_v3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_hcaptcha'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_hcaptcha'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_hcaptcha'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_hcaptcha'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_enable_default_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_enable_default_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_enable_default_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_enable_default_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_default_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_default_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_default_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_default_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_account_created_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_account_created_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_account_created_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_account_created_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tgwcfb_submit_btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tgwcfb_submit_btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tgwcfb_submit_btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tgwcfb_submit_btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_picture_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_picture_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_picture_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_picture_url'"
