#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opttab_api_key'
wp option delete 'opttab_auto_sync_enabled'
wp option delete 'opttab_sync_frequency'
wp option delete 'opttab_sync_content_types'
wp option delete 'opttab_conflict_resolution'
wp option delete 'opttab_debug_logging'
wp option delete 'opttab_onboarding_completed'
wp option delete 'opttab_version'
wp option delete 'opttab_access_token'
wp option delete 'opttab_user_info'
wp option delete 'opttab_refresh_token'
wp option delete 'opttab_token_expires_at'
wp option delete 'opttab_webhook_id'
wp option delete 'opttab_webhook_secret'
wp option delete 'opttab_plan_limits_backup'

# Delete Transients
wp transient delete 'opttab_oauth_state'

# Clear Cron Jobs
wp cron event delete 'opttab_sync_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opttab_geo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opttab_geo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opttab_geo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opttab_geo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opttab_geo_breakdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opttab_geo_breakdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opttab_geo_breakdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opttab_geo_breakdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opttab_geo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opttab_geo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opttab_geo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opttab_geo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opttab_geo_analyzed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opttab_geo_analyzed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opttab_geo_analyzed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opttab_geo_analyzed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opttab_geo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opttab_geo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opttab_geo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opttab_geo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opttab_geo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opttab_geo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opttab_geo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opttab_geo_description'"
