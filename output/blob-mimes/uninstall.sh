#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bm_contributor_notice'
wp option delete 'bm_remote_contributors'
wp option delete 'lotf_cleanup'

# Clear Cron Jobs
wp cron event delete 'cron_get_remote_contributors'

