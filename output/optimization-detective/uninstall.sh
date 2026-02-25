#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'od_rest_api_unavailable'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'od_rest_api_health_check_response'

# Clear Cron Jobs
wp cron event delete 'od_trigger_page_cache_invalidation'

