#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bravepopup_settings'
wp option delete 'brave_bfcm2020'
wp option delete 'bravepop_license_status'
wp option delete 'bravepop_license_key'
wp option delete 'brave_plugin_rated'
wp option delete 'bravepop_redirect_to_welcome'
wp option delete '_bravepop_aweber_accountID'
wp option delete '_bravepop_aweber_tkn'
wp option delete 'newsletter_subscription_lists'
wp option delete 'newsletter_lists'
wp option delete 'newsletter_profile'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_conversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_conversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_conversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_conversion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_parentID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_parentID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_parentID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_parentID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_abtest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_abtest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_abtest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_abtest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brave_hidden_popups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brave_hidden_popups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brave_hidden_popups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brave_hidden_popups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bravepop_uncanny_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bravepop_uncanny_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bravepop_uncanny_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bravepop_uncanny_actions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_goal_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_goal_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_goal_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_goal_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_placement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_placement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_placement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_placement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_devices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_devices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_devices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_devices'"
