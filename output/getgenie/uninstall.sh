#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getgenie_admin_dashboard_config'
wp option delete 'getgenie_site_token'
wp option delete 'getgenie_subscription_statistics_timestamp'
wp option delete 'getgenie_subscription_statistics'
wp option delete 'getgenie_auth_token_secret_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"
wp option delete 'getgenie_install_date'
wp option delete 'classic-editor-replace'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_getgenie_showed_notification'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getgenie_chat_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getgenie_chat_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getgenie_chat_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getgenie_chat_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getgenie_chat_template_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getgenie_chat_template_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getgenie_chat_template_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getgenie_chat_template_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'history_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'history_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'history_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'history_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'history_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'history_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'history_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'history_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'history_current_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'history_current_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'history_current_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'history_current_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'history_creativity_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'history_creativity_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'history_creativity_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'history_creativity_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'history_template_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'history_template_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'history_template_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'history_template_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
