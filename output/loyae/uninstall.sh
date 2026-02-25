#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loyae_site_id'
wp option delete 'loyae_api_token'
wp option delete 'loyae_site_token'

# Clear Cron Jobs
wp cron event delete 'loyae_cleanup_analyses'

