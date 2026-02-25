#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'appmaker_wp_settings'
wp option delete 'appmaker_wp_custom_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appmaker_wp_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appmaker_wp_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appmaker_wp_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appmaker_wp_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_registered_from_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_registered_from_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_registered_from_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_registered_from_app'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appmaker_wp_user_login_from_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appmaker_wp_user_login_from_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appmaker_wp_user_login_from_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appmaker_wp_user_login_from_app'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_register_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_register_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_register_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_register_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_login_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_login_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_login_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_login_date_time'"
