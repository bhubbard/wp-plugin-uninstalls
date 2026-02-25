#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sa_om_generation_settings'
wp option delete 'sa_om_admin_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_synced_at'"
wp option delete 'sa_om_views_last_synced_at'
wp option delete 'sa_om_campaigns_last_synced_at'
wp option delete 'sa_om_db_version'
wp option delete 'sa_om_last_synced_at'
wp option delete 'sa_om_campaign_aggressiveness'
wp option delete 'sa_om_max_orders_to_scan'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_sa_om_activation_redirect'
wp transient delete 'sa_om_store_kpis'
wp transient delete 'sa_om_max_active_campaigns_count'
wp transient delete 'sa_om_token'
wp transient delete 'sa_om_installing'
wp transient delete 'sa_om_updating'

# Clear Cron Jobs
wp cron event delete 'om_sync_tracking_data_daily'

