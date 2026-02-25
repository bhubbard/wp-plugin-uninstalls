#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'actionnetwork_api_key'
wp option delete 'actionnetwork_version'
wp option delete 'actionnetwork_db_version'
wp option delete 'actionnetwork_deferred_admin_notices'
wp option delete 'actionnetwork_cache_timestamp'
wp option delete 'actionnetwork_queue_status'
wp option delete 'actionnetwork_ajax_token'
wp option delete 'actionnetwork_show_sync_notice'
wp option delete 'actionnetwork_hcaptcha_site_key'
wp option delete 'actionnetwork_hcaptcha_secret_key'

# Clear Cron Jobs
wp cron event delete 'actionnetwork_cron_daily'

