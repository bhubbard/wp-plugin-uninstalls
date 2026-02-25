#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_lite_accounts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_quest_font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_quest_font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_quest_font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_quest_font_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_quest_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_quest_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_quest_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_quest_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_ans_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_ans_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_ans_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_ans_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_ans_font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_ans_font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_ans_font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_ans_font_color'"
