#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atompub_options'

# Clear Cron Jobs
wp cron event delete 'atompub_pubsubhubbub_cron'
wp cron event delete 'atompub_pubsubhubbub_callback'

