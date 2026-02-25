#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zurcf7_formid'
wp option delete 'zurcf7_debug_mode_status'
wp option delete 'zurcf7_skipcf7_email'
wp option delete 'zurcf7_successurl_field'
wp option delete 'zurcf7_email_field'
wp option delete 'zurcf7_username_field'
wp option delete 'zurcf7_userrole_field'
wp option delete 'zurcf7_fb_signup_app_id'
wp option delete 'zurcf7_fb_app_secret'
wp option delete 'zurcf7_enable_sent_login_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%form_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%form_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%form_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%form_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_id'"
