#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdm_minimum_amount'
wp option delete 'wcdm_maximum_amount'
wp option delete 'wcdm_disabled_tax'
wp option delete 'wcdm_installed'
wp option delete 'wcdm_add_to_cart_btn_text'
wp option delete 'wcdm_editable_cart_price'
wp option delete 'wcdm_disabled_coupon_field'
wp option delete 'wcdm_expired_text'
wp option delete 'wcdm_fast_checkout'
wp option delete 'wcdm_skip_cart'
wp option delete 'wcdm_delete_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_goal_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_goal_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_goal_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_goal_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_is_predefined_amounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_is_predefined_amounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_is_predefined_amounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_is_predefined_amounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_predefined_amounts_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_predefined_amounts_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_predefined_amounts_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_predefined_amounts_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_predefined_amounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_predefined_amounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_predefined_amounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_predefined_amounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_is_custom_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_is_custom_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_is_custom_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_is_custom_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_amount_increment_steps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_amount_increment_steps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_amount_increment_steps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_amount_increment_steps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_min_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_min_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_min_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_min_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_max_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_max_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_max_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_max_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_raised_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_raised_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_raised_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_raised_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_orders_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_orders_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_orders_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_orders_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdm_campaign_cause'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdm_campaign_cause'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdm_campaign_cause'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdm_campaign_cause'"
