#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simply_seo_settings'
wp option delete 'simply_seo_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_social_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_social_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_social_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_social_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simply_seo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simply_seo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simply_seo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simply_seo_canonical'"
