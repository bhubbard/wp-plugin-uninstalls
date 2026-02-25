#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tochatbe_appearance_settings'
wp option delete 'tochatbe_basic_settings'
wp option delete 'tochatbe_gdpr_settings'
wp option delete 'tochatbe_type_and_chat_settings'
wp option delete 'tochatbe_just_whatsapp_icon_settings'
wp option delete 'tochatbe_google_analytics_settings'
wp option delete 'tochatbe_facebook_analytics_settings'
wp option delete 'tochatbe_woo_order_button_settings'
wp option delete 'tochatbe_just_whatsapp_icon_notice_dismiss'
wp option delete 'tochatbe_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pre_defined_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pre_defined_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pre_defined_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pre_defined_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tochatbe_about_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tochatbe_about_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tochatbe_about_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tochatbe_about_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
