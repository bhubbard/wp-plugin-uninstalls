#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sovrn_workbench-user_action'
wp option delete 'sovrn_workbench-publish_modal_post_id'
wp option delete 'sovrn_workbench-article_id'
wp option delete 'sovrn_workbench-amp_enabled'
wp option delete 'sovrn_workbench-facebook_enabled'
wp option delete 'sovrn_workbench-fbia_started'
wp option delete 'sovrn_workbench-twitter_enabled'
wp option delete 'sovrn_workbench-google_plus_enabled'
wp option delete 'sovrn_workbench-apple_news_enabled'
wp option delete 'sovrn_workbench-publish_modal_is_facebook'
wp option delete 'sovrn_workbench-publish_modal_is_twitter'
wp option delete 'sovrn_workbench-publish_modal_is_google_plus'
wp option delete 'sovrn_workbench-publish_modal_is_apple_news'
wp option delete 'sovrn_workbench_do_activation_redirect'
wp option delete 'sovrn_workbench-publish_modal_user_status'
wp option delete 'sovrn_workbench-country_code'
wp option delete 'sovrn_workbench-privacy_policy'
wp option delete 'sovrn_workbench-terms_n_conditions'
wp option delete 'sovrn_workbench-email'
wp option delete 'sovrn_workbench-password'
wp option delete 'sovrn_workbench-password_confirm'
wp option delete 'sovrn_workbench-authentication-error'
wp option delete 'sovrn_workbench-auth_token'
wp option delete 'sovrn_workbench-sso-country_code'
wp option delete 'sovrn_workbench-sso-privacy_policy'
wp option delete 'sovrn_workbench-sso-terms_n_conditions'
wp option delete 'sovrn_workbench-sso-username'
wp option delete 'sovrn_workbench-sso-password'
wp option delete 'sovrn_workbench-login_username'
wp option delete 'sovrn_workbench-login_password'
wp option delete 'sovrn_workbench-username'
wp option delete 'sovrn_workbench-login_email'
wp option delete 'sovrn_workbench-reset_login_email'
wp option delete 'sovrn_workbench-reset_temporary_password'
wp option delete 'sovrn_workbench-reset_password'
wp option delete 'sovrn_workbench-reset_confirm_password'
wp option delete 'sovrn_workbench-in-password-recovery-mode'
wp option delete 'sovrn_workbench-forgot_password_email'
wp option delete 'sovrn_workbench-selected_facebook_page_id'
wp option delete 'sovrn_workbench-apple-news-key'
wp option delete 'sovrn_workbench-apple-news-secret'
wp option delete 'sovrn_workbench-apple-news-channel'
wp option delete 'sovrn_workbench-apple-news-section'
wp option delete 'sovrn_workbench-apple-news-edit'
wp option delete 'sovrn_workbench-apple-news-channel-name'
wp option delete 'sovrn_workbench-apple-news-site'
wp option delete 'sovrn_workbench-apple-news-share-url'
wp option delete 'sovrn_workbench_priority'
wp option delete 'sovrn_option_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_sent'"
wp option delete 'sovrn_workbench-admin_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sovrn_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sovrn_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sovrn_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sovrn_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sovrn_shares'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sovrn_shares'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sovrn_shares'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sovrn_shares'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sovrn_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sovrn_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sovrn_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sovrn_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sovrn_insights_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sovrn_insights_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sovrn_insights_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sovrn_insights_last_updated'"
