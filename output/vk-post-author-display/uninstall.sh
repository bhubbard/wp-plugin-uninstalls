#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vkExUnit_common_options'
wp option delete 'pad_plugin_options'
wp option delete 'vk_font_awesome_version'
wp option delete 'vk_font_awesome_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_profile_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pad_hide_post_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pad_hide_post_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pad_hide_post_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pad_hide_post_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_color'"
