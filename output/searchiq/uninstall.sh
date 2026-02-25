#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete '_siq_num_indexed_posts'
wp option delete 'siq_api_error_log_enabled'
wp option delete '_siq_admin_notices'
wp option delete '_siq_indexed_posts'
wp option delete 'siq_db_version'
wp option delete '_siq_plugin_version'
wp option delete '_siq_hide_icon_notice'
wp option delete '_siq_hide_review_notice'

# Clear Cron Jobs
wp cron event delete 'siq_delta_sync_cron'
wp cron event delete 'siq_delta_sync_cron_stop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
