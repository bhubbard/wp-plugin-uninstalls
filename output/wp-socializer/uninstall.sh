#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpsr_%'"
wp option delete 'wpsr_last_changelog'
wp option delete 'wpsr_version'
wp option delete 'wpsr_since'
wp option delete 'wpsr_sharebar_settings'
wp option delete 'wpsr_button_settings'
wp option delete 'wpsr_general_settings'
wp option delete 'wpsr_social_icons_settings'
wp option delete 'wpsr_floating_sharebar_settings'
wp option delete 'wpsr_followbar_settings'
wp option delete 'wpsr_text_sharebar_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsr_post_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsr_post_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsr_post_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsr_post_settings'"
