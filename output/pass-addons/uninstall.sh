#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'productive_business_do_not_refresh_after_theme_switch'
wp option delete 'productive_ecommerce_do_not_refresh_after_theme_switch'
wp option delete 'productive_stockist_do_not_refresh_after_theme_switch'
wp option delete 'productive_magvalo_do_not_refresh_after_theme_switch'
wp option delete 'productive_passmax_do_not_refresh_after_theme_switch'
wp option delete 'elementor_active_kit'
wp option delete 'productive_global_section_following_options'
wp option delete 'productive_global_section_grid_options'
wp option delete 'productive_global_section_misc_options'
wp option delete 'productive_global_section_popup_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'productive_global_section_sharing_options'
wp option delete 'productive_global_section_slider_options'
wp option delete 'all_pass_cpts'
wp option delete 'all_pass_settings'
wp option delete '_transient_pass_addons'
wp option delete '_transient_timeout_pass_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productive_user_follow_site_profesion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productive_user_follow_site_profesion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productive_user_follow_site_profesion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productive_user_follow_site_profesion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
