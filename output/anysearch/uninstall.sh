#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anysearch_last_sync'
wp option delete 'activated_anysearch'
wp option delete 'anysearch_sync_settings'
wp option delete 'anysearch_api_key'
wp option delete 'anysearch_frontend_key'
wp option delete 'anysearch_sync_status'
wp option delete 'anysearch_notices'
wp option delete 'anysearch_ssl_disabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'anysearch_full_sync_cron_worker_start'

