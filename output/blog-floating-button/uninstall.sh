#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfb_license_key'
wp option delete 'bfb_license_key_optimize'
wp option delete 'bfb_access_db_version'
wp option delete 'bfb_click_db_version'
wp option delete 'bfb_optimize_db_version'
wp option delete 'bfb_retention_period'

# Delete Transients
wp transient delete 'bfb_license_key_check_cache'
wp transient delete 'bfb_license_key_optimize_cache'

# Clear Cron Jobs
wp cron event delete 'bfb_cleanup_logs_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfb_use_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfb_use_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfb_use_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfb_use_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bfb_designType_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bfb_designType_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bfb_designType_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bfb_designType_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bfb_optId_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bfb_optId_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bfb_optId_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bfb_optId_%'"
