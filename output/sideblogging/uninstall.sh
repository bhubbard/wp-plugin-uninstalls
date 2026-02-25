#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sideblogging'

# Delete Transients
wp transient delete 'oauth_token'
wp transient delete 'oauth_token_secret'

# Clear Cron Jobs
wp cron event delete 'sideblogging_cron'

