#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scheai_bulk_progress'
wp option delete 'scheai_google_api_key'
wp option delete 'scheai_enable_caching'
wp option delete 'scheai_cache_duration'
wp option delete 'scheai_async_processing'
wp option delete 'scheai_load_assets_conditionally'
wp option delete 'scheai_delete_data_on_uninstall'
wp option delete 'scheai_version'
wp option delete 'scheai_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scheai_schema_%' OR option_name LIKE '_site_transient_scheai_schema_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scheai_%' OR option_name LIKE '_site_transient_scheai_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scheai_schema_hash_%' OR option_name LIKE '_site_transient_scheai_schema_hash_%'"

# Clear Cron Jobs
wp cron event delete 'scheai_process_batch'
wp cron event delete 'scheai_cleanup_cache'
wp cron event delete 'scheai_bulk_processing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scheai_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scheai_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scheai_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scheai_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scheai_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scheai_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scheai_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scheai_validation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scheai_schema_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scheai_schema_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scheai_schema_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scheai_schema_hash'"
