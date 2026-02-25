#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ALLSI_plugin_cron_settings'
wp option delete 'ALLSI_plugin_compatibility_settings'
wp option delete 'ALLSI_plugin_banks_settings'
wp option delete 'ALLSI_plugin_main_settings'
wp option delete 'ALLSI_plugin_proxy_settings'
wp option delete 'ALLSI_plugin_block_settings'
wp option delete 'ALLSI_plugin_posts_settings'
wp option delete 'ALLSI_plugin_interval_settings'
wp option delete 'ALLSI_plugin_rights_settings'
wp option delete 'ALLSI_plugin_logs_settings'
wp option delete 'ALLSI_hook_checked'
wp option delete 'ALLSI_bulk_db_version'
wp option delete 'ALLSI_plugin_activation_date'

# Delete Transients
wp transient delete 'ALLSI_interval_generation'

# Clear Cron Jobs
wp cron event delete 'ALLSI_generate_scheduled_image'
wp cron event delete 'ALLSI_cron_image_generation'
wp cron event delete 'ALLSI_bulk_process_job'
wp cron event delete 'ALLSI_bulk_process_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_started'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_started'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_started'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_started'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
