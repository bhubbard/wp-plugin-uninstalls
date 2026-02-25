#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpseo_titles'
wp option delete 'llms_txt_options'

# Clear Cron Jobs
wp cron event delete 'llms_txt_auto_update'

