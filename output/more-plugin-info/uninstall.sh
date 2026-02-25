#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpi_plugin_meta'
wp option delete 'mpi_sync_timestamp'
wp option delete 'mpi-settings'
wp option delete 'mpi_cron_enable'

# Clear Cron Jobs
wp cron event delete 'mpi_sync'

