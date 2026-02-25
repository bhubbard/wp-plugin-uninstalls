#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'af2_free_version'
wp option delete 'af2_dark_mode'
wp option delete 'af2_categories'
wp option delete 'checklist_question'
wp option delete 'checklist_contactform'
wp option delete 'checklist_form'
wp option delete 'checklist_shortcode'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'klicktipp_user'
wp option delete 'klicktipp_pw'
wp option delete 'af2_custom_system_no_nl2br'
wp option delete 'af2_version_num_'
wp option delete 'af2_version'
wp option delete 'af2_question_categories'
wp option delete 'af2_verification_codes'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

