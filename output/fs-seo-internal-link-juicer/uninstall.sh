#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_seo_ilj_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fs_seo_ilj_focus_keyphrases'"
