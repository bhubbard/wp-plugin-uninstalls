#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'organic::settings_last_updated'
wp option delete 'organic::log_to_sentry'

# Clear Cron Jobs
wp cron event delete 'organic_cron_sync_ad_config'
wp cron event delete 'organic_cron_sync_content'
wp cron event delete 'organic_cron_sync_ads_txt'
wp cron event delete 'organic_cron_sync_content_id_map'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
