#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_announcement_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_announcement_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_announcement_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_announcement_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_announcement_closable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_announcement_closable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_announcement_closable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_announcement_closable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_announcement_closable_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_announcement_closable_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_announcement_closable_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_announcement_closable_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_text_color'"
