#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'celersearch_settings'
wp option delete 'celersearch_db_version'
wp option delete 'woocommerce_catalog_rows'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'celersearch_service_check'

