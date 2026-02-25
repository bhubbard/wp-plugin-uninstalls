#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gpagespeedi_options'
wp option delete 'gpagespeedi_ui_options'
wp option delete 'gpagespeedi_upgrade_recheck_required'
wp option delete 'gpi_abort_scan'
wp option delete 'gpi_recheck_urls'
wp option delete 'gpi_progress'
wp option delete 'gpi_check_now'
wp option delete 'gpi_missed_url_groups'
wp option delete 'gpi_error_message'

# Clear Cron Jobs
wp cron event delete 'googlepagespeedinsightsworker'
wp cron event delete 'gpi_prune_logs'

