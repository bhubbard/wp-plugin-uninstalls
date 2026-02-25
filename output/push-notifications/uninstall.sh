#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushwoosh_application_code'
wp option delete 'pushwoosh_chrome_default_icon'
wp option delete 'pushwoosh_api_token'
wp option delete 'pushwoosh_safari_action'
wp option delete 'pushwoosh_safari_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushwoosh_message_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushwoosh_message_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushwoosh_message_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushwoosh_message_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'safari_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'safari_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'safari_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'safari_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushwoosh_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushwoosh_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushwoosh_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushwoosh_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushwoosh_api_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushwoosh_api_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushwoosh_api_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushwoosh_api_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushwoosh_send_push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushwoosh_send_push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushwoosh_send_push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushwoosh_send_push'"
