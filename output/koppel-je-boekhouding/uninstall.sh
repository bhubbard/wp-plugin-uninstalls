#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'koppel_je_boekhouding_importer_id'
wp option delete 'koppel_je_boekhouding_connection_status'

# Clear Cron Jobs
wp cron event delete 'koppel_je_boekhouding_connection_check_event'

