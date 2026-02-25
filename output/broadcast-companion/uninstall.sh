#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bc_options'
wp option delete 'bc_twitch-dismiss'
wp option delete 'bcyt_companion_options'
wp option delete 'bckt_companion_options'

# Delete Transients
wp transient delete 'bc_twitch_auth_token'
wp transient delete 'bc_twitch_auth_token_expires'

# Clear Cron Jobs
wp cron event delete 'bc_cron'

