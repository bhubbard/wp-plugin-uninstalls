#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rankai_target_keywords'
wp option delete 'rankai_auto_analyze'
wp option delete 'rankai_min_content_length'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankai_target_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankai_target_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankai_target_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankai_target_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankai_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankai_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankai_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankai_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankai_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankai_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankai_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankai_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankai_overall_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankai_overall_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankai_overall_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankai_overall_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankai_title_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankai_title_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankai_title_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankai_title_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankai_content_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankai_content_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankai_content_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankai_content_score'"
