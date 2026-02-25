#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps_widget_for_zendesk_chat_via_api_review_time'
wp option delete 'ps_widget_for_zendesk_chat_via_api_dismiss_review_notice'
wp option delete 'ps_zendesk_chat_widget_api_code'
wp option delete 'ps_zendesk_chat_widget_api_delay_time'
wp option delete 'ps_zendesk_chat_widget_api_remove_data'
wp option delete 'ps_zendesk_chat_widget_api_code_status'
wp option delete 'widget_for_zendesk_chat_via_api_subscription_shown'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ps_zendesk_chat_widget_api_code_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ps_zendesk_chat_widget_api_code_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ps_zendesk_chat_widget_api_code_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ps_zendesk_chat_widget_api_code_disable'"
