#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'citrus_data_source'
wp option delete 'citrus_api_key'
wp option delete 'citrus_base_url'
wp option delete 'citrus_org_id'
wp option delete 'citrus_publication_url'
wp option delete 'citrus_sync_interval'
wp option delete 'citrus_cache_duration'
wp option delete 'citrus_auto_sync'
wp option delete 'citrus_last_sync'
wp option delete 'citrus_openai_api_key'
wp option delete 'citrus_openai_api_endpoint'
wp option delete 'citrus_ai_enabled'
wp option delete 'citrus_ai_model'
wp option delete 'citrus_custom_css'
wp option delete 'citrus_color_scheme'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'citrus_%'"
wp option delete 'citrus_bibtex_file_path'

# Clear Cron Jobs
wp cron event delete 'citrus_sync_event'

