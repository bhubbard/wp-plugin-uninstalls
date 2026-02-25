#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpp_performance_nag'
wp option delete 'wpp_settings_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'wpp_ver'
wp option delete 'wpp_update'
wp option delete 'wpp_rand'
wp option delete 'wpp_transients'

# Clear Cron Jobs
wp cron event delete 'wpp_cache_event'
wp cron event delete 'wpp_maybe_performance_nag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
