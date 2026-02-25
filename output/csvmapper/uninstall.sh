#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csvm_enable_cron_task'
wp option delete 'csvm_cron_interval'
wp option delete 'csvm_settings'

# Clear Cron Jobs
wp cron event delete 'csvm_import_lookout'

