#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ffec_days'
wp option delete 'ffec_batch_size'

# Clear Cron Jobs
wp cron event delete 'ffec_delete_old_entries'

