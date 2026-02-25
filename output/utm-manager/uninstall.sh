#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'utmm_utm_id'
wp option delete 'utmm_utm_source'
wp option delete 'utmm_utm_medium'
wp option delete 'utmm_utm_campaign'
wp option delete 'utmm_utm_term'
wp option delete 'utmm_utm_content'
wp option delete 'utmm_version'
wp option delete 'utmm_data_migrated'
wp option delete 'utmm_installed'
wp option delete 'utmm_migration_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'utmm_%'"
wp option delete 'utmm_flash_notices'

# Clear Cron Jobs
wp cron event delete 'utmm_migrate_data'

