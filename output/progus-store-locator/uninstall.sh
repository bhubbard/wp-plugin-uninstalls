#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psl_refresh_token'
wp option delete 'psl_page_id'
wp option delete 'psl_id'
wp option delete 'psl_token'
wp option delete 'psl_token_expiry'

# Delete Transients
wp transient delete 'psl_api_cache'

# Clear Cron Jobs
wp cron event delete 'psl_token_refresh'

