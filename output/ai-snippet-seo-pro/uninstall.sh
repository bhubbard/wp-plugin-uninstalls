#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aissp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai-snippet-seo-pro_membership_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai-snippet-seo-pro_membership_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai-snippet-seo-pro_membership_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai-snippet-seo-pro_membership_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aissp_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aissp_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aissp_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aissp_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aissp_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aissp_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aissp_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aissp_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aissp_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aissp_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aissp_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aissp_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aissp_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aissp_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aissp_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aissp_score'"
