#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iwp_client_backup_tasks'
wp option delete 'site_url'
wp option delete 'iwp_client_nossl_key'
wp option delete 'iwp_client_public_key'
wp option delete 'iwp_client_action_message_id'
wp option delete 'iwp_client_notifications'
wp option delete 'iwp_client_pageview_alerts'
wp option delete 'iwp_client_user_hit_count'
wp option delete 'iwp_client_network_admin_install'
wp option delete 'iwp_client_activate_key'
wp option delete 'bit51_bwps'
wp option delete 'iwp_client_brand'
wp option delete 'iwp_client_maintenace_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%'"
wp option delete 'iwp_client_forcerefresh'
wp option delete 'iwp_mmb_stats_filter'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'iwp_client_backup_tasks'
wp cron event delete 'iwp_client_notifications'

