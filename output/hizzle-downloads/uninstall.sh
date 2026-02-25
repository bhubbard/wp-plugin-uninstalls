#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hizzle_downloads_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hizzle_downloads_admin_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hizzle_download_admin_notice_%'"
wp option delete 'hizzle_download_options'
wp option delete 'hizzle_downloads_schema_missing_tables'
wp option delete 'hizzle_downloads_xsendfile_missing'
wp option delete 'hizzle_downloads_db_version'
wp option delete 'hizzle_downloads_options'
wp option delete 'hizzle_logger_version'

# Delete Transients
wp transient delete 'hizzle_downloads_installing'

# Clear Cron Jobs
wp cron event delete 'hizzle_downloads_process_github_release'
wp cron event delete 'hizzle_log_clear_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
