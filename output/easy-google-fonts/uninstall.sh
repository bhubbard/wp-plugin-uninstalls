#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'egf_version'
wp option delete 'egf_force_user_redirect'
wp option delete 'egf_show_admin_pointer'
wp option delete 'tt-font-google-api-key'
wp option delete 'tt_font_theme_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'control_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'control_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'control_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'control_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'force_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'force_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'force_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'force_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'control_selectors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'control_selectors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'control_selectors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'control_selectors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min_screen_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min_screen_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min_screen_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min_screen_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min_screen_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min_screen_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min_screen_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min_screen_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_screen_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_screen_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_screen_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_screen_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_screen_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_screen_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_screen_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_screen_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'control_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'control_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'control_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'control_id'"
