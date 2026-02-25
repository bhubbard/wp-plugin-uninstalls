#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beamer_settings_option_name'
wp option delete 'bmr_api_ping_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr_link_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr_link_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr_link_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr_link_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr_feedback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr_feedback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr_feedback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr_feedback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr_reactions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr_reactions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr_reactions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr_reactions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr_id'"
