#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bh_site_migration_country_code'
wp option delete 'bh_site_migration_geo_data'
wp option delete 'bh_site_migration_region_urls'
wp option delete 'bh_site_migration_id'
wp option delete 'bh_site_migration_token'
wp option delete 'wp_module_tasks_schedules'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'bluehost_site_migrator_can_migrate'

# Clear Cron Jobs
wp cron event delete 'bluehost_site_migrator_purge_migration_packages'
wp cron event delete 'task_execution_hook'
wp cron event delete 'scheduler_task_runner'
wp cron event delete 'cleanup_tasks'

