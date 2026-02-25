#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getgenie_site_token'
wp option delete 'getgenie_subscription_statistics_timestamp'
wp option delete 'getgenie_subscription_statistics'
wp option delete 'getgenie_auth_token_secret_key'
wp option delete 'getgenie_subscription_site_data'

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
