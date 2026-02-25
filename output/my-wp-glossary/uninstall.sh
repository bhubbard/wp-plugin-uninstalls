#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mywpglossary_post_matching_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mywpglossary_post_matching_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mywpglossary_post_matching_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mywpglossary_post_matching_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mywpglossary_letter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mywpglossary_letter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mywpglossary_letter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mywpglossary_letter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
