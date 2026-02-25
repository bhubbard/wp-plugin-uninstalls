#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_registration_default_form_page_id'
wp option delete 'user_registration_myaccount_page_id'
wp option delete 'toms_social_login__ajax_order'
wp option delete 'toms_social_login_unbind_enabled'
wp option delete 'toms_social_login_binding_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'toms_social_login_style'
wp option delete 'toms_social_login_wechat_enabled'
wp option delete 'toms_social_login_qq_enabled'
wp option delete 'toms_social_login_weibo_enabled'
wp option delete 'toms_social_login_dingtalk_enabled'
wp option delete 'toms_social_login_github_enabled'
wp option delete 'toms_social_login_google_enabled'
wp option delete 'toms_social_login_facebook_enabled'
wp option delete 'toms_social_login_paypal_enabled'
wp option delete 'toms_social_login_wechat_client_id'
wp option delete 'toms_social_login_qq_client_id'
wp option delete 'toms_social_login_weibo_client_id'
wp option delete 'toms_social_login_dingtalk_client_id'
wp option delete 'toms_social_login_github_client_id'
wp option delete 'toms_social_login_google_client_id'
wp option delete 'toms_social_login_facebook_client_id'
wp option delete 'toms_social_login_paypal_client_id'
wp option delete 'toms_social_login_wechat_secret_key'
wp option delete 'toms_social_login_qq_secret_key'
wp option delete 'toms_social_login_weibo_secret_key'
wp option delete 'toms_social_login_dingtalk_secret_key'
wp option delete 'toms_social_login_github_secret_key'
wp option delete 'toms_social_login_google_secret_key'
wp option delete 'toms_social_login_facebook_secret_key'
wp option delete 'toms_social_login_paypal_secret_key'
wp option delete 'toms_social_login_wechat_callback_url'
wp option delete 'toms_social_login_qq_callback_url'
wp option delete 'toms_social_login_weibo_callback_url'
wp option delete 'toms_social_login_dingtalk_callback_url'
wp option delete 'toms_social_login_github_callback_url'
wp option delete 'toms_social_login_google_callback_url'
wp option delete 'toms_social_login_facebook_callback_url'
wp option delete 'toms_social_login_paypal_callback_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ajax_order'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_callback_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%binding_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%unbind_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%clear_data'"
wp option delete 'toms_social_login_clear_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_form_id'"
