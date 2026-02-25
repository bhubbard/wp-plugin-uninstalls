#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_service'
wp option delete 'groq_api_key'
wp option delete 'gemini_api_key'
wp option delete 'hf_api_key'
wp option delete 'super_programmatic_seo_campaigns'
wp option delete 'super_programmatic_seo_company_details'
wp option delete 'pseo_company_details'
wp option delete 'super_programmatic_seo_monthly_usage'
wp option delete 'super_programmatic_seo_api_settings'

# Delete Transients
wp transient delete 'super_programmatic_seo_campaign_error'
wp transient delete 'super_programmatic_seo_campaign_success'

# Clear Cron Jobs
wp cron event delete 'super_programmatic_seo_process_campaigns_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_super_programmatic_seo_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_super_programmatic_seo_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_super_programmatic_seo_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_super_programmatic_seo_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_super_programmatic_seo_generated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_super_programmatic_seo_generated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_super_programmatic_seo_generated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_super_programmatic_seo_generated_date'"
