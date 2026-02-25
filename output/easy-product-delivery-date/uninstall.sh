#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woopdd_settings_default_text'
wp option delete 'woopdd_settings_day_off'
wp option delete 'woopdd_settings_date_display_position'
wp option delete 'woopdd_settings_custom_css'
wp option delete 'woopdd_is_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopdd_variation_delivery_day_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopdd_variation_delivery_day_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopdd_variation_delivery_day_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopdd_variation_delivery_day_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopdd_variation_delivery_custom_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopdd_variation_delivery_custom_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopdd_variation_delivery_custom_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopdd_variation_delivery_custom_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopdd_enable_for_this'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopdd_enable_for_this'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopdd_enable_for_this'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopdd_enable_for_this'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopdd_enable_for_this_variations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopdd_enable_for_this_variations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopdd_enable_for_this_variations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopdd_enable_for_this_variations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopdd_delivery_day_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopdd_delivery_day_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopdd_delivery_day_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopdd_delivery_day_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopdd_delivery_custom_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopdd_delivery_custom_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopdd_delivery_custom_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopdd_delivery_custom_msg'"
