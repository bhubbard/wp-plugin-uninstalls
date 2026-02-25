#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xmbackupoptions'

# Clear Cron Jobs
wp cron event delete 'xmbackup_DoMyBackup'

