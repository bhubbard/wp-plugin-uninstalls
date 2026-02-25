#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suremails_do_redirect'
wp option delete 'suremails_content_guard_activated'
wp option delete 'suremails_notice_dismissal_time'
wp option delete 'suremails_menu_notice_dismissed'
wp option delete 'suremails-version'
wp option delete 'suremails_content_guard_hashes'
wp option delete 'allowed_astra_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp option delete 'suremails_content_guard_user_details'
wp option delete 'suremails_settings'
wp option delete 'suremails_protection_files_generated'

# Delete Transients
wp transient delete 'bsf_analytics_track'

# Clear Cron Jobs
wp cron event delete 'suremails_cleanup_cron'
wp cron event delete 'suremails_weekly_summary'
wp cron event delete 'suremails_retry_failed_email'

