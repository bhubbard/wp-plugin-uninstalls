#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iup_do_sync_complete'
wp option delete 'iup_do_download_complete'
wp option delete 'iup_enabled'
wp option delete 'ms_files_rewriting'
wp option delete 'iup_files_scanned'
wp option delete 'cmplz_geo_ip_file'
wp option delete 'iup_scan_remaining_dirs'
wp option delete 'iup_excluded_files'
wp option delete 'iup_files_to_downloads'
wp option delete 'iup_dirs_to_downloads'
wp option delete 'iup_s3_next_token_to_download'
wp option delete 'iup_apitoken'
wp option delete 'iup_site_id'
wp option delete 'iup_api_data'
wp option delete 'iu_file_exclusion_enabled'
wp option delete 'iup_installed'

# Delete Transients
wp transient delete 'iup_files_sync_progress'
wp transient delete 'iup_files_download_progress'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'infinite_uploads_do_sync'
wp cron event delete 'infinite-uploads-do-sync'
wp cron event delete 'infinite_uploads_sync'

