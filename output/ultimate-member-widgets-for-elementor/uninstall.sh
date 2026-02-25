#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_users_per_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_pagination'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pagination_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_meta_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_meta_fields'"
wp option delete 'wp_user_profile_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_elementor_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_in_members'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_in_members'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_in_members'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_in_members'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
