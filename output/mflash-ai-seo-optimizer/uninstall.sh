#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mflash_ai_seo_optimizer_settings'
wp option delete 'mflash_mflash_ai_seo_optimizer_settings'

# Delete Transients
wp transient delete 'mflash_ai_seo_optimizer_auth_key'
wp transient delete 'mflash_ai_seo_optimizer_welcome'

# Clear Cron Jobs
wp cron event delete 'mflash_ai_seo_optimizer_calculate_existing_scores'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mflash_ai_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mflash_ai_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mflash_ai_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mflash_ai_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mflash_ai_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mflash_ai_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mflash_ai_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mflash_ai_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mflash_ai_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mflash_ai_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mflash_ai_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mflash_ai_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mflash_ai_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mflash_ai_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mflash_ai_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mflash_ai_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mflash_ai_seo_optimization_changes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mflash_ai_seo_optimization_changes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mflash_ai_seo_optimization_changes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mflash_ai_seo_optimization_changes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mflash_ai_seo_optimization_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mflash_ai_seo_optimization_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mflash_ai_seo_optimization_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mflash_ai_seo_optimization_date'"
