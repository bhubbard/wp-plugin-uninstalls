#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atk_known_plugins'
wp option delete 'atk_options'
wp option delete 'atk_ai_db_version'
wp option delete 'atk_notification'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_atkai_geoiploc_%' OR option_name LIKE '_site_transient_atkai_geoiploc_%'"

# Clear Cron Jobs
wp cron event delete 'atkai_network_create_tables_event'
wp cron event delete 'atk_ai_logs_cleanup_daily_event'

