#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helpgent_is_running_background_db_migration_process'
wp option delete 'helpgent_is_running_background_process'
wp option delete 'helpgent_media_clean_up_status'
wp option delete 'helpgent_media_migration_status'
wp option delete 'helpgent_media_migration_route'
wp option delete 'helpgent_cancel_media_migration_process'
wp option delete 'helpgent_media_transfer_status'
wp option delete 'helpgent_total_email_sent'
wp option delete 'helpgent_active_media_driver'
wp option delete 'helpgent_removed_old_pro_plugin'
wp option delete 'helpgent_dismiss_nginx_setup_notice'
wp option delete 'helpgent-settings'
wp option delete 'helpgent_email_template_settings'
wp option delete '_helpgent_options'
wp option delete 'helpgent_legacy_form'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'helpgent_is_done_migration:%'"

# Delete Transients
wp transient delete 'helpgent_executed_media_clean_up_processor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'helpgent_executed_media_transfer_processor'

# Clear Cron Jobs
wp cron event delete 'helpgent_background_processor_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpgent_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpgent_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpgent_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpgent_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpgent_about'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpgent_about'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpgent_about'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpgent_about'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpgent_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpgent_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpgent_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpgent_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpgent_delete_scheduled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpgent_delete_scheduled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpgent_delete_scheduled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpgent_delete_scheduled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpgent_user_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpgent_user_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpgent_user_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpgent_user_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'helpgent_user_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'helpgent_user_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'helpgent_user_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'helpgent_user_company'"
