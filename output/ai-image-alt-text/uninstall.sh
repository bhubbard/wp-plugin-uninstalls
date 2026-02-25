#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ait_iat_admin_notice'
wp option delete 'ait_iat_generation_timestamps'
wp option delete 'ait_iat_license'
wp option delete 'ait_iat_full_library_queue'
wp option delete 'ait_iat_full_library_last_run'

# Clear Cron Jobs
wp cron event delete 'ait_iat_cron_bulk_generate'
wp cron event delete 'ait_iat_prune_logs_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
