#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgr_site_token'
wp option delete 'sgr_location_id'
wp option delete 'sgr_location_info'

# Delete Transients
wp transient delete 'skeps_connector_api_error'
wp transient delete 'sgr_accounts_cache'

# Clear Cron Jobs
wp cron event delete 'sgr_update_location'

