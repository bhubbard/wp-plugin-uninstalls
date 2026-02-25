#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vonseowp_settings'
wp option delete 'vonseowp_404_log'
wp option delete 'vonseowp_indexnow_key'
wp option delete 'vonseowp_indexnow_file'
wp option delete 'vonseowp_flush_sitemap'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_faq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_faq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_faq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_faq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_social_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_social_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_social_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_social_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vonseowp_social_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vonseowp_social_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vonseowp_social_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vonseowp_social_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_vonseowp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_vonseowp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_vonseowp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vonseowp_%'"
