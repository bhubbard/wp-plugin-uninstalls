#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravityformsaddon_itsg_gf_abnlookup_settings_settings'

# Clear Cron Jobs
wp cron event delete 'itsg_abnlookup_clear_cache_cron'

