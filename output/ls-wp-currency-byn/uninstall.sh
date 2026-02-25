#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ls_cb_kurs'

# Clear Cron Jobs
wp cron event delete 'ls_cb_update_curse'

