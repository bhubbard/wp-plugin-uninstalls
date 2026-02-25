#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aish_options'
wp option delete 'aish_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai-snippet-seo-helper_membership_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai-snippet-seo-helper_membership_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai-snippet-seo-helper_membership_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai-snippet-seo-helper_membership_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aish_snippet_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aish_snippet_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aish_snippet_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aish_snippet_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aish_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aish_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aish_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aish_score'"
