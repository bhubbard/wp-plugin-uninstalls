#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dplr_version'
wp option delete 'dplr_settings'
wp option delete 'dplrwoo_api_connected'
wp option delete 'dplrwoo_last_synch'
wp option delete 'dplr_subscribers_list'
wp option delete 'dplrwoo_mapping'
wp option delete 'dplrwoo_version'
wp option delete 'dplr_wc_consent_text'
wp option delete 'dplr_wc_consent_location'
wp option delete 'dplr_wc_open_graph_meta'
wp option delete 'dplr_wc_consent'

# Clear Cron Jobs
wp cron event delete 'dplrwoo_cron_job'
wp cron event delete 'dplrwoo_cron_clean_views'
wp cron event delete 'dplrwoo_synch_cron'

