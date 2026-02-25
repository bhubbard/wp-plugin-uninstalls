#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_form'
wp option delete 'user_roles'
wp option delete 'facebook_callback_token'
wp option delete 'facebook_token'
wp option delete 'cf7_page'
wp option delete 'cf7_sender_name'
wp option delete 'cf7_sender_email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_promo_hide' OR option_name LIKE '_site_transient_%_promo_hide'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_last_mess'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_last_mess'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_last_mess'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_last_mess'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender'"
