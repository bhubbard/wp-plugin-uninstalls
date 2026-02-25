#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nepali_calendar_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nepali_calendar_admin_notice_%'"
wp option delete 'nepali_calendar_db_version'
wp option delete 'nepali_calendar_file_download_method'
wp option delete 'nepali_calendar_version'
wp option delete 'nepali_calendar_myaccount_page_id'
wp option delete 'nepali_calendar_checkout_page_id'

# Delete Transients
wp transient delete 'nepali_calendar_cache_excluded_uris'
wp transient delete '_ur_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'nepali_calendar_flush_rewrite_rules'

