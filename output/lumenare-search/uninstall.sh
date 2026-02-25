#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lumenare_search_settings'
wp option delete 'lumenare_search_db_version'
wp option delete 'lumenare_search_last_indexed'
wp option delete 'lumenare_search_stop_words_hash'
wp option delete 'lumenare_search_last_post_types'

# Delete Transients
wp transient delete 'lumenare_reindex_batch'

# Clear Cron Jobs
wp cron event delete 'lumenare_search_initial_index'
wp cron event delete 'lumenare_search_calculate_trending'

