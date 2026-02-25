#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hyper_cache_extended'
wp option delete 'gltr_preferred_languages'

# Clear Cron Jobs
wp cron event delete 'hyper_clean'

