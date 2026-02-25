#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_woo_rewards_points_settings_option'
wp option delete 'hp_woo_rewards_points_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_woo_rewards_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_woo_rewards_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_woo_rewards_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_woo_rewards_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_woo_rewards_points_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_woo_rewards_points_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_woo_rewards_points_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_woo_rewards_points_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
