#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprq_random_quotes'

# Clear Cron Jobs
wp cron event delete 'wprq_cron_hook'

