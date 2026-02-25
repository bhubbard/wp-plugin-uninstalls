#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tickzo_options'
wp option delete 'tickzo_default_categories_inserted'
wp option delete 'tickzo_pro_migration_version'
wp option delete 'tickzo_ticket_schema_version'
wp option delete 'tickzo_ticket_numbers_backfilled'
wp option delete 'tickzo_settings'
wp option delete 'tickzo_version'

# Delete Transients
wp transient delete 'tickzo_category_db_error'

# Clear Cron Jobs
wp cron event delete 'tickzo_auto_close_tickets'

