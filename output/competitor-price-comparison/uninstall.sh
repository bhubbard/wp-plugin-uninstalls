#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'compcom_api_settings'
wp option delete 'compcom_competitors'
wp option delete 'compcom_repricing_settings'
wp option delete 'compcom_update_interval'
wp option delete 'compcom_scraperapi_exhausted'
wp option delete 'compcom_last_processing_time'
wp option delete 'compcom_mapping_settings'

# Delete Transients
wp transient delete 'compcom_selected_competitors'
wp transient delete 'compcom_scraping_in_progress'
wp transient delete 'compcom_logs'

# Clear Cron Jobs
wp cron event delete 'compcom_cron_event'
wp cron event delete 'compcom_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_competitor_mappings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_competitor_mappings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_competitor_mappings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_competitor_mappings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_competitor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_competitor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_competitor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_competitor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_original_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_original_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_original_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_original_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_last_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_last_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_last_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_last_changed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_repriced_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_repriced_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_repriced_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_repriced_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_cheapest_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_cheapest_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_cheapest_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_cheapest_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compcom_average_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compcom_average_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compcom_average_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compcom_average_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
