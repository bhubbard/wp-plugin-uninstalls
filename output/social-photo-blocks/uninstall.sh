#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'InstagramClientID'
wp option delete 'InstagramClientSecret'
wp option delete 'InstagramAccessToken'
wp option delete 'InstagramUserId'
wp option delete 'InstagramAccessTokenLong'

# Clear Cron Jobs
wp cron event delete 'token_renew_hook'

