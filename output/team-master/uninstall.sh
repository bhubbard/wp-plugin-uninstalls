#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_default_template'
wp option delete 'tm_default_column'
wp option delete 'tm_default_perpage'
wp option delete 'tm_default_background_color'
wp option delete 'tm_default_color'
wp option delete 'tm_default_btn_color'
wp option delete 'tm_default_btn_font_color'
wp option delete 'tm_default_load_more'
wp option delete 'tm_default_activate_carousel'
wp option delete 'tm_default_auto_play_carousel'
wp option delete 'tm_default_title_color'
wp option delete 'tm_default_designation_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_social_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_social_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_social_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_social_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_tel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_tel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_tel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_tel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_short_description'"
