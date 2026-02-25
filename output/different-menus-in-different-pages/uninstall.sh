#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'different_menus_for_different_page'
wp option delete 'recorp_settings'
wp option delete 'dmidp_notices_clicked_data'
wp option delete 'elementor_pro_theme_builder_conditions'
wp option delete 'recorp_different_menu_activation_check'
wp option delete 'dmidp_notices'

# Clear Cron Jobs
wp cron event delete 'dmidp_daily_schedules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_who_will_see_the_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_who_will_see_the_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_who_will_see_the_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_who_will_see_the_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_different_menu_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_different_menu_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_different_menu_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_different_menu_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_different_menu_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_different_menu_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_different_menu_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_different_menu_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_avatar_border_radius_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_avatar_border_radius_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_avatar_border_radius_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_avatar_border_radius_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_avatar_border_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_avatar_border_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_avatar_border_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_avatar_border_radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_different_menu_redirect_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_different_menu_redirect_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_different_menu_redirect_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_different_menu_redirect_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_after_to_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_after_to_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_after_to_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_after_to_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'different_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'different_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'different_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'different_menu'"
