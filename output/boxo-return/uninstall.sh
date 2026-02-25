#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boxo_options'

# Clear Cron Jobs
wp cron event delete 'boxo_flush_postal_code_cache'

