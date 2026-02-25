#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fitbituserid'
wp option delete 'fitbitcliid'
wp option delete 'fitbitsecret'
wp option delete 'fitbitcallback'
wp option delete 'fitbitaccesstoken'
wp option delete 'fitbitrefreshtoken'

# Clear Cron Jobs
wp cron event delete 'gfsc_grab_steps'
wp cron event delete 'gfsc_use_refresh_token'

