#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'workflowprotools_bulk_importer_analytics_enabled'
wp option delete 'workflowprotools_bulk_importer_version'
wp option delete 'workflowprotools_bulk_importer_success_imports'
wp option delete 'workflowprotools_bulk_importer_total_products_imported'
wp option delete 'workflowprotools_bulk_importer_site_info'

# Clear Cron Jobs
wp cron event delete 'workflowprotools_bulk_importer_cleanup'
wp cron event delete 'workflowprotools_bulk_importer_analytics_sync'

