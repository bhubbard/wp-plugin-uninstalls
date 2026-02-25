#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epassc_api_key'
wp option delete 'epassc_org_id'
wp option delete 'epassc_next_refresh'
wp option delete 'epass_next_refresh'

# Clear Cron Jobs
wp cron event delete 'epassc_refresh_event'

