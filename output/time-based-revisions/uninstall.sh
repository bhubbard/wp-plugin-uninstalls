#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crtbr_%'"

# Clear Cron Jobs
wp cron event delete 'crtbr_cron_cleanup'

