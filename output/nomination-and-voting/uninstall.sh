#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wp_nv_fb_appid'
wp option delete '_wp_nv_fb_twiter_text'
wp option delete '_wp_nv_fb_twiter_text1'
wp option delete '_wp_nv_fb_twiter_text2'
wp option delete '_wp_nv_mode'
wp option delete '_wp_nv_fb_twiter_text3'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vote_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vote_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vote_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vote_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voter_nomineeid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voter_nomineeid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voter_nomineeid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voter_nomineeid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voter_nomineename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voter_nomineename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voter_nomineename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voter_nomineename'"
