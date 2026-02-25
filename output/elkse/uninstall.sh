#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elkse_site'
wp option delete 'elkse_home'
wp option delete 'elkse_mail'

# Clear Cron Jobs
wp cron event delete 'elkse_cron'

