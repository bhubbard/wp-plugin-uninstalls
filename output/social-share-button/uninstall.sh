#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_share_button_version'
wp option delete 'social_share_button_migrate_2_1_1'
wp option delete 'social_share_button_migrate_2_1_6'
wp option delete 'social_share_button_settings'
wp option delete 'social_share_button_tc_text'
wp option delete 'social_share_button_tc_themes'
wp option delete 'social_share_button_sites'
wp option delete 'social_share_button_total'
wp option delete 'social_share_button_theme'
wp option delete 'social_share_button_more_display'
wp option delete 'social_share_button_display_total_count'
wp option delete 'social_share_button_display'
wp option delete 'social_share_button_count_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_share_button_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_share_button_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_share_button_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_share_button_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssb_post_sites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssb_post_sites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssb_post_sites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssb_post_sites'"
