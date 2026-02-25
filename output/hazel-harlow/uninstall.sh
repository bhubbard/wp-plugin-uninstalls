#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hazel_harlow_api_key'
wp option delete 'hazel_harlow_days'

# Clear Cron Jobs
wp cron event delete 'hazel_harlow_bulk_update_cron'
wp cron event delete 'hazel_harlow_bulk_rewrite_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
