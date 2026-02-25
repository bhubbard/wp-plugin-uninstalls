#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_mail_export_filename'
wp option delete 'auto_mail_global_settings'
wp option delete 'auto_mail_activation_hook'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'auto_mail_texts'
wp option delete 'date-format'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__auto_mail_bulk_import_%' OR option_name LIKE '_site_transient__auto_mail_bulk_import_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__auto_mail_bulk_import_errors_%' OR option_name LIKE '_site_transient__auto_mail_bulk_import_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__auto_mail_bulk_import%' OR option_name LIKE '_site_transient__auto_mail_bulk_import%'"
wp transient delete '_auto_mail_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_auto_mail_importer_credentials_%' OR option_name LIKE '_site_transient_auto_mail_importer_credentials_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_auto_mail_mailchimp_api_request_%' OR option_name LIKE '_site_transient_auto_mail_mailchimp_api_request_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'am_cron_hook'
wp cron event delete 'am_automation_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_mail_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_mail_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_mail_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_mail_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
