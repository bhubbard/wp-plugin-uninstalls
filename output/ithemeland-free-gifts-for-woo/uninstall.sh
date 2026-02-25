#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgb_offer_rules_option_values'
wp option delete 'wgbl_rules'
wp option delete 'wgbl_option_values'
wp option delete 'wgb_option_values'
wp option delete 'wgb_some_setting'
wp option delete 'wgb_usage_track'
wp option delete 'ithemeland_wgb_email_subscription_sent'
wp option delete 'wgb_onboarding'
wp option delete 'wgb_opt_in'
wp option delete 'wgb_settings'
wp option delete 'wgb_rules'
wp option delete 'itg_localization_free'
wp option delete 'itg_localization_our_gift'
wp option delete 'itg_localization_gift_cart_type_label'
wp option delete 'itg_localization_select_gift'
wp option delete 'itg_localization_free_gift_removed'
wp option delete 'itg_localization_notice_checkout_message'
wp option delete 'itg_localization_notice_checkout_message_link_here'
wp option delete 'itg_localization_free_gift_added'
wp option delete 'itg_localization_add_gift'
wp option delete 'itg_localization_no_thanks'
wp option delete 'itg_localization_free_gift_empty_message'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price_for_gift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price_for_gift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price_for_gift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price_for_gift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gift_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gift_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gift_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gift_set'"
